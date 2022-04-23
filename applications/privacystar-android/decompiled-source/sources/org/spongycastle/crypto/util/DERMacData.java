package org.spongycastle.crypto.util;

import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DERMacData.class */
public final class DERMacData {
    private final byte[] macData;

    /* renamed from: org.spongycastle.crypto.util.DERMacData$1 */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DERMacData$1.class */
    static /* synthetic */ class C23501 {
        static final /* synthetic */ int[] $SwitchMap$org$spongycastle$crypto$util$DERMacData$Type = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$spongycastle$crypto$util$DERMacData$Type[Type.UNILATERALU.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$spongycastle$crypto$util$DERMacData$Type[Type.BILATERALU.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$spongycastle$crypto$util$DERMacData$Type[Type.UNILATERALV.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$spongycastle$crypto$util$DERMacData$Type[Type.BILATERALV.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DERMacData$Builder.class */
    public static final class Builder {
        private ASN1OctetString ephemDataU;
        private ASN1OctetString ephemDataV;
        private ASN1OctetString idU;
        private ASN1OctetString idV;
        private byte[] text;
        private final Type type;

        public Builder(Type type, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            this.type = type;
            this.idU = DerUtil.getOctetString(bArr);
            this.idV = DerUtil.getOctetString(bArr2);
            this.ephemDataU = DerUtil.getOctetString(bArr3);
            this.ephemDataV = DerUtil.getOctetString(bArr4);
        }

        private byte[] concatenate(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            return Arrays.concatenate(Arrays.concatenate(bArr, bArr2, bArr3), Arrays.concatenate(bArr4, bArr5, bArr6));
        }

        public DERMacData build() {
            switch (C23501.$SwitchMap$org$spongycastle$crypto$util$DERMacData$Type[this.type.ordinal()]) {
                case 1:
                case 2:
                    return new DERMacData(concatenate(this.type.getHeader(), DerUtil.toByteArray(this.idU), DerUtil.toByteArray(this.idV), DerUtil.toByteArray(this.ephemDataU), DerUtil.toByteArray(this.ephemDataV), this.text), null);
                case 3:
                case 4:
                    return new DERMacData(concatenate(this.type.getHeader(), DerUtil.toByteArray(this.idV), DerUtil.toByteArray(this.idU), DerUtil.toByteArray(this.ephemDataV), DerUtil.toByteArray(this.ephemDataU), this.text), null);
                default:
                    throw new IllegalStateException("Unknown type encountered in build");
            }
        }

        public Builder withText(byte[] bArr) {
            this.text = DerUtil.toByteArray(new DERTaggedObject(false, 0, DerUtil.getOctetString(bArr)));
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DERMacData$Type.class */
    public enum Type {
        UNILATERALU("KC_1_U"),
        UNILATERALV("KC_1_V"),
        BILATERALU("KC_2_U"),
        BILATERALV("KC_2_V");
        
        private final String enc;

        Type(String str) {
            this.enc = str;
        }

        public byte[] getHeader() {
            return Strings.toByteArray(this.enc);
        }
    }

    private DERMacData(byte[] bArr) {
        this.macData = bArr;
    }

    /* synthetic */ DERMacData(byte[] bArr, C23501 r5) {
        this(bArr);
    }

    public byte[] getMacData() {
        return Arrays.clone(this.macData);
    }
}
