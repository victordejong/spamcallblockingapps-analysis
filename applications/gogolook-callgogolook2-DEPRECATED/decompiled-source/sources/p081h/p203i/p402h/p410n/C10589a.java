package p081h.p203i.p402h.p410n;

import java.nio.charset.Charset;
import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
import p081h.p203i.p402h.p410n.p411b.C10593d;
import p081h.p203i.p402h.p410n.p411b.C10594e;
import p081h.p203i.p402h.p410n.p411b.EnumC10592c;
/* renamed from: h.i.h.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/n/a.class */
public final class C10589a implements AbstractC10537h {
    /* renamed from: a */
    public static C10549b m11329a(C10594e eVar, String str, int i, int i2, int i3, int i4) throws C10538i {
        boolean z;
        eVar.m11309a(str, i);
        byte[][] a = eVar.m11316a().m11325a(1, 4);
        if ((i3 > i2) != (a[0].length < a.length)) {
            a = m11328a(a);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / a[0].length;
        int length2 = i3 / a.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return m11327a(a, i4);
        }
        byte[][] a2 = eVar.m11316a().m11325a(length, length << 2);
        byte[][] bArr = a2;
        if (z) {
            bArr = m11328a(a2);
        }
        return m11327a(bArr, i4);
    }

    /* renamed from: a */
    public static C10549b m11327a(byte[][] bArr, int i) {
        int i2 = i * 2;
        C10549b bVar = new C10549b(bArr[0].length + i2, bArr.length + i2);
        bVar.m11443d();
        int e = (bVar.m11442e() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    bVar.m11444b(i4 + i, e);
                }
            }
            i3++;
            e--;
        }
        return bVar;
    }

    /* renamed from: a */
    public static byte[][] m11328a(byte[][] bArr) {
        byte[][] bArr2 = new byte[bArr[0].length][bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            int length = bArr.length;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][(length - i) - 1] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.PDF_417) {
            C10594e eVar = new C10594e();
            int i3 = 30;
            int i4 = 2;
            if (map != null) {
                if (map.containsKey(EnumC10531c.PDF417_COMPACT)) {
                    eVar.m11307a(Boolean.valueOf(map.get(EnumC10531c.PDF417_COMPACT).toString()).booleanValue());
                }
                if (map.containsKey(EnumC10531c.PDF417_COMPACTION)) {
                    eVar.m11311a(EnumC10592c.valueOf(map.get(EnumC10531c.PDF417_COMPACTION).toString()));
                }
                if (map.containsKey(EnumC10531c.PDF417_DIMENSIONS)) {
                    C10593d dVar = (C10593d) map.get(EnumC10531c.PDF417_DIMENSIONS);
                    eVar.m11313a(dVar.m11320a(), dVar.m11318c(), dVar.m11319b(), dVar.m11317d());
                }
                if (map.containsKey(EnumC10531c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC10531c.MARGIN).toString());
                }
                if (map.containsKey(EnumC10531c.ERROR_CORRECTION)) {
                    i4 = Integer.parseInt(map.get(EnumC10531c.ERROR_CORRECTION).toString());
                }
                if (map.containsKey(EnumC10531c.CHARACTER_SET)) {
                    eVar.m11308a(Charset.forName(map.get(EnumC10531c.CHARACTER_SET).toString()));
                }
            } else {
                i4 = 2;
                i3 = 30;
            }
            return m11329a(eVar, str, i4, i, i2, i3);
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(aVar)));
    }
}
