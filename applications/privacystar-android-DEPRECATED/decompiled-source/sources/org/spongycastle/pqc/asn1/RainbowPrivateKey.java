package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/asn1/RainbowPrivateKey.class */
public class RainbowPrivateKey extends ASN1Object {

    /* renamed from: b1 */
    private byte[] f1669b1;

    /* renamed from: b2 */
    private byte[] f1670b2;
    private byte[][] invA1;
    private byte[][] invA2;
    private Layer[] layers;
    private ASN1ObjectIdentifier oid;
    private ASN1Integer version;

    /* renamed from: vi */
    private byte[] f1671vi;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v16, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    private RainbowPrivateKey(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.getObjectAt(0) instanceof ASN1Integer) {
            this.version = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        } else {
            this.oid = ASN1ObjectIdentifier.getInstance(aSN1Sequence.getObjectAt(0));
        }
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        this.invA1 = new byte[aSN1Sequence2.size()];
        for (int i = 0; i < aSN1Sequence2.size(); i++) {
            this.invA1[i] = ((ASN1OctetString) aSN1Sequence2.getObjectAt(i)).getOctets();
        }
        this.f1669b1 = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(2)).getObjectAt(0)).getOctets();
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        this.invA2 = new byte[aSN1Sequence3.size()];
        for (int i2 = 0; i2 < aSN1Sequence3.size(); i2++) {
            this.invA2[i2] = ((ASN1OctetString) aSN1Sequence3.getObjectAt(i2)).getOctets();
        }
        this.f1670b2 = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(4)).getObjectAt(0)).getOctets();
        this.f1671vi = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(5)).getObjectAt(0)).getOctets();
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(6);
        byte[][][] bArr = new byte[aSN1Sequence4.size()][];
        byte[][][] bArr2 = new byte[aSN1Sequence4.size()][];
        byte[][] bArr3 = new byte[aSN1Sequence4.size()];
        byte[] bArr4 = new byte[aSN1Sequence4.size()];
        for (int i3 = 0; i3 < aSN1Sequence4.size(); i3++) {
            ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence4.getObjectAt(i3);
            ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(0);
            bArr[i3] = new byte[aSN1Sequence6.size()];
            for (int i4 = 0; i4 < aSN1Sequence6.size(); i4++) {
                ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence6.getObjectAt(i4);
                bArr[i3][i4] = new byte[aSN1Sequence7.size()];
                for (int i5 = 0; i5 < aSN1Sequence7.size(); i5++) {
                    bArr[i3][i4][i5] = ((ASN1OctetString) aSN1Sequence7.getObjectAt(i5)).getOctets();
                }
            }
            ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence5.getObjectAt(1);
            bArr2[i3] = new byte[aSN1Sequence8.size()];
            for (int i6 = 0; i6 < aSN1Sequence8.size(); i6++) {
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) aSN1Sequence8.getObjectAt(i6);
                bArr2[i3][i6] = new byte[aSN1Sequence9.size()];
                for (int i7 = 0; i7 < aSN1Sequence9.size(); i7++) {
                    bArr2[i3][i6][i7] = ((ASN1OctetString) aSN1Sequence9.getObjectAt(i7)).getOctets();
                }
            }
            ASN1Sequence aSN1Sequence10 = (ASN1Sequence) aSN1Sequence5.getObjectAt(2);
            bArr3[i3] = new byte[aSN1Sequence10.size()];
            for (int i8 = 0; i8 < aSN1Sequence10.size(); i8++) {
                bArr3[i3][i8] = ((ASN1OctetString) aSN1Sequence10.getObjectAt(i8)).getOctets();
            }
            bArr4[i3] = ((ASN1OctetString) aSN1Sequence5.getObjectAt(3)).getOctets();
        }
        int length = this.f1671vi.length - 1;
        this.layers = new Layer[length];
        int i9 = 0;
        while (i9 < length) {
            byte b = this.f1671vi[i9];
            int i10 = i9 + 1;
            this.layers[i9] = new Layer(b, this.f1671vi[i10], RainbowUtil.convertArray(bArr[i9]), RainbowUtil.convertArray(bArr2[i9]), RainbowUtil.convertArray(bArr3[i9]), RainbowUtil.convertArray(bArr4[i9]));
            i9 = i10;
        }
    }

    public RainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.version = new ASN1Integer(1L);
        this.invA1 = RainbowUtil.convertArray(sArr);
        this.f1669b1 = RainbowUtil.convertArray(sArr2);
        this.invA2 = RainbowUtil.convertArray(sArr3);
        this.f1670b2 = RainbowUtil.convertArray(sArr4);
        this.f1671vi = RainbowUtil.convertIntArray(iArr);
        this.layers = layerArr;
    }

    public static RainbowPrivateKey getInstance(Object obj) {
        if (obj instanceof RainbowPrivateKey) {
            return (RainbowPrivateKey) obj;
        }
        if (obj != null) {
            return new RainbowPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public short[] getB1() {
        return RainbowUtil.convertArray(this.f1669b1);
    }

    public short[] getB2() {
        return RainbowUtil.convertArray(this.f1670b2);
    }

    public short[][] getInvA1() {
        return RainbowUtil.convertArray(this.invA1);
    }

    public short[][] getInvA2() {
        return RainbowUtil.convertArray(this.invA2);
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public ASN1Integer getVersion() {
        return this.version;
    }

    public int[] getVi() {
        return RainbowUtil.convertArraytoInt(this.f1671vi);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.version != null) {
            aSN1EncodableVector.add(this.version);
        } else {
            aSN1EncodableVector.add(this.oid);
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (int i = 0; i < this.invA1.length; i++) {
            aSN1EncodableVector2.add(new DEROctetString(this.invA1[i]));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        aSN1EncodableVector3.add(new DEROctetString(this.f1669b1));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector3));
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        for (int i2 = 0; i2 < this.invA2.length; i2++) {
            aSN1EncodableVector4.add(new DEROctetString(this.invA2[i2]));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector4));
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        aSN1EncodableVector5.add(new DEROctetString(this.f1670b2));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector5));
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        aSN1EncodableVector6.add(new DEROctetString(this.f1671vi));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector6));
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        for (int i3 = 0; i3 < this.layers.length; i3++) {
            ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
            byte[][][] convertArray = RainbowUtil.convertArray(this.layers[i3].getCoeffAlpha());
            ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
            for (int i4 = 0; i4 < convertArray.length; i4++) {
                ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                for (int i5 = 0; i5 < convertArray[i4].length; i5++) {
                    aSN1EncodableVector10.add(new DEROctetString(convertArray[i4][i5]));
                }
                aSN1EncodableVector9.add(new DERSequence(aSN1EncodableVector10));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector9));
            byte[][][] convertArray2 = RainbowUtil.convertArray(this.layers[i3].getCoeffBeta());
            ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
            for (int i6 = 0; i6 < convertArray2.length; i6++) {
                ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
                for (int i7 = 0; i7 < convertArray2[i6].length; i7++) {
                    aSN1EncodableVector12.add(new DEROctetString(convertArray2[i6][i7]));
                }
                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector12));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector11));
            byte[][] convertArray3 = RainbowUtil.convertArray(this.layers[i3].getCoeffGamma());
            ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
            for (byte[] bArr : convertArray3) {
                aSN1EncodableVector13.add(new DEROctetString(bArr));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector13));
            aSN1EncodableVector8.add(new DEROctetString(RainbowUtil.convertArray(this.layers[i3].getCoeffEta())));
            aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector8));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector7));
        return new DERSequence(aSN1EncodableVector);
    }
}
