package com.google.zxing;

import com.google.zxing.common.C16191b;
import com.google.zxing.p404a.C16140a;
import com.google.zxing.p406b.C16150a;
import com.google.zxing.p408c.C16167b;
import com.google.zxing.p408c.C16169d;
import com.google.zxing.p408c.C16172f;
import com.google.zxing.p408c.C16174h;
import com.google.zxing.p408c.C16176j;
import com.google.zxing.p408c.C16177k;
import com.google.zxing.p408c.C16179m;
import com.google.zxing.p408c.C16182p;
import com.google.zxing.p408c.C16189w;
import com.google.zxing.p409d.C16198a;
import com.google.zxing.p411e.C16208a;
import java.util.Map;
/* renamed from: com.google.zxing.d */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d.class */
public final class C16196d implements AbstractC16207e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.d$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/d$1.class */
    public static final /* synthetic */ class C161971 {

        /* renamed from: a */
        static final /* synthetic */ int[] f57180a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16139a.values().length];
            f57180a = iArr;
            try {
                iArr[EnumC16139a.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f57180a[EnumC16139a.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f57180a[EnumC16139a.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f57180a[EnumC16139a.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f57180a[EnumC16139a.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f57180a[EnumC16139a.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f57180a[EnumC16139a.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f57180a[EnumC16139a.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f57180a[EnumC16139a.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f57180a[EnumC16139a.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f57180a[EnumC16139a.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f57180a[EnumC16139a.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f57180a[EnumC16139a.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        C16140a c16140a;
        switch (C161971.f57180a[enumC16139a.ordinal()]) {
            case 1:
                c16140a = new C16177k();
                break;
            case 2:
                c16140a = new C16189w();
                break;
            case 3:
                c16140a = new C16176j();
                break;
            case 4:
                c16140a = new C16182p();
                break;
            case 5:
                c16140a = new C16208a();
                break;
            case 6:
                c16140a = new C16172f();
                break;
            case 7:
                c16140a = new C16174h();
                break;
            case 8:
                c16140a = new C16169d();
                break;
            case 9:
                c16140a = new C16179m();
                break;
            case 10:
                c16140a = new C16198a();
                break;
            case 11:
                c16140a = new C16167b();
                break;
            case 12:
                c16140a = new C16150a();
                break;
            case 13:
                c16140a = new C16140a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(enumC16139a)));
        }
        return c16140a.mo7642a(str, enumC16139a, i, i2, map);
    }
}
