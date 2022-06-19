package p193e.p194a.p1002k4.p1004o.p1005i;

import com.truecaller.placepicker.data.sources.remote.AddressComponent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.i;
/* renamed from: e.a.k4.o.i.a */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/i/a.class */
public final class C16542a {
    /* renamed from: a */
    public final String m17265a(List<AddressComponent> list, String str) {
        String str2;
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((AddressComponent) obj).getTypes().indexOf(str) == 0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((AddressComponent) it.next()).getLong_name());
            }
            str2 = (String) i.B(arrayList2);
        } catch (NoSuchElementException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: b */
    public final String m17264b(List<? extends com.google.android.libraries.places.api.model.AddressComponent> list, String str) {
        String str2;
        if (list != null) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((com.google.android.libraries.places.api.model.AddressComponent) obj).getTypes().indexOf(str) == 0) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((com.google.android.libraries.places.api.model.AddressComponent) it.next()).getName());
                }
                str2 = (String) i.B(arrayList2);
            } catch (NoSuchElementException e) {
            }
            return str2;
        }
        str2 = null;
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
        if (r0.length() == 0) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.placepicker.data.GeocodedPlace m17263c(android.location.Address r12) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.p1004o.p1005i.C16542a.m17263c(android.location.Address):com.truecaller.placepicker.data.GeocodedPlace");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
        if (r13 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r14 != null) goto L7;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.placepicker.data.GeocodedPlace m17262d(com.truecaller.placepicker.data.GeocodedPlace r12, com.truecaller.placepicker.data.GeocodedPlace r13) {
        /*
            r11 = this;
            r0 = r12
            java.lang.String r1 = "geocodedPlace"
            s1.z.c.l.e(r0, r1)
            r0 = r13
            if (r0 == 0) goto L16
            r0 = r13
            java.lang.String r0 = r0.f14180a
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L16
            goto L1b
        L16:
            r0 = r12
            java.lang.String r0 = r0.f14180a
            r14 = r0
        L1b:
            r0 = r13
            if (r0 == 0) goto L2b
            r0 = r13
            java.lang.String r0 = r0.f14181b
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L2b
            goto L30
        L2b:
            r0 = r12
            java.lang.String r0 = r0.f14181b
            r13 = r0
        L30:
            com.truecaller.placepicker.data.GeocodedPlace r0 = new com.truecaller.placepicker.data.GeocodedPlace
            r1 = r0
            r2 = r14
            r3 = r13
            r4 = r12
            java.lang.String r4 = r4.f14182c
            r5 = r12
            java.lang.Double r5 = r5.f14183d
            r6 = r12
            java.lang.Double r6 = r6.f14184e
            r7 = r12
            java.lang.String r7 = r7.f14185f
            r8 = r12
            java.lang.String r8 = r8.f14186g
            r9 = r12
            java.lang.String r9 = r9.f14187h
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.p1004o.p1005i.C16542a.m17262d(com.truecaller.placepicker.data.GeocodedPlace, com.truecaller.placepicker.data.GeocodedPlace):com.truecaller.placepicker.data.GeocodedPlace");
    }

    /* renamed from: e */
    public final boolean m17261e(StringBuilder sb, int i, int i2, String str) {
        if (i != -1) {
            sb.replace(i, i2, str);
            return true;
        }
        return false;
    }
}
