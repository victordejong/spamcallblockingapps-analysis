package p193e.p194a.p1114o5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.o5.s */
/* loaded from: classes15-dex2jar.jar:e/a/o5/s.class */
public class C19100s implements AbstractC19093r {

    /* renamed from: a */
    public final Context f53317a;

    public C19100s(Context context) {
        this.f53317a = context;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19093r
    /* renamed from: a */
    public List<Long> mo14116a(Context context, int i) {
        ArrayList arrayList;
        ArrayList arrayList2 = s.a;
        l.e(context, AnalyticsConstants.CONTEXT);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC19219a0 mo11647c = ((AbstractC21187w1) applicationContext).mo10154s().mo11647c();
        l.d(mo11647c, "(context.applicationCont…ctsGraph.permissionUtil()");
        if (!mo11647c.mo13825h("android.permission.READ_CONTACTS")) {
            arrayList = arrayList2;
        } else {
            try {
                Cursor query = context.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI.buildUpon().appendQueryParameter("limit", String.valueOf(i)).build(), new String[]{"_id"}, "starred == 1", null, null);
                arrayList = new ArrayList();
                if (query != null) {
                    while (query.moveToNext()) {
                        arrayList.add(Long.valueOf(query.getInt(query.getColumnIndexOrThrow("_id"))));
                    }
                }
                C25225a.m4016G(query, null);
            } catch (RuntimeException e) {
                C10480a.m26061I1(e);
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19093r
    /* renamed from: b */
    public boolean mo14115b(String str) {
        return C17422k.m16042z(this.f53317a, str);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19093r
    /* renamed from: c */
    public Long mo14114c(String str) {
        Long l;
        Context context = this.f53317a;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (str == null || str.length() == 0) {
            l = null;
        } else {
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC19219a0 mo11647c = ((AbstractC21187w1) applicationContext).mo10154s().mo11647c();
            l.d(mo11647c, "(context.applicationCont…ctsGraph.permissionUtil()");
            if (!mo11647c.mo13825h("android.permission.READ_CONTACTS")) {
                l = null;
            } else {
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str));
                String str2 = Build.VERSION.SDK_INT >= 24 ? "contact_id" : "_id";
                try {
                    Cursor query = context.getContentResolver().query(withAppendedPath, new String[]{str2}, null, null, null);
                    ArrayList arrayList = new ArrayList();
                    if (query != null) {
                        while (query.moveToNext()) {
                            arrayList.add(Long.valueOf(query.getLong(query.getColumnIndexOrThrow(str2))));
                        }
                    }
                    C25225a.m4016G(query, null);
                    l = (Long) i.D(arrayList);
                } catch (RuntimeException e) {
                    C10480a.m26061I1(e);
                    l = null;
                }
            }
        }
        return l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
        if ((r7 != null && p193e.p194a.p1342w4.C21207g.m10135a(r0, r7.m35476h())) != false) goto L13;
     */
    @Override // p193e.p194a.p1114o5.AbstractC19093r
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo14113d(com.truecaller.data.entity.Number r7) {
        /*
            r6 = this;
            r0 = r6
            android.content.Context r0 = r0.f53317a
            r8 = r0
            r0 = r8
            android.content.Context r0 = r0.getApplicationContext()
            e.a.w1 r0 = (p193e.p194a.AbstractC21187w1) r0
            e.a.j2 r0 = r0.mo10154s()
            e.a.p5.a0 r0 = r0.mo11647c()
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.READ_CONTACTS"
            r2[r3] = r4
            boolean r0 = r0.mo13825h(r1)
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L52
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            if (r0 == 0) goto L47
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.m35476h()
            boolean r0 = p193e.p194a.p1342w4.C21207g.m10135a(r0, r1)
            if (r0 == 0) goto L47
            r0 = 1
            r11 = r0
            goto L4a
        L47:
            r0 = 0
            r11 = r0
        L4a:
            r0 = r11
            if (r0 == 0) goto L52
            goto L55
        L52:
            r0 = 0
            r10 = r0
        L55:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19100s.mo14113d(com.truecaller.data.entity.Number):boolean");
    }
}
