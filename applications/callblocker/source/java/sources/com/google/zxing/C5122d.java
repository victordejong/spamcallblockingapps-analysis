package com.google.zxing;

import com.google.zxing.common.C5117b;
import com.google.zxing.p170a.C5070a;
import com.google.zxing.p172b.C5080a;
import com.google.zxing.p174c.C5097b;
import com.google.zxing.p174c.C5099d;
import com.google.zxing.p174c.C5102f;
import com.google.zxing.p174c.C5104h;
import com.google.zxing.p174c.C5106j;
import com.google.zxing.p174c.C5107k;
import com.google.zxing.p174c.C5108l;
import com.google.zxing.p174c.C5111o;
import com.google.zxing.p174c.C5115s;
import com.google.zxing.p175d.C5124a;
import com.google.zxing.p177e.C5134a;
import java.util.Map;
/* renamed from: com.google.zxing.d */
/* loaded from: classes-dex2jar.jar:com/google/zxing/d.class */
public final class C5122d implements AbstractC5133e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.d$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/d$1.class */
    public static /* synthetic */ class C51231 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21657a = new int[EnumC5069a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:64:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:60:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:42:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:52:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:50:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:56:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:66:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:62:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d1 -> B:44:0x0014). Please submit an issue!!! */
        static {
            try {
                f21657a[EnumC5069a.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21657a[EnumC5069a.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21657a[EnumC5069a.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21657a[EnumC5069a.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21657a[EnumC5069a.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21657a[EnumC5069a.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21657a[EnumC5069a.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f21657a[EnumC5069a.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f21657a[EnumC5069a.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f21657a[EnumC5069a.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f21657a[EnumC5069a.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f21657a[EnumC5069a.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f21657a[EnumC5069a.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        AbstractC5133e c5070a;
        switch (C51231.f21657a[enumC5069a.ordinal()]) {
            case 1:
                c5070a = new C5107k();
                break;
            case 2:
                c5070a = new C5115s();
                break;
            case 3:
                c5070a = new C5106j();
                break;
            case 4:
                c5070a = new C5111o();
                break;
            case 5:
                c5070a = new C5134a();
                break;
            case 6:
                c5070a = new C5102f();
                break;
            case 7:
                c5070a = new C5104h();
                break;
            case 8:
                c5070a = new C5099d();
                break;
            case 9:
                c5070a = new C5108l();
                break;
            case 10:
                c5070a = new C5124a();
                break;
            case 11:
                c5070a = new C5097b();
                break;
            case 12:
                c5070a = new C5080a();
                break;
            case 13:
                c5070a = new C5070a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(enumC5069a)));
        }
        return c5070a.mo1394a(str, enumC5069a, i, i2, map);
    }
}
