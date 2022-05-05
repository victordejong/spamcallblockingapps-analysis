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
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPPublicKeyRingCollection.class */
public class PGPPublicKeyRingCollection implements Iterable<PGPPublicKeyRing> {
    private List order;
    private Map pubRings;

    public PGPPublicKeyRingCollection(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        PGPObjectFactory pGPObjectFactory = new PGPObjectFactory(inputStream, keyFingerPrintCalculator);
        while (true) {
            Object nextObject = pGPObjectFactory.nextObject();
            if (nextObject == null) {
                return;
            }
            if (!(nextObject instanceof PGPPublicKeyRing)) {
                throw new PGPException(nextObject.getClass().getName() + " found where PGPPublicKeyRing expected");
            }
            PGPPublicKeyRing pGPPublicKeyRing = (PGPPublicKeyRing) nextObject;
            Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
            this.pubRings.put(l, pGPPublicKeyRing);
            this.order.add(l);
        }
    }

    public PGPPublicKeyRingCollection(Collection<PGPPublicKeyRing> collection) throws IOException, PGPException {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        for (PGPPublicKeyRing pGPPublicKeyRing : collection) {
            Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
            this.pubRings.put(l, pGPPublicKeyRing);
            this.order.add(l);
        }
    }

    private PGPPublicKeyRingCollection(Map map, List list) {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        this.pubRings = map;
        this.order = list;
    }

    public PGPPublicKeyRingCollection(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    public static PGPPublicKeyRingCollection addPublicKeyRing(PGPPublicKeyRingCollection pGPPublicKeyRingCollection, PGPPublicKeyRing pGPPublicKeyRing) {
        Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
        if (pGPPublicKeyRingCollection.pubRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection already contains a key with a keyID for the passed in ring.");
        }
        HashMap hashMap = new HashMap(pGPPublicKeyRingCollection.pubRings);
        ArrayList arrayList = new ArrayList(pGPPublicKeyRingCollection.order);
        hashMap.put(l, pGPPublicKeyRing);
        arrayList.add(l);
        return new PGPPublicKeyRingCollection(hashMap, arrayList);
    }

    public static PGPPublicKeyRingCollection removePublicKeyRing(PGPPublicKeyRingCollection pGPPublicKeyRingCollection, PGPPublicKeyRing pGPPublicKeyRing) {
        Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
        if (!pGPPublicKeyRingCollection.pubRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection does not contain a key with a keyID for the passed in ring.");
        }
        HashMap hashMap = new HashMap(pGPPublicKeyRingCollection.pubRings);
        ArrayList arrayList = new ArrayList(pGPPublicKeyRingCollection.order);
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
        return new PGPPublicKeyRingCollection(hashMap, arrayList);
    }

    public boolean contains(long j) throws PGPException {
        return getPublicKey(j) != null;
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream = outputStream instanceof BCPGOutputStream ? (BCPGOutputStream) outputStream : new BCPGOutputStream(outputStream);
        for (Object obj : this.order) {
            ((PGPPublicKeyRing) this.pubRings.get(obj)).encode(bCPGOutputStream);
        }
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public Iterator<PGPPublicKeyRing> getKeyRings() {
        return this.pubRings.values().iterator();
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str) throws PGPException {
        return getKeyRings(str, false, false);
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str, boolean z) throws PGPException {
        return getKeyRings(str, z, false);
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str, boolean z, boolean z2) throws PGPException {
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        ArrayList arrayList = new ArrayList();
        String str2 = str;
        if (z2) {
            str2 = Strings.toLowerCase(str);
        }
        while (keyRings.hasNext()) {
            PGPPublicKeyRing next = keyRings.next();
            Iterator userIDs = next.getPublicKey().getUserIDs();
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

    public PGPPublicKey getPublicKey(long j) throws PGPException {
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPPublicKey publicKey = keyRings.next().getPublicKey(j);
            if (publicKey != null) {
                return publicKey;
            }
        }
        return null;
    }

    public PGPPublicKeyRing getPublicKeyRing(long j) throws PGPException {
        Long l = new Long(j);
        if (this.pubRings.containsKey(l)) {
            return (PGPPublicKeyRing) this.pubRings.get(l);
        }
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPPublicKeyRing next = keyRings.next();
            if (next.getPublicKey(j) != null) {
                return next;
            }
        }
        return null;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPPublicKeyRing> iterator() {
        return this.pubRings.values().iterator();
    }

    public int size() {
        return this.order.size();
    }
}
