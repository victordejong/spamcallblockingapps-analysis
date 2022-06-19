package p193e.p194a.p195a.p227e;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.C2752R;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8607q;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.e.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/f.class */
public final class C5987f implements AbstractC5995h0 {

    /* renamed from: a */
    public final g f19928a = C25225a.m3978P1(new C5988a(1, this));

    /* renamed from: b */
    public final g f19929b = C25225a.m3978P1(new C5988a(2, this));

    /* renamed from: c */
    public final g f19930c = C25225a.m3978P1(new C5988a(0, this));

    /* renamed from: d */
    public Uri f19931d;

    /* renamed from: e */
    public Fragment f19932e;

    /* renamed from: f */
    public final Context f19933f;

    /* renamed from: g */
    public final f f19934g;

    /* renamed from: h */
    public final C20592g f19935h;

    /* renamed from: i */
    public final AbstractC19223c0 f19936i;

    /* renamed from: j */
    public final AbstractC8607q f19937j;

    /* renamed from: k */
    public final AbstractC19462a f19938k;

    /* renamed from: e.a.a.e.f$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/e/f$a.class */
    public static final class C5988a extends m implements a<String> {

        /* renamed from: b */
        public final /* synthetic */ int f19939b;

        /* renamed from: c */
        public final /* synthetic */ Object f19940c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5988a(int i, Object obj) {
            super(0);
            this.f19939b = i;
            this.f19940c = obj;
        }

        public final Object invoke() {
            int i = this.f19939b;
            String str = null;
            if (i == 0) {
                C20592g c20592g = ((C5987f) this.f19940c).f19935h;
                String mo10938g = ((AbstractC20597i) c20592g.f57916e5.m10941a(c20592g, C20592g.f57695p6[322])).mo10938g();
                String str2 = null;
                if (true ^ r.p(mo10938g)) {
                    str2 = mo10938g;
                }
                if (str2 == null) {
                    str2 = "#TruecallerForSMS";
                }
                return str2;
            } else if (i == 1) {
                C20592g c20592g2 = ((C5987f) this.f19940c).f19935h;
                String mo10938g2 = ((AbstractC20597i) c20592g2.f57924f5.m10941a(c20592g2, C20592g.f57695p6[323])).mo10938g();
                String str3 = null;
                if (true ^ r.p(mo10938g2)) {
                    str3 = mo10938g2;
                }
                if (str3 == null) {
                    str3 = "Look at how Truecaller helped me clean up my inbox. Try Inbox Cleaner today!";
                }
                return str3;
            } else if (i != 2) {
                throw null;
            } else {
                C20592g c20592g3 = ((C5987f) this.f19940c).f19935h;
                String mo10938g3 = ((AbstractC20597i) c20592g3.f57932g5.m10941a(c20592g3, C20592g.f57695p6[324])).mo10938g();
                if (true ^ r.p(mo10938g3)) {
                    str = mo10938g3;
                }
                if (str == null) {
                    str = "Look at how @Truecaller helped me clean up my inbox. Try Inbox Cleaner today!";
                }
                return str;
            }
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanupShareHelperImpl$share$1", f = "InboxCleanupShareHelper.kt", l = {87}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/f$b.class */
    public static final class C5989b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f19941e;

        /* renamed from: f */
        public int f19942f;

        /* renamed from: h */
        public final /* synthetic */ Context f19944h;

        /* renamed from: i */
        public final /* synthetic */ int f19945i;

        /* renamed from: j */
        public final /* synthetic */ int f19946j;

        /* renamed from: k */
        public final /* synthetic */ int f19947k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5989b(Context context, int i, int i2, int i3, d dVar) {
            super(2, dVar);
            C5987f.this = r5;
            this.f19944h = context;
            this.f19945i = i;
            this.f19946j = i2;
            this.f19947k = i3;
        }

        /* renamed from: i */
        public final d<s> m32093i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5989b(this.f19944h, this.f19945i, this.f19946j, this.f19947k, dVar);
        }

        /* renamed from: k */
        public final Object m32092k(Object obj, Object obj2) {
            return m32093i(obj, (d) obj2).m32091s(s.a);
        }

        /* renamed from: s */
        public final Object m32091s(Object obj) {
            Object obj2;
            C5987f c5987f;
            FragmentManager childFragmentManager;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19942f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5987f c5987f2 = C5987f.this;
                Context context = this.f19944h;
                int i2 = this.f19945i;
                int i3 = this.f19946j;
                int i4 = this.f19947k;
                String str = (String) c5987f2.f19930c.getValue();
                Objects.requireNonNull(c5987f2);
                Object systemService = context.getSystemService("layout_inflater");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
                View inflate = ((LayoutInflater) systemService).inflate(C2752R.layout.inbox_cleaner_share_view, (ViewGroup) null);
                l.d(inflate, "inflater.inflate(R.layou…cleaner_share_view, null)");
                View findViewById = inflate.findViewById(C2752R.C2754id.txtOtpCount);
                l.d(findViewById, "view.findViewById<TextView>(R.id.txtOtpCount)");
                ((TextView) findViewById).setText(String.valueOf(i2));
                View findViewById2 = inflate.findViewById(C2752R.C2754id.txtOtp);
                l.d(findViewById2, "view.findViewById<TextView>(R.id.txtOtp)");
                ((TextView) C22128a.m8624f1((TextView) findViewById2, c5987f2.f19936i.mo13759k(C2752R.plurals.inbox_cleanup_all_time_stats_messages_otp, i2, new Object[0]), inflate, C2752R.C2754id.txtPromotionalCount, "view.findViewById<TextVi…R.id.txtPromotionalCount)")).setText(String.valueOf(i3));
                View findViewById3 = inflate.findViewById(C2752R.C2754id.txtPromotional);
                l.d(findViewById3, "view.findViewById<TextView>(R.id.txtPromotional)");
                ((TextView) C22128a.m8624f1((TextView) findViewById3, c5987f2.f19936i.mo13759k(C2752R.plurals.inbox_cleanup_all_time_stats_messages_promotional, i3, new Object[0]), inflate, C2752R.C2754id.txtSpamCount, "view.findViewById<TextView>(R.id.txtSpamCount)")).setText(String.valueOf(i4));
                View findViewById4 = inflate.findViewById(C2752R.C2754id.txtSpam);
                l.d(findViewById4, "view.findViewById<TextView>(R.id.txtSpam)");
                ((TextView) C22128a.m8624f1((TextView) C22128a.m8624f1((TextView) findViewById4, c5987f2.f19936i.mo13759k(C2752R.plurals.inbox_cleanup_all_time_stats_messages_spam, i4, new Object[0]), inflate, C2752R.C2754id.txtSubtitle, "view.findViewById<TextView>(R.id.txtSubtitle)"), str, inflate, 2131366265, "view.findViewById<TextView>(R.id.text)")).setText(c5987f2.f19936i.mo13756n(C2752R.string.inbox_cleanup_share_bottom_text, new Object[0]));
                View findViewById5 = inflate.findViewById(C2752R.C2754id.groupPromotional);
                l.d(findViewById5, "view.findViewById<Group>(R.id.groupPromotional)");
                C19286f.m13683U(findViewById5, c5987f2.f19935h.m10969e0().isEnabled());
                C5987f c5987f3 = C5987f.this;
                AbstractC8607q abstractC8607q = c5987f3.f19937j;
                this.f19941e = c5987f3;
                this.f19942f = 1;
                obj2 = abstractC8607q.mo28229a(inflate, 660, 660, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c5987f = c5987f3;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c5987f = (C5987f) this.f19941e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c5987f.f19931d = (Uri) obj2;
            C5987f c5987f4 = C5987f.this;
            Uri uri = c5987f4.f19931d;
            if (uri != null) {
                String m32097d = c5987f4.m32097d();
                Fragment fragment = c5987f4.f19932e;
                if (fragment != null && (childFragmentManager = fragment.getChildFragmentManager()) != null) {
                    e.a.u.a.OA(childFragmentManager, c5987f4.m32095f(c5987f4.m32099b(uri)), c5987f4.m32095f(c5987f4.m32098c(m32097d, uri, SupportMessenger.WHATSAPP)), c5987f4.m32095f(c5987f4.m32098c(m32097d, uri, SupportMessenger.FB_MESSENGER)), c5987f4.m32095f(c5987f4.m32098c(m32097d, uri, SupportMessenger.TWITTER)));
                }
                C22128a.m8684N0("Ci4-ShareDialogOpened", new LinkedHashMap(), C22128a.m8655X("Ci4-ShareDialogOpened", "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", C5987f.this.f19938k);
            }
            return s.a;
        }
    }

    @Inject
    public C5987f(Context context, @Named("UI") f fVar, C20592g c20592g, AbstractC19223c0 abstractC19223c0, AbstractC8607q abstractC8607q, AbstractC19462a abstractC19462a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ui");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC8607q, "imageRenderer");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f19933f = context;
        this.f19934g = fVar;
        this.f19935h = c20592g;
        this.f19936i = abstractC19223c0;
        this.f19937j = abstractC8607q;
        this.f19938k = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: A5 */
    public void mo32077A5() {
        Uri uri = this.f19931d;
        if (uri != null) {
            m32094g(m32097d(), uri, null);
        }
        m32096e("other");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: U3 */
    public void mo32076U3() {
        Uri uri = this.f19931d;
        if (uri != null) {
            m32094g(m32097d(), uri, SupportMessenger.WHATSAPP);
        }
        m32096e("whatsapp");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: Y5 */
    public void mo32075Y5() {
        Uri uri = this.f19931d;
        if (uri != null) {
            m32094g(((String) this.f19929b.getValue()) + ' ' + ((String) this.f19930c.getValue()), uri, SupportMessenger.TWITTER);
        }
        m32096e("twitter");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: Z5 */
    public void mo32074Z5(Fragment fragment) {
        this.f19932e = fragment;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: a */
    public void mo32073a() {
        this.f19932e = null;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: a6 */
    public void mo32072a6(Context context, int i, int i2, int i3) {
        l.e(context, AnalyticsConstants.CONTEXT);
        s1.a.a.a.v0.f.d.w2(h1.a, this.f19934g, (j0) null, new C5989b(context, i, i2, i3, null), 2, (Object) null);
    }

    /* renamed from: b */
    public final Intent m32099b(Uri uri) {
        Intent intent = new Intent("com.instagram.share.ADD_TO_STORY");
        intent.putExtra("source_application", this.f19933f.getPackageName());
        intent.setType("image/jpg");
        intent.putExtra("interactive_asset_uri", uri);
        intent.putExtra("top_background_color", "#0087FF");
        intent.putExtra("bottom_background_color", "#0087FF");
        return intent;
    }

    /* renamed from: c */
    public final Intent m32098c(String str, Uri uri, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(str2);
        intent.setType(ContentFormat.IMAGE_PNG).putExtra("android.intent.extra.STREAM", uri);
        return intent;
    }

    /* renamed from: d */
    public final String m32097d() {
        return (String) this.f19928a.getValue();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: d5 */
    public void mo32071d5() {
        Uri uri = this.f19931d;
        if (uri != null) {
            m32094g(m32097d(), uri, SupportMessenger.FB_MESSENGER);
        }
        m32096e("facebook");
    }

    /* renamed from: e */
    public final void m32096e(String str) {
        AbstractC19462a abstractC19462a = this.f19938k;
        LinkedHashMap m8655X = C22128a.m8655X("Ci5-Share", "type");
        C22128a.m8684N0("Ci5-Share", C22128a.m8652Y("platform", AnalyticsConstants.NAME, str, "value", m8655X, "platform", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* renamed from: f */
    public final boolean m32095f(Intent intent) {
        boolean z;
        n3.r.a.l activity;
        Fragment fragment = this.f19932e;
        if (fragment != null && (activity = fragment.getActivity()) != null) {
            l.d(activity, "fragment?.activity ?: return false");
            if (intent.resolveActivity(activity.getPackageManager()) != null) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: g */
    public final void m32094g(String str, Uri uri, String str2) {
        n3.r.a.l activity;
        Fragment fragment = this.f19932e;
        if (fragment == null || (activity = fragment.getActivity()) == null) {
            return;
        }
        l.d(activity, "fragment?.activity ?: return");
        try {
            Intent createChooser = Intent.createChooser(m32098c(str, uri, str2), str);
            createChooser.setFlags(268435456);
            activity.startActivity(createChooser);
        } catch (ActivityNotFoundException e) {
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: o5 */
    public void mo32070o5() {
        Uri uri = this.f19931d;
        if (uri != null) {
            m32094g(m32097d(), uri, this.f19933f.getPackageName());
        }
        m32096e("tc");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5995h0
    /* renamed from: r4 */
    public void mo32069r4() {
        n3.r.a.l activity;
        Fragment fragment = this.f19932e;
        if (fragment == null || (activity = fragment.getActivity()) == null) {
            return;
        }
        l.d(activity, "fragment?.activity ?: return");
        Uri uri = this.f19931d;
        if (uri == null) {
            return;
        }
        Intent createChooser = Intent.createChooser(m32099b(uri), m32097d());
        createChooser.setFlags(268435456);
        activity.grantUriPermission("com.instagram.android", uri, 1);
        if (activity.getPackageManager().resolveActivity(createChooser, 0) == null) {
            return;
        }
        activity.startActivityForResult(createChooser, 0);
    }
}
