package gogolook.callgogolook2.intro.verify.presenter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.UserNumber;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p081h.p203i.p204a.p224e.p226b.p227e.p230f.C6731a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9134d;
import p081h.p203i.p204a.p224e.p293r.AbstractC9137e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p459j.p460a.p521j0.C12495d;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p596x.p599m.C14427a;
import p459j.p460a.p596x.p599m.p600b.AbstractC14436a;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u000f\u0018�� 52\u00020\u0001:\u000256B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001a\u001a\u00020\u0018H\u0016J\u0016\u0010\u001b\u001a\u00020\u00182\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u000fH\u0016J\b\u0010\u001f\u001a\u00020\u000fH\u0016J\u0006\u0010 \u001a\u00020\u000fJ\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u000fH\u0002J\u0006\u0010$\u001a\u00020\u0018J\u001e\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020(J\u0006\u0010)\u001a\u00020\u0018J\u001e\u0010*\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020(J\b\u0010+\u001a\u00020\u0018H\u0002J\u000e\u0010,\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010.\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\nJ\u0010\u0010/\u001a\u00020\u00182\b\u0010\u0011\u001a\u0004\u0018\u00010\nJ\b\u00100\u001a\u00020\u0018H\u0002J\u0010\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\nH\u0016J\u0010\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u00020\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\b\u0018\u00010\u0014R\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u00067"}, m815d2 = {"Lgogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter;", "Lgogolook/callgogolook2/intro/verify/presenter/INumberVerifyPresenter;", "context", "Landroid/content/Context;", "numberVerifyView", "Lgogolook/callgogolook2/intro/verify/presenter/INumberVerifyPresenter$INumberVerifyView;", "(Landroid/content/Context;Lgogolook/callgogolook2/intro/verify/presenter/INumberVerifyPresenter$INumberVerifyView;)V", "apiHelper", "Lgogolook/callgogolook2/intro/verify/NumberVerifyApiHelper;", ImpressionData.COUNTRY, "", "countryCode", "e164ToVerify", "incomingNumber", "isVerified", "", "number", "oldNumber", "receivedSmsCode", "smsReceiver", "Lgogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$SmsReceiver;", "suffix", "checkNumberSuspendedLocally", "clearSmsCache", "", "create", "destroy", "getNumberBindingStatus", "request", "Lkotlin/Function0;", "isIsVerified", "isSmsRequesting", "isUsingSimNumber", "onVerifySuccess", "result", "isOwner", "registerSmsReceiver", "reportCallEvent", "success", "reason", "", "reportCsEvent", "reportSmsEvent", "requestSmsVerify", "setCountry", "setCountryCode", "setNumber", "setOldNumber", "unregisterSmsReceiver", "validateSmsVerifyCode", "verifyCode", "verifyBySms", "checkBindingStatus", "Companion", "SmsReceiver", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter.class */
public final class NumberVerifyPresenter implements AbstractC14436a {

    /* renamed from: k */
    public static final Pattern f10959k;

    /* renamed from: a */
    public final C14427a f10960a;

    /* renamed from: f */
    public SmsReceiver f10965f;

    /* renamed from: h */
    public boolean f10967h;

    /* renamed from: i */
    public final Context f10968i;

    /* renamed from: j */
    public final AbstractC14436a.AbstractC14437a f10969j;

    /* renamed from: b */
    public String f10961b = "";

    /* renamed from: c */
    public String f10962c = "";

    /* renamed from: d */
    public String f10963d = "";

    /* renamed from: e */
    public String f10964e = "";

    /* renamed from: g */
    public String f10966g = "";

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0080\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, m815d2 = {"Lgogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$SmsReceiver;", "Landroid/content/BroadcastReceiver;", "(Lgogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter;)V", "onReceive", "", "context", "Landroid/content/Context;", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$SmsReceiver.class */
    public final class SmsReceiver extends BroadcastReceiver {
        public SmsReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras;
            C15149k.m377b(context, "context");
            Integer num = null;
            String action = intent != null ? intent.getAction() : null;
            if (action != null && action.hashCode() == -1845060944 && action.equals("com.google.android.gms.auth.api.phone.SMS_RETRIEVED") && (extras = intent.getExtras()) != null) {
                Object obj = extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
                Object obj2 = obj;
                if (!(obj instanceof Status)) {
                    obj2 = null;
                }
                Status status = (Status) obj2;
                if (status != null) {
                    num = Integer.valueOf(status.m31988c());
                }
                if (num != null && num.intValue() == 0) {
                    Object obj3 = extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
                    if (obj3 != null) {
                        Matcher matcher = NumberVerifyPresenter.f10959k.matcher((String) obj3);
                        if (matcher.find() && matcher.groupCount() > 0) {
                            NumberVerifyPresenter numberVerifyPresenter = NumberVerifyPresenter.this;
                            String group = matcher.group(1);
                            C15149k.m383a((Object) group, "matcher.group(1)");
                            numberVerifyPresenter.f10966g = group;
                            NumberVerifyPresenter.this.f10969j.mo1340b(NumberVerifyPresenter.this.f10966g);
                            return;
                        }
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type kotlin.String");
                }
                LogManager.m28579a("NumberVerifyPresenter", "SMS retrieved, unexpected status=" + status);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$a.class */
    public static final class C4549a {
        public C4549a() {
        }

        public /* synthetic */ C4549a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$b.class */
    public static final class C4550b extends AbstractC15150l implements AbstractC15122p<Integer, String, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC15107a f10972b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4550b(AbstractC15107a aVar) {
            super(2);
            this.f10972b = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00eb  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m27947a(int r5, java.lang.String r6) {
            /*
                Method dump skipped, instructions count: 333
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter.C4550b.m27947a(int, java.lang.String):boolean");
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num, String str) {
            return Boolean.valueOf(m27947a(num.intValue(), str));
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$c.class */
    public static final class C4551c<TResult> implements AbstractC9137e<Void> {

        /* renamed from: a */
        public static final C4551c f10973a = new C4551c();

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void mo3758a(Void r2) {
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$d.class */
    public static final class C4552d implements AbstractC9134d {

        /* renamed from: a */
        public static final C4552d f10974a = new C4552d();

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(Exception exc) {
            C15149k.m377b(exc, "it");
            C13973d4.m2952a(exc);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$e.class */
    public static final class C4553e extends AbstractC15150l implements AbstractC15122p<Integer, String, Boolean> {
        public C4553e() {
            super(2);
        }

        /* renamed from: a */
        public final boolean m27945a(int i, String str) {
            C15149k.m377b(str, "result");
            boolean z = true;
            if (i == C14427a.f32280j.m1345g()) {
                C13915b3.m3057b("sms_last_request_time", System.currentTimeMillis());
                C14092n3.m2583b("verifying_country_code", NumberVerifyPresenter.this.f10961b);
                C14092n3.m2583b("verifying_number", NumberVerifyPresenter.this.f10962c);
                NumberVerifyPresenter.this.f10969j.mo1339c();
            } else if (i == C14427a.f32280j.m1349c()) {
                boolean g = NumberVerifyPresenter.this.m27952g();
                NumberVerifyPresenter.this.m27963b(true, g, 0);
                NumberVerifyPresenter.this.m27970a(str, g);
            } else if (i == C14427a.f32280j.m1347e()) {
                NumberVerifyPresenter numberVerifyPresenter = NumberVerifyPresenter.this;
                numberVerifyPresenter.m27963b(false, numberVerifyPresenter.m27952g(), 2);
                NumberVerifyPresenter.this.f10969j.mo1337e();
            } else if (i == C14427a.f32280j.m1346f()) {
                NumberVerifyPresenter numberVerifyPresenter2 = NumberVerifyPresenter.this;
                numberVerifyPresenter2.m27963b(false, numberVerifyPresenter2.m27952g(), 3);
                NumberVerifyPresenter.this.f10969j.mo1343a();
            } else if (i == C14427a.f32280j.m1348d()) {
                NumberVerifyPresenter numberVerifyPresenter3 = NumberVerifyPresenter.this;
                numberVerifyPresenter3.m27963b(false, numberVerifyPresenter3.m27952g(), 5);
                NumberVerifyPresenter.this.f10969j.reset();
                z = false;
            } else {
                NumberVerifyPresenter numberVerifyPresenter4 = NumberVerifyPresenter.this;
                numberVerifyPresenter4.m27963b(false, numberVerifyPresenter4.m27952g(), 5);
            }
            return z;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num, String str) {
            return Boolean.valueOf(m27945a(num.intValue(), str));
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$f.class */
    public static final class C4554f extends AbstractC15150l implements AbstractC15122p<Integer, String, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ boolean f10977b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4554f(boolean z) {
            super(2);
            this.f10977b = z;
        }

        /* renamed from: a */
        public final boolean m27944a(int i, String str) {
            C15149k.m377b(str, "result");
            boolean z = true;
            if (i == C14427a.f32280j.m1345g() || i == C14427a.f32280j.m1349c()) {
                NumberVerifyPresenter.this.m27963b(true, this.f10977b, 0);
                NumberVerifyPresenter.this.m27970a(str, this.f10977b);
            } else if (i == C14427a.f32280j.m1344h()) {
                NumberVerifyPresenter.this.m27963b(false, this.f10977b, 4);
                NumberVerifyPresenter.this.f10969j.mo1338d();
            } else if (i == C14427a.f32280j.m1346f()) {
                NumberVerifyPresenter.this.m27963b(false, this.f10977b, 3);
                NumberVerifyPresenter.this.f10969j.mo1343a();
            } else if (i == C14427a.f32280j.m1348d()) {
                NumberVerifyPresenter.this.m27963b(false, this.f10977b, 5);
                NumberVerifyPresenter.this.f10969j.reset();
                z = false;
            } else {
                NumberVerifyPresenter.this.m27963b(false, this.f10977b, 5);
                NumberVerifyPresenter.this.f10969j.reset();
            }
            return z;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num, String str) {
            return Boolean.valueOf(m27944a(num.intValue(), str));
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/presenter/NumberVerifyPresenter$g.class */
    public static final class C4555g extends AbstractC15150l implements AbstractC15107a<C14989s> {
        public C4555g() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            NumberVerifyPresenter.this.m27949j();
        }
    }

    static {
        new C4549a(null);
        Pattern compile = Pattern.compile("whoscall\\scode:\\s([0-9]+)");
        C15149k.m383a((Object) compile, "Pattern.compile(\"whoscall\\\\scode:\\\\s([0-9]+)\")");
        f10959k = compile;
    }

    public NumberVerifyPresenter(Context context, AbstractC14436a.AbstractC14437a aVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(aVar, "numberVerifyView");
        this.f10968i = context;
        this.f10969j = aVar;
        this.f10960a = new C14427a(this.f10968i);
    }

    /* renamed from: a */
    public final void m27971a(String str) {
        C15149k.m377b(str, ImpressionData.COUNTRY);
        this.f10963d = str;
    }

    /* renamed from: a */
    public final void m27970a(String str, boolean z) {
        try {
            UserProfile.m28145a(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!this.f10967h) {
            this.f10967h = true;
            String l = C14108o4.m2474l(this.f10961b + this.f10962c);
            C15149k.m383a((Object) l, "UtilsTelephony.parseE164…ber(countryCode + number)");
            if (l != null) {
                String substring = l.substring(1);
                C15149k.m383a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                C14092n3.m2583b("userNumber", substring);
                C13915b3.m3055b("is_owner_of_verified_number", z);
                m27966b();
                this.f10969j.mo1341b();
                return;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        }
    }

    /* renamed from: a */
    public final void m27969a(AbstractC15107a<C14989s> aVar) {
        C14427a aVar2 = this.f10960a;
        String b = C14108o4.m2489b(this.f10961b + this.f10962c, this.f10963d);
        C15149k.m383a((Object) b, "UtilsTelephony.parseE164…ryCode + number, country)");
        aVar2.m1359a(b, new C4550b(aVar));
    }

    /* renamed from: a */
    public void m27968a(boolean z) {
        if (!z) {
            m27949j();
        } else {
            m27969a(new C4555g());
        }
    }

    /* renamed from: a */
    public final void m27967a(boolean z, boolean z2, int i) {
        int a = C13915b3.m3066a("second_verify_failed_count", 0) + 1;
        if (!z && (i == 4 || i == 1)) {
            C13915b3.m3048d("second_verify_failed_count", a);
        }
        C14289m.m1903a(2, z, a, z2, i);
    }

    /* renamed from: a */
    public final boolean m27975a() {
        if (UserProfile.m28128n() == null) {
            return false;
        }
        UserNumber b = UserNumber.m28148b();
        C15149k.m383a((Object) b, "UserNumber.getInstance()");
        if (b.m28149a() == null) {
            return false;
        }
        UserNumber b2 = UserNumber.m28148b();
        C15149k.m383a((Object) b2, "UserNumber.getInstance()");
        ArrayList<UserNumber> a = b2.m28149a();
        C15149k.m383a((Object) a, "list");
        int size = a.size();
        for (int i = 0; i < size; i++) {
            if (C14137r4.m2370h() && a.get(i).process_status == 2) {
                String str = a.get(i).number;
                if (C15149k.m384a((Object) str, (Object) (this.f10961b + this.f10962c))) {
                    this.f10969j.mo1343a();
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m27966b() {
        C14092n3.m2583b("verifying_country_code", "");
        C14092n3.m2583b("verifying_number", "");
        C13915b3.m3061a("sms_last_request_time");
    }

    /* renamed from: b */
    public final void m27964b(String str) {
        C15149k.m377b(str, "countryCode");
        this.f10961b = str;
    }

    /* renamed from: b */
    public final void m27963b(boolean z, boolean z2, int i) {
        int a = C13915b3.m3066a("first_verify_failed_count", 0) + 1;
        if (!z && (i == 4 || i == 1)) {
            C13915b3.m3048d("first_verify_failed_count", a);
        }
        C14289m.m1903a(1, z, a, z2, i);
    }

    /* renamed from: c */
    public void m27962c() {
    }

    /* renamed from: c */
    public final void m27960c(String str) {
        C15149k.m377b(str, "number");
        this.f10962c = str;
    }

    /* renamed from: d */
    public void m27959d() {
        m27948k();
    }

    /* renamed from: d */
    public final void m27957d(String str) {
        if (str == null) {
            str = "";
        }
        this.f10964e = str;
    }

    /* renamed from: e */
    public void m27954e(String str) {
        C15149k.m377b(str, "verifyCode");
        boolean z = C15149k.m384a((Object) str, (Object) this.f10966g) || m27952g();
        C14427a aVar = this.f10960a;
        String b = C14108o4.m2489b(this.f10961b + this.f10962c, this.f10963d);
        C15149k.m383a((Object) b, "UtilsTelephony.parseE164…ryCode + number, country)");
        aVar.m1361a(b, this.f10964e, str, z, new C4554f(z));
    }

    /* renamed from: e */
    public boolean m27956e() {
        return this.f10967h;
    }

    /* renamed from: f */
    public boolean m27953f() {
        return (System.currentTimeMillis() - C13915b3.m3065a("sms_last_request_time", 0L)) / ((long) 1000) < ((long) 300);
    }

    /* renamed from: g */
    public final boolean m27952g() {
        return C15149k.m384a((Object) C14108o4.m2474l(this.f10961b + this.f10962c), (Object) C14108o4.m2474l(C14108o4.m2484d()));
    }

    /* renamed from: h */
    public final void m27951h() {
        if (this.f10965f == null && C12810o.m5233l()) {
            AbstractC9143h<Void> h = C6731a.m21978a(this.f10968i).mo20413h();
            h.mo16023a(C4551c.f10973a);
            h.mo16024a(C4552d.f10974a);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.auth.api.phone.SMS_RETRIEVED");
            intentFilter.setPriority(Integer.MAX_VALUE);
            this.f10965f = new SmsReceiver();
            this.f10968i.registerReceiver(this.f10965f, intentFilter);
        }
        C12495d.m5972b().m5973a((String) null, true);
    }

    /* renamed from: i */
    public final void m27950i() {
        int a = C13915b3.m3066a("verify_report_cs_count", 0) + 1;
        C13915b3.m3048d("verify_report_cs_count", a);
        C14289m.m1903a(3, true, a, false, 0);
    }

    /* renamed from: j */
    public final void m27949j() {
        if (!m27975a()) {
            C14427a aVar = this.f10960a;
            String b = C14108o4.m2489b(this.f10961b + this.f10962c, this.f10963d);
            C15149k.m383a((Object) b, "UtilsTelephony.parseE164…ryCode + number, country)");
            aVar.m1360a(b, this.f10964e, new C4553e());
        }
    }

    /* renamed from: k */
    public final void m27948k() {
        SmsReceiver smsReceiver = this.f10965f;
        if (smsReceiver != null) {
            this.f10968i.unregisterReceiver(smsReceiver);
            this.f10965f = null;
        }
        C12495d.m5972b().m5973a((String) null, false);
    }
}
