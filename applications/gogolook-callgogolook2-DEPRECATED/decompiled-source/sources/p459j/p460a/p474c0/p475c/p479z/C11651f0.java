package p459j.p460a.p474c0.p475c.p479z;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import p081h.p093b.p113e.C5673b;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p478y.AbstractC11631n;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.z.f0 */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f0.class */
public class C11651f0 {

    /* renamed from: a */
    public final List<C11654c> f26155a;

    /* renamed from: b */
    public final Uri f26156b;

    /* renamed from: c */
    public final String f26157c;

    /* renamed from: j.a.c0.c.z.f0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f0$a.class */
    public class RunnableC11652a implements Runnable {
        public RunnableC11652a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(C11651f0.this.f26156b, null, null);
        }
    }

    /* renamed from: j.a.c0.c.z.f0$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f0$b.class */
    public class C11653b extends AbstractC11631n {
        public C11653b() {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: f */
        public Uri mo7643f() {
            return C11651f0.this.m8711b();
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: g */
        public Intent mo7642g() {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: h */
        public long mo7641h() {
            return -1L;
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: i */
        public String mo7640i() {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: j */
        public String mo7639j() {
            return C11651f0.this.m8707e();
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: k */
        public String mo7638k() {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
        /* renamed from: l */
        public String mo7637l() {
            return null;
        }
    }

    /* renamed from: j.a.c0.c.z.f0$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f0$c.class */
    public static class C11654c {

        /* renamed from: a */
        public final String f26160a;

        /* renamed from: b */
        public final String f26161b;

        /* renamed from: c */
        public final Intent f26162c;

        /* renamed from: j.a.c0.c.z.f0$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/f0$c$a.class */
        public class C11655a extends AbstractC11631n {
            public C11655a() {
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: f */
            public Uri mo7643f() {
                return null;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: g */
            public Intent mo7642g() {
                return C11654c.this.f26162c;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: h */
            public long mo7641h() {
                return -1L;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: i */
            public String mo7640i() {
                return C11654c.this.f26161b;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: j */
            public String mo7639j() {
                return C11654c.this.f26160a;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: k */
            public String mo7638k() {
                return null;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: l */
            public String mo7637l() {
                return null;
            }
        }

        public C11654c(String str, String str2, Intent intent) {
            this.f26160a = str;
            this.f26161b = str2;
            this.f26162c = intent;
        }

        /* renamed from: a */
        public AbstractC11631n m8706a() {
            return new C11655a();
        }
    }

    public C11651f0(C11650f fVar, Uri uri) {
        this.f26155a = m8713a(fVar);
        this.f26157c = m8710b(fVar);
        this.f26156b = uri;
    }

    /* renamed from: a */
    public static String m8714a(C5673b.C5689p pVar) {
        StringBuilder sb = new StringBuilder();
        String e = pVar.m24750e();
        if (!TextUtils.isEmpty(e)) {
            sb.append(e);
            sb.append(" ");
        }
        String c = pVar.m24752c();
        if (!TextUtils.isEmpty(c)) {
            sb.append(c);
            sb.append(" ");
        }
        String h = pVar.m24747h();
        if (!TextUtils.isEmpty(h)) {
            sb.append(h);
            sb.append(" ");
        }
        String d = pVar.m24751d();
        if (!TextUtils.isEmpty(d)) {
            sb.append(d);
            sb.append(" ");
        }
        String g = pVar.m24748g();
        if (!TextUtils.isEmpty(g)) {
            sb.append(g);
            sb.append(" ");
        }
        String f = pVar.m24749f();
        if (!TextUtils.isEmpty(f)) {
            sb.append(f);
            sb.append(" ");
        }
        String b = pVar.m24753b();
        if (!TextUtils.isEmpty(b)) {
            sb.append(b);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static List<C11654c> m8713a(C5673b bVar) {
        String str;
        String str2;
        String str3;
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        ArrayList arrayList = new ArrayList();
        if (bVar.m24804i() != null) {
            for (C5673b.C5687n nVar : bVar.m24804i()) {
                Intent intent = new Intent("android.intent.action.DIAL");
                intent.setData(Uri.parse(PhoneNumberUtil.RFC3966_PREFIX + nVar.m24758c()));
                arrayList.add(new C11654c(nVar.m24758c(), ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, nVar.m24757d(), nVar.m24759b()).toString(), intent));
            }
        }
        if (bVar.m24808e() != null) {
            for (C5673b.C5678e eVar : bVar.m24808e()) {
                Intent intent2 = new Intent("android.intent.action.SENDTO");
                intent2.setData(Uri.parse("mailto:"));
                intent2.putExtra("android.intent.extra.EMAIL", new String[]{eVar.m24797b()});
                arrayList.add(new C11654c(eVar.m24797b(), ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, eVar.m24795d(), eVar.m24796c()).toString(), intent2));
            }
        }
        if (bVar.m24802k() != null) {
            for (C5673b.C5689p pVar : bVar.m24802k()) {
                try {
                    str3 = resources.getStringArray(17235972)[pVar.m24746i() - 1];
                } catch (Resources.NotFoundException e) {
                    str3 = resources.getStringArray(17235972)[2];
                } catch (Exception e2) {
                    C12153d0.m6987b("MessagingApp", "createContactItem postal Exception:" + e2);
                    str3 = resources.getStringArray(17235972)[2];
                }
                Intent intent3 = new Intent("android.intent.action.VIEW");
                String a = m8714a(pVar);
                try {
                    intent3.setData(Uri.parse("geo:0,0?q=" + URLEncoder.encode(a, "UTF-8")));
                } catch (UnsupportedEncodingException e3) {
                    intent3 = null;
                }
                arrayList.add(new C11654c(a, str3, intent3));
            }
        }
        if (bVar.m24807f() != null) {
            for (C5673b.C5682i iVar : bVar.m24807f()) {
                try {
                    str2 = resources.getString(ContactsContract.CommonDataKinds.Im.getProtocolLabelResource(iVar.m24793c()));
                } catch (Resources.NotFoundException e4) {
                    str2 = null;
                }
                arrayList.add(new C11654c(iVar.m24794b(), str2, null));
            }
        }
        if (bVar.m24805h() != null) {
            for (C5673b.C5686m mVar : bVar.m24805h()) {
                try {
                    str = resources.getString(ContactsContract.CommonDataKinds.Organization.getTypeLabelResource(mVar.m24761d()));
                } catch (Resources.NotFoundException e5) {
                    str = resources.getStringArray(17235970)[1];
                } catch (Exception e6) {
                    C12153d0.m6987b("MessagingApp", "createContactItem org Exception:" + e6);
                    str = resources.getStringArray(17235970)[1];
                }
                arrayList.add(new C11654c(mVar.m24764c(), str, null));
            }
        }
        if (bVar.m24801l() != null) {
            for (C5673b.C5692s sVar : bVar.m24801l()) {
                if (sVar != null && TextUtils.isGraphic(sVar.m24739b())) {
                    String b = sVar.m24739b();
                    String str4 = b;
                    if (!b.startsWith("http://")) {
                        str4 = b;
                        if (!b.startsWith("https://")) {
                            str4 = "http://" + b;
                        }
                    }
                    arrayList.add(new C11654c(sVar.m24739b(), null, new Intent("android.intent.action.VIEW", Uri.parse(str4))));
                }
            }
        }
        if (bVar.m24812c() != null) {
            String c = bVar.m24812c();
            if (TextUtils.isGraphic(c)) {
                arrayList.add(new C11654c(c, resources.getString(R$string.vcard_detail_birthday_label), null));
            }
        }
        if (bVar.m24806g() != null) {
            for (C5673b.C5685l lVar : bVar.m24806g()) {
                new ArrayMap();
                if (TextUtils.isGraphic(lVar.m24771b())) {
                    arrayList.add(new C11654c(lVar.m24771b(), resources.getString(R$string.vcard_detail_notes_label), null));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static String m8710b(C5673b bVar) {
        String d = bVar.m24809d();
        String str = d;
        if (d == null) {
            bVar.m24833a();
            str = bVar.m24809d();
        }
        return str;
    }

    /* renamed from: a */
    public void m8715a() {
        if (MediaScratchFileProvider.m27782c(this.f26156b)) {
            AbstractAsyncTaskC12189n0.m6856a(new RunnableC11652a());
        }
    }

    /* renamed from: b */
    public Uri m8711b() {
        return this.f26156b;
    }

    /* renamed from: c */
    public List<C11654c> m8709c() {
        return this.f26155a;
    }

    /* renamed from: d */
    public AbstractC11631n m8708d() {
        return new C11653b();
    }

    /* renamed from: e */
    public String m8707e() {
        return this.f26157c;
    }
}
