package org.spongycastle.asn1.p019bc;

import java.util.Iterator;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;
/* renamed from: org.spongycastle.asn1.bc.ObjectDataSequence */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/bc/ObjectDataSequence.class */
public class ObjectDataSequence extends ASN1Object implements Iterable<ASN1Encodable> {
    private final ASN1Encodable[] dataSequence;

    private ObjectDataSequence(ASN1Sequence aSN1Sequence) {
        this.dataSequence = new ASN1Encodable[aSN1Sequence.size()];
        for (int i = 0; i != this.dataSequence.length; i++) {
            this.dataSequence[i] = ObjectData.getInstance(aSN1Sequence.getObjectAt(i));
        }
    }

    public ObjectDataSequence(ObjectData[] objectDataArr) {
        this.dataSequence = new ASN1Encodable[objectDataArr.length];
        System.arraycopy(objectDataArr, 0, this.dataSequence, 0, objectDataArr.length);
    }

    public static ObjectDataSequence getInstance(Object obj) {
        if (obj instanceof ObjectDataSequence) {
            return (ObjectDataSequence) obj;
        }
        if (obj != null) {
            return new ObjectDataSequence(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(this.dataSequence);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(this.dataSequence);
    }
}
