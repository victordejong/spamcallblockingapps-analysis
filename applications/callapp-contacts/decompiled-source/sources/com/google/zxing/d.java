package com.google.zxing;

import com.google.zxing.c.f;
import com.google.zxing.c.h;
import com.google.zxing.c.j;
import com.google.zxing.c.k;
import com.google.zxing.c.m;
import com.google.zxing.c.p;
import com.google.zxing.c.w;
import com.google.zxing.common.b;
import com.google.zxing.e.a;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d.class */
public final class d implements e {

    /* renamed from: com.google.zxing.d$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/d$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32992a;

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
            int[] iArr = new int[a.values().length];
            f32992a = iArr;
            try {
                iArr[a.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32992a[a.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32992a[a.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32992a[a.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32992a[a.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32992a[a.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f32992a[a.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f32992a[a.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f32992a[a.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f32992a[a.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f32992a[a.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f32992a[a.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f32992a[a.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    @Override // com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        e eVar;
        switch (AnonymousClass1.f32992a[aVar.ordinal()]) {
            case 1:
                eVar = new k();
                break;
            case 2:
                eVar = new w();
                break;
            case 3:
                eVar = new j();
                break;
            case 4:
                eVar = new p();
                break;
            case 5:
                eVar = new a();
                break;
            case 6:
                eVar = new f();
                break;
            case 7:
                eVar = new h();
                break;
            case 8:
                eVar = new com.google.zxing.c.d();
                break;
            case 9:
                eVar = new m();
                break;
            case 10:
                eVar = new com.google.zxing.d.a();
                break;
            case 11:
                eVar = new com.google.zxing.c.b();
                break;
            case 12:
                eVar = new com.google.zxing.b.a();
                break;
            case 13:
                eVar = new com.google.zxing.a.a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(aVar)));
        }
        return eVar.a(str, aVar, i, i2, map);
    }
}
