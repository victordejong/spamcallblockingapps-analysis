package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Iterable;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSecretKeyRingCollection.class */
public class PGPSecretKeyRingCollection implements Iterable<PGPSecretKeyRing> {
    private List order;
    private Map secretRings;

    public PGPSecretKeyRingCollection(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        this.secretRings = new HashMap();
        this.order = new ArrayList();
        PGPObjectFactory pGPObjectFactory = new PGPObjectFactory(inputStream, keyFingerPrintCalculator);
        while (true) {
            Object nextObject = pGPObjectFactory.nextObject();
            if (nextObject == null) {
                return;
            }
            if (!(nextObject instanceof PGPSecretKeyRing)) {
                throw new PGPException(nextObject.getClass().getName() + " found where PGPSecretKeyRing expected");
            }
            PGPSecretKeyRing pGPSecretKeyRing = (PGPSecretKeyRing) nextObject;
            Long l = new Long(pGPSecretKeyRing.getPublicKey().getKeyID());
            this.secretRings.put(l, pGPSecretKeyRing);
            this.order.add(l);
        }
    }

    public PGPSecretKeyRingCollection(Collection<PGPSecretKeyRing> collection) throws IOException, PGPException {
        this.secretRings = new HashMap();
        this.order = new ArrayList();
        for (PGPSecretKeyRing pGPSecretKeyRing : collection) {
            Long l = new Long(pGPSecretKeyRing.getPublicKey().getKeyID());
            this.secretRings.put(l, pGPSecretKeyRing);
            this.order.add(l);
        }
    }

    private PGPSecretKeyRingCollection(Map map, List list) {
        this.secretRings = new HashMap();
        this.order = new ArrayList();
        this.secretRings = map;
        this.order = list;
    }

    public PGPSecretKeyRingCollection(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    public static PGPSecretKeyRingCollection addSecretKeyRing(PGPSecretKeyRingCollection pGPSecretKeyRingCollection, PGPSecretKeyRing pGPSecretKeyRing) {
        Long l = new Long(pGPSecretKeyRing.getPublicKey().getKeyID());
        if (pGPSecretKeyRingCollection.secretRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection already contains a key with a keyID for the passed in ring.");
        }
        HashMap hashMap = new HashMap(pGPSecretKeyRingCollection.secretRings);
        ArrayList arrayList = new ArrayList(pGPSecretKeyRingCollection.order);
        hashMap.put(l, pGPSecretKeyRing);
        arrayList.add(l);
        return new PGPSecretKeyRingCollection(hashMap, arrayList);
    }

    public static PGPSecretKeyRingCollection removeSecretKeyRing(PGPSecretKeyRingCollection pGPSecretKeyRingCollection, PGPSecretKeyRing pGPSecretKeyRing) {
        Long l = new Long(pGPSecretKeyRing.getPublicKey().getKeyID());
        if (!pGPSecretKeyRingCollection.secretRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection does not contain a key with a keyID for the passed in ring.");
        }
        HashMap hashMap = new HashMap(pGPSecretKeyRingCollection.secretRings);
        ArrayList arrayList = new ArrayList(pGPSecretKeyRingCollection.order);
        hashMap.remove(l);
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                break;
            } else if (((Long) arrayList.get(i)).longValue() == l.longValue()) {
                arrayList.remove(i);
                break;
            } else {
                i++;
            }
        }
        return new PGPSecretKeyRingCollection(hashMap, arrayList);
    }

    public boolean contains(long j) throws PGPException {
        return getSecretKey(j) != null;
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream = outputStream instanceof BCPGOutputStream ? (BCPGOutputStream) outputStream : new BCPGOutputStream(outputStream);
        for (Object obj : this.order) {
            ((PGPSecretKeyRing) this.secretRings.get(obj)).encode(bCPGOutputStream);
        }
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public Iterator<PGPSecretKeyRing> getKeyRings() {
        return this.secretRings.values().iterator();
    }

    public Iterator<PGPSecretKeyRing> getKeyRings(String str) throws PGPException {
        return getKeyRings(str, false, false);
    }

    public Iterator<PGPSecretKeyRing> getKeyRings(String str, boolean z) throws PGPException {
        return getKeyRings(str, z, false);
    }

    public Iterator<PGPSecretKeyRing> getKeyRings(String str, boolean z, boolean z2) throws PGPException {
        Iterator<PGPSecretKeyRing> keyRings = getKeyRings();
        ArrayList arrayList = new ArrayList();
        String str2 = str;
        if (z2) {
            str2 = Strings.toLowerCase(str);
        }
        while (keyRings.hasNext()) {
            PGPSecretKeyRing next = keyRings.next();
            Iterator userIDs = next.getSecretKey().getUserIDs();
            while (userIDs.hasNext()) {
                String str3 = (String) userIDs.next();
                String str4 = str3;
                if (z2) {
                    str4 = Strings.toLowerCase(str3);
                }
                if (z) {
                    if (str4.indexOf(str2) > -1) {
                        arrayList.add(next);
                    }
                } else if (str4.equals(str2)) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList.iterator();
    }

    public PGPSecretKey getSecretKey(long j) throws PGPException {
        Iterator<PGPSecretKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPSecretKey secretKey = keyRings.next().getSecretKey(j);
            if (secretKey != null) {
                return secretKey;
            }
        }
        return null;
    }

    public PGPSecretKeyRing getSecretKeyRing(long j) throws PGPException {
        Long l = new Long(j);
        if (this.secretRings.containsKey(l)) {
            return (PGPSecretKeyRing) this.secretRings.get(l);
        }
        Iterator<PGPSecretKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPSecretKeyRing next = keyRings.next();
            if (next.getSecretKey(j) != null) {
                return next;
            }
        }
        return null;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPSecretKeyRing> iterator() {
        return this.secretRings.values().iterator();
    }

    public int size() {
        return this.order.size();
    }
}
