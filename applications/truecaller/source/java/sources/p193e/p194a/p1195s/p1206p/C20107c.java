package p193e.p194a.p1195s.p1206p;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.work.ListenableWorker;
import com.truecaller.callhero_assistant.data.SetWhitelistNumbersRequestDto;
import java.security.MessageDigest;
import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.a.a.a.v0.f.d;
import s1.f0.b;
import s1.f0.v;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.s.p.c */
/* loaded from: classes17-dex2jar.jar:e/a/s/p/c.class */
public final class C20107c implements AbstractC20106b {

    /* renamed from: a */
    public final ContentResolver f56718a;

    /* renamed from: b */
    public final C20592g f56719b;

    /* renamed from: c */
    public final AbstractC20177c f56720c;

    /* renamed from: d */
    public final AbstractC19219a0 f56721d;

    /* renamed from: e */
    public final AbstractC20102d f56722e;

    /* renamed from: f */
    public final AbstractC8432l f56723f;

    /* renamed from: e.a.s.p.c$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/p/c$a.class */
    public static final class C20108a extends m implements l<Byte, CharSequence> {

        /* renamed from: b */
        public static final C20108a f56724b = new C20108a();

        public C20108a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11530d(Object obj) {
            byte byteValue = ((Number) obj).byteValue();
            d.e0(16);
            String num = Integer.toString(byteValue & 255, 16);
            s1.z.c.l.d(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            return v.M(num, 2, '0');
        }
    }

    @Inject
    public C20107c(ContentResolver contentResolver, C20592g c20592g, AbstractC20177c abstractC20177c, AbstractC19219a0 abstractC19219a0, AbstractC20102d abstractC20102d, AbstractC8432l abstractC8432l) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC20177c, "callAssistantSettings");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC20102d, "restAdapter");
        s1.z.c.l.e(abstractC8432l, "accountManager");
        this.f56718a = contentResolver;
        this.f56719b = c20592g;
        this.f56720c = abstractC20177c;
        this.f56721d = abstractC19219a0;
        this.f56722e = abstractC20102d;
        this.f56723f = abstractC8432l;
    }

    @Override // p193e.p194a.p1195s.p1206p.AbstractC20106b
    /* renamed from: a */
    public boolean mo11532a() {
        return this.f56719b.m10997H().isEnabled() && this.f56720c.mo11422g1() && this.f56721d.mo13832a() && this.f56723f.mo28580d();
    }

    /* renamed from: b */
    public final String m11531b(Cursor cursor) {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            s1.z.c.l.d(string, "number");
            byte[] bytes = string.getBytes(b.a);
            s1.z.c.l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            messageDigest.update(bytes);
            messageDigest.update((byte) 10);
        }
        byte[] digest = messageDigest.digest();
        s1.z.c.l.d(digest, "digest.digest()");
        return C25225a.m3998K1(digest, "", null, null, 0, null, C20108a.f56724b, 30);
    }

    @Override // p193e.p194a.p1195s.p1206p.AbstractC20106b
    public ListenableWorker.AbstractC0414a execute() {
        if (!mo11532a()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            s1.z.c.l.d(c0417c, "Result.success()");
            return c0417c;
        }
        ContentResolver contentResolver = this.f56718a;
        Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        s1.z.c.l.d(uri, "Phone.CONTENT_URI");
        Cursor m13701C = C19286f.m13701C(contentResolver, uri, new String[]{"data4"}, "data4 NOT NULL", null, new String[]{"data4"}, null, 20000, null, 168);
        if (m13701C == null) {
            ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            s1.z.c.l.d(c0415a, "Result.failure()");
            return c0415a;
        }
        try {
            String m11531b = m11531b(m13701C);
            if (s1.z.c.l.a(m11531b, this.f56720c.mo11424R2())) {
                ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                s1.z.c.l.d(c0417c2, "Result.success()");
                th = null;
                return c0417c2;
            }
            ArrayList arrayList = new ArrayList();
            m13701C.moveToPosition(-1);
            while (m13701C.moveToNext()) {
                arrayList.add(m13701C.getString(0));
            }
            try {
                this.f56722e.mo11533j(new SetWhitelistNumbersRequestDto(arrayList)).execute();
                this.f56720c.mo11417x0(m11531b);
                C25225a.m4016G(m13701C, null);
                ListenableWorker.AbstractC0414a.C0417c c0417c3 = new ListenableWorker.AbstractC0414a.C0417c();
                s1.z.c.l.d(c0417c3, "Result.success()");
                return c0417c3;
            } catch (Exception e) {
                ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
                s1.z.c.l.d(c0416b, "Result.retry()");
                th = null;
                return c0416b;
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
