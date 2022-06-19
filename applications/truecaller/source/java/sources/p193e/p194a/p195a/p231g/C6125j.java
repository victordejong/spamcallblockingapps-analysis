package p193e.p194a.p195a.p231g;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.SQLException;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.truecaller.messaging.data.types.Entity;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6130c;
import s1.f0.q;
import s1.z.c.l;
/* renamed from: e.a.a.g.j */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/j.class */
public final class C6125j extends CursorWrapper implements AbstractC6130c {

    /* renamed from: A */
    public final int f20343A;

    /* renamed from: B */
    public final int f20344B;

    /* renamed from: C */
    public final int f20345C;

    /* renamed from: D */
    public final int f20346D;

    /* renamed from: a */
    public final int f20347a;

    /* renamed from: b */
    public final int f20348b;

    /* renamed from: c */
    public final int f20349c;

    /* renamed from: d */
    public final int f20350d;

    /* renamed from: e */
    public final int f20351e;

    /* renamed from: f */
    public final int f20352f;

    /* renamed from: g */
    public final int f20353g;

    /* renamed from: h */
    public final int f20354h;

    /* renamed from: i */
    public final int f20355i;

    /* renamed from: j */
    public final int f20356j;

    /* renamed from: k */
    public final int f20357k;

    /* renamed from: l */
    public final int f20358l;

    /* renamed from: m */
    public final int f20359m;

    /* renamed from: n */
    public final int f20360n;

    /* renamed from: o */
    public final int f20361o;

    /* renamed from: p */
    public final int f20362p;

    /* renamed from: q */
    public final int f20363q;

    /* renamed from: r */
    public final int f20364r;

    /* renamed from: s */
    public final int f20365s;

    /* renamed from: t */
    public final int f20366t;

    /* renamed from: u */
    public final int f20367u;

    /* renamed from: v */
    public final int f20368v;

    /* renamed from: w */
    public final int f20369w;

    /* renamed from: x */
    public final int f20370x;

    /* renamed from: y */
    public final int f20371y;

    /* renamed from: z */
    public final int f20372z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6125j(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20347a = cursor.getColumnIndexOrThrow("_id");
        this.f20348b = cursor.getColumnIndexOrThrow("type");
        this.f20349c = cursor.getColumnIndexOrThrow("entity_type");
        this.f20350d = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20351e = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20352f = cursor.getColumnIndexOrThrow("entity_info2");
        this.f20353g = cursor.getColumnIndexOrThrow("entity_info3");
        this.f20354h = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20355i = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20356j = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20357k = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20358l = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20359m = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20360n = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20361o = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20362p = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20363q = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20364r = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20365s = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20366t = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20367u = cursor.getColumnIndexOrThrow("entity_info1");
        this.f20368v = cursor.getColumnIndexOrThrow("entity_info2");
        this.f20369w = cursor.getColumnIndexOrThrow("entity_info3");
        this.f20370x = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20371y = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20372z = cursor.getColumnIndexOrThrow("entity_info7");
        this.f20343A = cursor.getColumnIndexOrThrow("entity_info6");
        this.f20344B = cursor.getColumnIndexOrThrow("entity_info4");
        this.f20345C = cursor.getColumnIndexOrThrow("entity_info5");
        this.f20346D = cursor.getColumnIndexOrThrow("entity_info6");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v221, types: [long] */
    /* JADX WARN: Type inference failed for: r0v293, types: [double] */
    /* JADX WARN: Type inference failed for: r0v296, types: [double] */
    /* JADX WARN: Type inference failed for: r0v302, types: [long] */
    /* JADX WARN: Type inference failed for: r0v327, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r36v0 */
    /* JADX WARN: Type inference failed for: r36v1 */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11 */
    /* JADX WARN: Type inference failed for: r36v12 */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Type inference failed for: r36v14 */
    /* JADX WARN: Type inference failed for: r36v15 */
    /* JADX WARN: Type inference failed for: r36v16 */
    /* JADX WARN: Type inference failed for: r36v17 */
    /* JADX WARN: Type inference failed for: r36v18 */
    /* JADX WARN: Type inference failed for: r36v19 */
    /* JADX WARN: Type inference failed for: r36v2 */
    /* JADX WARN: Type inference failed for: r36v20 */
    /* JADX WARN: Type inference failed for: r36v21 */
    /* JADX WARN: Type inference failed for: r36v22 */
    /* JADX WARN: Type inference failed for: r36v23 */
    /* JADX WARN: Type inference failed for: r36v3 */
    /* JADX WARN: Type inference failed for: r36v4 */
    /* JADX WARN: Type inference failed for: r36v5 */
    /* JADX WARN: Type inference failed for: r36v6 */
    /* JADX WARN: Type inference failed for: r36v7 */
    /* JADX WARN: Type inference failed for: r36v8 */
    /* JADX WARN: Type inference failed for: r36v9 */
    /* JADX WARN: Type inference failed for: r39v0 */
    /* JADX WARN: Type inference failed for: r39v1 */
    /* JADX WARN: Type inference failed for: r39v2 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v1 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6130c
    public Entity getEntity() throws SQLException {
        Entity entity;
        Long j;
        Integer h;
        Integer h2;
        Integer h3;
        Integer h4;
        Integer h5;
        Integer h6;
        Integer h7;
        Integer h8;
        Integer h9;
        Integer h10;
        Integer h11;
        Integer h12;
        Integer h13;
        Entity.C4195a c4195a = Entity.f13305h;
        long j2 = getLong(this.f20347a);
        String string = getString(this.f20348b);
        switch (getInt(this.f20349c)) {
            case 0:
                l.d(string, "mimeType");
                String string2 = getString(this.f20350d);
                l.d(string2, "getString(textEntityContent)");
                entity = Entity.C4195a.m35042a(c4195a, j2, string, 0, string2, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262132);
                break;
            case 1:
            case 3:
                l.d(string, "mimeType");
                String string3 = getString(this.f20351e);
                l.d(string3, "getString(binaryEntityContent)");
                String string4 = getString(this.f20356j);
                l.d(string4, "getString(imageEntityThumbnail)");
                String string5 = getString(this.f20354h);
                int intValue = (string5 == null || (h3 = q.h(string5)) == null) ? -1 : h3.intValue();
                String string6 = getString(this.f20355i);
                int intValue2 = (string6 == null || (h2 = q.h(string6)) == null) ? -1 : h2.intValue();
                String string7 = getString(this.f20352f);
                int intValue3 = (string7 == null || (h = q.h(string7)) == null) ? 0 : h.intValue();
                String string8 = getString(this.f20353g);
                ?? longValue = (string8 == null || (j = q.j(string8)) == null) ? true : j.longValue();
                String string9 = c4195a.m35034i(string) ? getString(this.f20362p) : "";
                l.d(string9, "if (Entity.isTenorGif(ty…rGifEntitySource) else \"\"");
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue3, string3, false, intValue, intValue2, 0, longValue == true ? 1L : 0L, string4, string9, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 260240);
                break;
            case 2:
                l.d(string, "mimeType");
                String string10 = getString(this.f20351e);
                l.d(string10, "getString(binaryEntityContent)");
                String string11 = getString(this.f20360n);
                l.d(string11, "getString(videoEntityThumbnail)");
                String string12 = getString(this.f20357k);
                int intValue4 = (string12 == null || (h6 = q.h(string12)) == null) ? -1 : h6.intValue();
                String string13 = getString(this.f20358l);
                int intValue5 = (string13 == null || (h5 = q.h(string13)) == null) ? -1 : h5.intValue();
                String string14 = getString(this.f20352f);
                int intValue6 = (string14 == null || (h4 = q.h(string14)) == null) ? 0 : h4.intValue();
                String string15 = getString(this.f20353g);
                ?? r36 = true;
                if (string15 != null) {
                    Long j3 = q.j(string15);
                    r36 = true;
                    if (j3 != null) {
                        r36 = j3.longValue();
                    }
                }
                String string16 = getString(this.f20359m);
                int i = -1;
                if (string16 != null) {
                    Integer h14 = q.h(string16);
                    i = -1;
                    if (h14 != null) {
                        i = h14.intValue();
                    }
                }
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue6, string10, false, intValue4, intValue5, i, r36 == true ? 1L : 0L, string11, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261136);
                break;
            case 4:
                l.d(string, "mimeType");
                String string17 = getString(this.f20351e);
                l.d(string17, "getString(binaryEntityContent)");
                String string18 = getString(this.f20352f);
                int intValue7 = (string18 == null || (h7 = q.h(string18)) == null) ? 0 : h7.intValue();
                String string19 = getString(this.f20353g);
                ?? r362 = true;
                if (string19 != null) {
                    Long j4 = q.j(string19);
                    r362 = true;
                    if (j4 != null) {
                        r362 = j4.longValue();
                    }
                }
                String string20 = getString(this.f20361o);
                int i2 = -1;
                if (string20 != null) {
                    Integer h15 = q.h(string20);
                    i2 = -1;
                    if (h15 != null) {
                        i2 = h15.intValue();
                    }
                }
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue7, string17, false, 0, 0, i2, r362 == true ? 1L : 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261744);
                break;
            case 5:
                l.d(string, "mimeType");
                String string21 = getString(this.f20351e);
                l.d(string21, "getString(binaryEntityContent)");
                String string22 = getString(this.f20352f);
                int intValue8 = (string22 == null || (h8 = q.h(string22)) == null) ? 0 : h8.intValue();
                String string23 = getString(this.f20353g);
                ?? r363 = true;
                if (string23 != null) {
                    Long j5 = q.j(string23);
                    r363 = true;
                    if (j5 != null) {
                        r363 = j5.longValue();
                    }
                }
                String string24 = getString(this.f20366t);
                l.d(string24, "getString(docEntityFileName)");
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue8, string21, false, 0, 0, 0, r363 == true ? 1L : 0L, null, null, string24, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 259824);
                break;
            case 6:
                l.d(string, "mimeType");
                String string25 = getString(this.f20351e);
                l.d(string25, "getString(binaryEntityContent)");
                String string26 = getString(this.f20352f);
                int intValue9 = (string26 == null || (h9 = q.h(string26)) == null) ? 0 : h9.intValue();
                String string27 = getString(this.f20353g);
                ?? r364 = true;
                if (string27 != null) {
                    Long j6 = q.j(string27);
                    r364 = true;
                    if (j6 != null) {
                        r364 = j6.longValue();
                    }
                }
                String string28 = getString(this.f20363q);
                l.d(string28, "getString(vCardEntityName)");
                String string29 = getString(this.f20364r);
                int i3 = -1;
                if (string29 != null) {
                    Integer h16 = q.h(string29);
                    i3 = -1;
                    if (h16 != null) {
                        i3 = h16.intValue();
                    }
                }
                String string30 = getString(this.f20365s);
                l.d(string30, "getString(vCardEntityThumbnail)");
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue9, string25, false, 0, 0, 0, r364 == true ? 1L : 0L, string30, null, null, string28, i3, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 249072);
                break;
            case 7:
                l.d(string, "mimeType");
                String string31 = getString(this.f20371y);
                l.d(string31, "getString(linkEntityFileName)");
                String string32 = getString(this.f20372z);
                l.d(string32, "getString(linkEntitySource)");
                String string33 = getString(this.f20343A);
                l.d(string33, "getString(linkEntityDescription)");
                String string34 = getString(this.f20370x);
                l.d(string34, "getString(linkEntityThumbnail)");
                String string35 = getString(this.f20368v);
                int intValue10 = (string35 == null || (h11 = q.h(string35)) == null) ? -1 : h11.intValue();
                String string36 = getString(this.f20369w);
                int intValue11 = (string36 == null || (h10 = q.h(string36)) == null) ? -1 : h10.intValue();
                String string37 = getString(this.f20367u);
                l.d(string37, "getString(linkEntityContent)");
                entity = Entity.C4195a.m35042a(c4195a, j2, string, 0, string37, false, intValue10, intValue11, 0, 0L, string34, string32, string31, null, 0, string33, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 242068);
                break;
            case 8:
            default:
                l.d(string, "mimeType");
                String string38 = getString(this.f20351e);
                l.d(string38, "getString(binaryEntityContent)");
                String string39 = getString(this.f20352f);
                int intValue12 = (string39 == null || (h13 = q.h(string39)) == null) ? 0 : h13.intValue();
                String string40 = getString(this.f20353g);
                ?? r365 = true;
                if (string40 != null) {
                    Long j7 = q.j(string40);
                    r365 = true;
                    if (j7 != null) {
                        r365 = j7.longValue();
                    }
                }
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue12, string38, false, 0, 0, 0, r365 == true ? 1L : 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261872);
                break;
            case 9:
                l.d(string, "mimeType");
                String string41 = getString(this.f20351e);
                l.d(string41, "getString(binaryEntityContent)");
                String string42 = getString(this.f20352f);
                int intValue13 = (string42 == null || (h12 = q.h(string42)) == null) ? 0 : h12.intValue();
                String string43 = getString(this.f20353g);
                ?? r366 = true;
                if (string43 != null) {
                    Long j8 = q.j(string43);
                    r366 = true;
                    if (j8 != null) {
                        r366 = j8.longValue();
                    }
                }
                String string44 = getString(this.f20344B);
                String string45 = getString(this.f20345C);
                l.d(string45, "getString(locationEntityLatitude)");
                Double f = q.f(string45);
                ?? r39 = false;
                ?? doubleValue = f != null ? f.doubleValue() : false;
                String string46 = getString(this.f20346D);
                l.d(string46, "getString(locationEntityLongitude)");
                Double f2 = q.f(string46);
                if (f2 != null) {
                    r39 = f2.doubleValue();
                }
                entity = Entity.C4195a.m35042a(c4195a, j2, string, intValue13, string41, false, 0, 0, 0, r366 == true ? 1L : 0L, null, null, null, null, 0, null, string44, doubleValue == true ? 1.0d : 0.0d, r39 == true ? 1.0d : 0.0d, 32496);
                break;
        }
        return entity;
    }
}
