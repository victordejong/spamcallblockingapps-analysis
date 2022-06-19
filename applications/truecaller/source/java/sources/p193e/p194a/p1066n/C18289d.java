package p193e.p194a.p1066n;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.backup.AfterRestoreBehaviorFlag;
import com.truecaller.backup.LanguageBackupItem;
import com.truecaller.settings.CallingSettings;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1079n5.AbstractC18493c;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1342w4.p1345t.p1346a.C21297c;
import p193e.p194a.p1342w4.p1345t.p1346a.C21299d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p417k.C8497f;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p424n.AbstractC8525d;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import q3.a.i0;
import s1.f0.h;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.n.d */
/* loaded from: classes5-dex2jar.jar:e/a/n/d.class */
public final class C18289d {

    /* renamed from: a */
    public final g f51715a;

    /* renamed from: b */
    public final g f51716b;

    /* renamed from: c */
    public final g f51717c;

    /* renamed from: d */
    public final g f51718d;

    /* renamed from: e */
    public final g f51719e;

    /* renamed from: f */
    public final Map<String, AbstractC18438v<?>> f51720f;

    /* renamed from: g */
    public final f f51721g;

    /* renamed from: e.a.n.d$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$b.class */
    public static final class C18290b extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC19230g f51722b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC19219a0 f51723c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18290b(AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0) {
            super(0);
            this.f51722b = abstractC19230g;
            this.f51723c = abstractC19219a0;
        }

        public Object invoke() {
            return Boolean.valueOf(this.f51722b.mo13794c() && this.f51723c.mo13825h("android.permission.SEND_SMS"));
        }
    }

    /* renamed from: e.a.n.d$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$c.class */
    public static final class C18291c implements AbstractC18438v<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6392i0 f51724a;

        public C18291c(AbstractC6392i0 abstractC6392i0) {
            this.f51724a = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof Boolean) {
                if (l.a(obj, getValue())) {
                    z = false;
                } else {
                    setValue(obj);
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "NotificationBlockedSms";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51724a.mo31225C2());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51724a.mo31175M2(bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$d.class */
    public static final class C18292d implements AbstractC18438v<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC18493c f51725a;

        public C18292d(AbstractC18493c abstractC18493c) {
            this.f51725a = abstractC18493c;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof Boolean) {
                if (l.a(obj, getValue())) {
                    z = false;
                } else {
                    setValue(obj);
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "backup";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51725a.mo14858c());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51725a.mo14859b(bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$e.class */
    public static final class C18293e implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51727b;

        public C18293e(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51727b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (obj instanceof Boolean) {
                    if (l.a(obj, getValue())) {
                        z = false;
                    } else {
                        setValue(obj);
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "SendGroupSMS";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51727b.mo31155Q2());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51727b.mo31134U3(bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$f.class */
    public static final class C18294f implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51729b;

        public C18294f(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51729b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15297a(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "AutoDownloadMMSSIM1";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51729b.mo31202H0(0));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51729b.mo31112Z0(0, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$g */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$g.class */
    public static final class C18295g implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51731b;

        public C18295g(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51731b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15296b(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "AutoDownloadMMSSIM2";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51731b.mo31202H0(1));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51731b.mo31112Z0(1, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$h */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$h.class */
    public static final class C18296h implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51733b;

        public C18296h(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51733b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15297a(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "AutoDownloadMMSRoamingSIM1";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51733b.mo31230B2(0));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51733b.mo31128W(0, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$i */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$i.class */
    public static final class C18297i implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51735b;

        public C18297i(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51735b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15296b(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "AutoDownloadMMSSRoamingIM2";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51735b.mo31230B2(1));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51735b.mo31128W(1, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$j */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$j.class */
    public static final class C18298j implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51737b;

        public C18298j(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51737b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15297a(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "SMSDeliveryReportsSIM1";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51737b.mo31004r1(0));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51737b.mo31090d(0, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$k */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$k.class */
    public static final class C18299k implements AbstractC18438v<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6392i0 f51739b;

        public C18299k(AbstractC6392i0 abstractC6392i0) {
            C18289d.this = r4;
            this.f51739b = abstractC6392i0;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (C18289d.m15295c(C18289d.this)) {
                z = false;
                if (C18289d.m15296b(C18289d.this)) {
                    z = false;
                    if (obj instanceof Boolean) {
                        if (l.a(obj, getValue())) {
                            z = false;
                        } else {
                            setValue(obj);
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "SMSDeliveryReportsSIM2";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51739b.mo31004r1(1));
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51739b.mo31090d(1, bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$l */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$l.class */
    public static final class C18300l implements AbstractC18438v<String> {
        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof String) {
                if (l.a(obj, getValue())) {
                    z = false;
                } else {
                    setValue(obj);
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "Theme";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getValue() {
            C15314a c15314a = C15314a.f43582g;
            return C15314a.m18938a().f43585a;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(String str) {
            String str2 = str;
            l.e(str2, "value");
            int hashCode = str2.hashCode();
            String str3 = "DARK";
            if (hashCode == -1922109952 ? !str2.equals("PITCH_BLACK") : hashCode == 2090870 ? !str2.equals("DARK") : hashCode != 1694867598 || !str2.equals("RAMADAN")) {
                str3 = "DEFAULT";
            }
            C15314a c15314a = C15314a.f43582g;
            AbstractC15317d m18935d = C15314a.m18935d(str3);
            C15314a.m18930i(m18935d);
            TrueApp m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
            m36032b0.mo10154s().mo12792B2().mo10143a(m18935d);
        }
    }

    /* renamed from: e.a.n.d$m */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$m.class */
    public static final class C18301m extends C18394n0 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC8541a f51740c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18301m(AbstractC8541a abstractC8541a, String str, AbstractC8541a abstractC8541a2) {
            super(str, abstractC8541a2);
            this.f51740c = abstractC8541a;
        }

        @Override // p193e.p194a.p1066n.AbstractC18454z0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.Presence;
        }
    }

    /* renamed from: e.a.n.d$n */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$n.class */
    public static final class C18302n implements AbstractC18438v<String> {

        /* renamed from: a */
        public final g f51741a = C25225a.m3978P1(new C18305c());

        /* renamed from: b */
        public final String f51742b = "Language";

        /* renamed from: d */
        public final /* synthetic */ k f51744d;

        /* renamed from: e */
        public final /* synthetic */ Context f51745e;

        /* renamed from: f */
        public final /* synthetic */ C8497f f51746f;

        /* renamed from: e.a.n.d$n$a */
        /* loaded from: classes5-dex2jar.jar:e/a/n/d$n$a.class */
        public static final class C18303a extends e.m.e.f0.a<LanguageBackupItem> {
        }

        @e(c = "com.truecaller.backup.BackupSettingsRegistry$settingsMap$20$restore$1", f = "BackupSettingsRegistry.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.n.d$n$b */
        /* loaded from: classes5-dex2jar.jar:e/a/n/d$n$b.class */
        public static final class C18304b extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f51748f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18304b(c0 c0Var, d dVar) {
                super(2, dVar);
                C18302n.this = r5;
                this.f51748f = c0Var;
            }

            /* renamed from: i */
            public final d<s> m15292i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C18304b(this.f51748f, dVar);
            }

            /* renamed from: k */
            public final Object m15291k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C18302n c18302n = C18302n.this;
                c0 c0Var = this.f51748f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                Object obj3 = c0Var.a;
                if (((Locale) obj3) != null) {
                    C8502h.m28436b(c18302n.f51745e, (Locale) obj3);
                }
                C8602m.f26443o = null;
                C8602m.f26444p = null;
                return sVar;
            }

            /* renamed from: s */
            public final Object m15290s(Object obj) {
                C25225a.m3932a3(obj);
                Locale locale = (Locale) this.f51748f.a;
                if (locale != null) {
                    C8502h.m28436b(C18302n.this.f51745e, locale);
                }
                C8602m.f26443o = null;
                C8602m.f26444p = null;
                return s.a;
            }
        }

        /* renamed from: e.a.n.d$n$c */
        /* loaded from: classes5-dex2jar.jar:e/a/n/d$n$c.class */
        public static final class C18305c extends m implements a<Locale> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18305c() {
                super(0);
                C18302n.this = r4;
            }

            public Object invoke() {
                return C18302n.this.f51746f.m28443f();
            }
        }

        public C18302n(k kVar, Context context, C8497f c8497f) {
            C18289d.this = r6;
            this.f51744d = kVar;
            this.f51745e = context;
            this.f51746f = c8497f;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z;
            Locale locale;
            List list;
            if (!(obj instanceof String) || l.a(obj, getValue())) {
                z = false;
            } else {
                setValue(obj);
                z = true;
            }
            if (!z) {
                return false;
            }
            k kVar = this.f51744d;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
            Type type = new C18303a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g((String) obj, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            LanguageBackupItem languageBackupItem = (LanguageBackupItem) g;
            c0 c0Var = new c0();
            if (languageBackupItem.getAuto()) {
                locale = (Locale) this.f51741a.getValue();
            } else {
                String m18647d = C15571h.m18647d("language");
                l.d(m18647d, "Settings.get(Settings.LANGUAGE_ISO)");
                List f = new h(AnalyticsConstants.DELIMITER_MAIN).f(m18647d, 0);
                if (!f.isEmpty()) {
                    ListIterator listIterator = f.listIterator(f.size());
                    while (listIterator.hasPrevious()) {
                        if (!(((String) listIterator.previous()).length() == 0)) {
                            list = s1.u.i.K0(f, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                list = s1.u.s.a;
                Object[] array = list.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr = (String[]) array;
                locale = strArr.length == 2 ? new Locale(strArr[0], strArr[1]) : new Locale(m18647d);
            }
            c0Var.a = locale;
            s1.a.a.a.v0.f.d.b3(C18289d.this.f51721g, new C18304b(c0Var, null));
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.Language;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return this.f51742b;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getValue() {
            boolean m18643h = C15571h.m18643h("languageAuto");
            String m18647d = C15571h.m18647d("language");
            l.d(m18647d, "Settings.get(Settings.LANGUAGE_ISO)");
            String m = this.f51744d.m(new LanguageBackupItem(m18643h, m18647d));
            l.d(m, "gson.toJson(LanguageBack…nguage, languageISOCode))");
            return m;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(String str) {
            String str2 = str;
            l.e(str2, "value");
            k kVar = this.f51744d;
            Type type = new C18317d0().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(str2, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            LanguageBackupItem languageBackupItem = (LanguageBackupItem) g;
            C15571h.m18626y("languageAuto", languageBackupItem.getAuto());
            if (!languageBackupItem.getAuto()) {
                C15571h.m18627x("language", languageBackupItem.getLanguageISOCode());
                return;
            }
            Locale locale = (Locale) this.f51741a.getValue();
            if (locale == null) {
                return;
            }
            C15576b m18677a = C15565c.m18677a(locale);
            l.d(m18677a, "LanguageDao.getLanguage(locale)");
            C15571h.m18627x("language", m18677a.f44042j.f26267b);
        }
    }

    /* renamed from: e.a.n.d$o */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$o.class */
    public static final class C18306o extends C18394n0 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC8541a f51750c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18306o(AbstractC8541a abstractC8541a, String str, AbstractC8541a abstractC8541a2) {
            super(str, abstractC8541a2);
            this.f51750c = abstractC8541a;
        }

        @Override // p193e.p194a.p1066n.C18394n0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z;
            if (!(obj instanceof Boolean) || (mo14935a() && l.a(obj, getValue()))) {
                z = false;
            } else {
                setValue(obj);
                z = true;
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18454z0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.Backup;
        }
    }

    /* renamed from: e.a.n.d$p */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$p.class */
    public static final class C18307p extends C18381m0 {

        /* renamed from: d */
        public final /* synthetic */ CallingSettings f51752d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18307p(CallingSettings callingSettings, String str, CallingSettings callingSettings2) {
            super(str, callingSettings2);
            C18289d.this = r5;
            this.f51752d = callingSettings;
        }

        @Override // p193e.p194a.p1066n.C18381m0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            C18289d c18289d = C18289d.this;
            return C18289d.m15293e(c18289d, this, obj, C18289d.m15294d(c18289d));
        }
    }

    /* renamed from: e.a.n.d$q */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$q.class */
    public static final class C18308q implements AbstractC18438v<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13706b f51753a;

        /* renamed from: b */
        public final /* synthetic */ Context f51754b;

        public C18308q(AbstractC13706b abstractC13706b, Context context) {
            this.f51753a = abstractC13706b;
            this.f51754b = context;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return this.f51753a.mo21251r();
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof Boolean) {
                if (!mo14935a() || !l.a(obj, getValue())) {
                    setValue(obj);
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return null;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "InCallUI";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51753a.mo21262g());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51753a.mo21264e(bool.booleanValue());
            this.f51753a.mo21252q(this.f51754b);
        }
    }

    /* renamed from: e.a.n.d$r */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$r.class */
    public static final class C18309r extends C18394n0 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC8541a f51755c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18309r(AbstractC8541a abstractC8541a, String str, AbstractC8541a abstractC8541a2) {
            super(str, abstractC8541a2);
            this.f51755c = abstractC8541a;
        }

        @Override // p193e.p194a.p1066n.AbstractC18454z0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.Presence;
        }
    }

    /* renamed from: e.a.n.d$s */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$s.class */
    public static final class C18310s extends C18340h2 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC8531g f51756c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC8541a f51757d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18310s(AbstractC8531g abstractC8531g, AbstractC8541a abstractC8541a, String str, AbstractC8541a abstractC8541a2) {
            super(str, abstractC8541a2);
            this.f51756c = abstractC8531g;
            this.f51757d = abstractC8541a;
        }

        @Override // p193e.p194a.p1066n.C18340h2, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z;
            if (!(obj instanceof String) || (mo14935a() && l.a(obj, getValue()))) {
                z = false;
            } else {
                setValue(obj);
                z = true;
            }
            if (z) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                this.f51756c.mo15424c(AbstractC8525d.C8528c.f26320a, false, null, s1.u.i.I(new s1.k[]{new s1.k("auto_accept", (String) obj)}), false, null);
            }
            return z;
        }
    }

    /* renamed from: e.a.n.d$t */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$t.class */
    public static final class C18311t extends C18397o0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18311t(String str) {
            super(str);
            C18289d.this = r4;
        }

        @Override // p193e.p194a.p1066n.C18397o0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            C18289d c18289d = C18289d.this;
            return C18289d.m15293e(c18289d, this, obj, C18289d.m15294d(c18289d));
        }
    }

    /* renamed from: e.a.n.d$u */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$u.class */
    public static final class C18312u extends C18381m0 {

        /* renamed from: d */
        public final /* synthetic */ CallingSettings f51760d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18312u(CallingSettings callingSettings, String str, CallingSettings callingSettings2) {
            super(str, callingSettings2);
            C18289d.this = r5;
            this.f51760d = callingSettings;
        }

        @Override // p193e.p194a.p1066n.C18381m0, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            C18289d c18289d = C18289d.this;
            return C18289d.m15293e(c18289d, this, obj, C18289d.m15294d(c18289d));
        }
    }

    /* renamed from: e.a.n.d$v */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$v.class */
    public static final class C18313v extends C18344i2 {
        public C18313v(String str) {
            super(str);
        }

        @Override // p193e.p194a.p1066n.C18344i2, p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z;
            if (!(obj != null ? obj instanceof String : true) || (mo14935a() && l.a(obj, getValue()))) {
                z = false;
            } else {
                setValue(obj);
                z = true;
            }
            if (z) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                C21299d.m9929c((String) obj);
                C21297c.m9935a();
                return true;
            }
            return false;
        }
    }

    /* renamed from: e.a.n.d$w */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$w.class */
    public static final class C18314w implements AbstractC18438v<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14840m f51761a;

        public C18314w(AbstractC14840m abstractC14840m) {
            this.f51761a = abstractC14840m;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof Boolean) {
                if (l.a(obj, getValue())) {
                    z = false;
                } else {
                    setValue(obj);
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.FiltersUpload;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "BlockSpammers";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51761a.mo19547u());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51761a.mo19557k(bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$x */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$x.class */
    public static final class C18315x implements AbstractC18438v<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14840m f51762a;

        public C18315x(AbstractC14840m abstractC14840m) {
            this.f51762a = abstractC14840m;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: a */
        public boolean mo14935a() {
            return true;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            boolean z = false;
            if (obj instanceof Boolean) {
                if (l.a(obj, getValue())) {
                    z = false;
                } else {
                    setValue(obj);
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: c */
        public AfterRestoreBehaviorFlag mo14934c() {
            return AfterRestoreBehaviorFlag.FiltersUpload;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public String getKey() {
            return "BlockHiddenNumbers";
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public Boolean getValue() {
            return Boolean.valueOf(this.f51762a.mo19550r());
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        public void setValue(Boolean bool) {
            this.f51762a.mo19558j(bool.booleanValue());
        }
    }

    /* renamed from: e.a.n.d$y */
    /* loaded from: classes5-dex2jar.jar:e/a/n/d$y.class */
    public static final class C18316y extends C18343i1 {

        /* renamed from: d */
        public final /* synthetic */ CallingSettings f51764d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18316y(CallingSettings callingSettings, String str, CallingSettings callingSettings2) {
            super(str, callingSettings2);
            C18289d.this = r5;
            this.f51764d = callingSettings;
        }

        @Override // p193e.p194a.p1066n.AbstractC18438v
        /* renamed from: b */
        public boolean mo14983b(Object obj) {
            if (!(obj instanceof Integer) || l.a(obj, Integer.valueOf(Integer.valueOf(this.f52082a.getInt(this.f51804b, 0)).intValue()))) {
                return false;
            }
            Number number = (Number) obj;
            if ((this.f51764d.mo8950Q1(number.intValue()) == CallingSettings.BlockMethod.Mute) && !((Boolean) C18289d.this.f51719e.getValue()).booleanValue()) {
                return false;
            }
            this.f52082a.putInt(this.f51804b, number.intValue());
            return true;
        }
    }

    @Inject
    public C18289d(@Named("UI") f fVar, Context context, k kVar, AbstractC19230g abstractC19230g, AbstractC8541a abstractC8541a, AbstractC8426f abstractC8426f, CallingSettings callingSettings, AbstractC14840m abstractC14840m, AbstractC6392i0 abstractC6392i0, AbstractC13497p abstractC13497p, AbstractC19219a0 abstractC19219a0, AbstractC8531g abstractC8531g, AbstractC18493c abstractC18493c, AbstractC10925a abstractC10925a, C8497f c8497f, AbstractC13706b abstractC13706b) {
        l.e(fVar, "uiContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(kVar, "gson");
        l.e(abstractC19230g, "deviceInfoUtils");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8426f, "regionUtils");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC6392i0, "messagingSettings");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8531g, "profileRepository");
        l.e(abstractC18493c, "ugcManager");
        l.e(abstractC10925a, "buildHelper");
        l.e(c8497f, "languageUtil");
        l.e(abstractC13706b, "inCallUI");
        this.f51721g = fVar;
        this.f51715a = C25225a.m3978P1(new a(3, abstractC19219a0));
        this.f51716b = C25225a.m3978P1(new a(1, abstractC13497p));
        this.f51717c = C25225a.m3978P1(new a(2, abstractC13497p));
        this.f51718d = C25225a.m3978P1(new C18290b(abstractC19230g, abstractC19219a0));
        this.f51719e = C25225a.m3978P1(new a(0, abstractC19219a0));
        C18301m c18301m = new C18301m(abstractC8541a, "availability_disabled", abstractC8541a);
        C18309r c18309r = new C18309r(abstractC8541a, "flash_disabled", abstractC8541a);
        C18344i2 c18344i2 = new C18344i2("callLogTapBehavior");
        C18340h2 c18340h2 = new C18340h2("profileAcceptAuto", abstractC8541a);
        C18310s c18310s = new C18310s(abstractC8531g, abstractC8541a, "profileAcceptAuto", abstractC8541a);
        C18397o0 c18397o0 = new C18397o0("clipboardSearchEnabled");
        C18397o0 c18397o02 = new C18397o0("enhancedNotificationsEnabled");
        C18311t c18311t = new C18311t("enhancedNotificationsEnabled");
        C18344i2 c18344i22 = new C18344i2("dialpad_feedback_index_str");
        C18312u c18312u = new C18312u(callingSettings, "showMissedCallsNotifications", callingSettings);
        C18397o0 c18397o03 = new C18397o0("showMissedCallReminders");
        C18313v c18313v = new C18313v("t9_lang");
        C18381m0 c18381m0 = new C18381m0("enabledCallerIDforPB", callingSettings);
        C18381m0 c18381m02 = new C18381m0("afterCall", callingSettings);
        C18336g2 c18336g2 = new C18336g2("speed_dial_2", callingSettings);
        C18336g2 c18336g22 = new C18336g2("speed_dial_3", callingSettings);
        C18336g2 c18336g23 = new C18336g2("speed_dial_4", callingSettings);
        C18336g2 c18336g24 = new C18336g2("speed_dial_5", callingSettings);
        C18336g2 c18336g25 = new C18336g2("speed_dial_6", callingSettings);
        C18336g2 c18336g26 = new C18336g2("speed_dial_7", callingSettings);
        C18336g2 c18336g27 = new C18336g2("speed_dial_8", callingSettings);
        C18336g2 c18336g28 = new C18336g2("speed_dial_9", callingSettings);
        C18314w c18314w = new C18314w(abstractC14840m);
        C18315x c18315x = new C18315x(abstractC14840m);
        C18316y c18316y = new C18316y(callingSettings, "blockCallMethod", callingSettings);
        C18381m0 c18381m03 = new C18381m0("blockCallNotification", callingSettings);
        C18291c c18291c = new C18291c(abstractC6392i0);
        C18292d c18292d = new C18292d(abstractC18493c);
        C18293e c18293e = new C18293e(abstractC6392i0);
        C18294f c18294f = new C18294f(abstractC6392i0);
        C18295g c18295g = new C18295g(abstractC6392i0);
        C18296h c18296h = new C18296h(abstractC6392i0);
        C18297i c18297i = new C18297i(abstractC6392i0);
        C18298j c18298j = new C18298j(abstractC6392i0);
        C18299k c18299k = new C18299k(abstractC6392i0);
        C18300l c18300l = new C18300l();
        C18351j1 c18351j1 = new C18351j1("merge_by");
        C18397o0 c18397o04 = new C18397o0("showFrequentlyCalledContacts");
        C18302n c18302n = new C18302n(kVar, context, c8497f);
        C18363k1 c18363k1 = new C18363k1("key_backup_frequency_hours", abstractC8541a);
        C18306o c18306o = new C18306o(abstractC8541a, "backup_enabled", abstractC8541a);
        C18394n0 c18394n0 = new C18394n0("backup_videos_enabled", abstractC8541a);
        C18381m0 c18381m04 = new C18381m0("madeCallsFromCallLog", callingSettings);
        C18307p c18307p = new C18307p(callingSettings, "whatsAppCallsEnabled", callingSettings);
        C18308q c18308q = new C18308q(abstractC13706b, context);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < 45; i++) {
            AbstractC18438v abstractC18438v = new AbstractC18438v[]{c18301m, c18309r, c18344i2, c18340h2, c18310s, c18397o0, c18397o02, c18311t, c18344i22, c18312u, c18397o03, c18313v, c18381m0, c18381m02, c18336g2, c18336g22, c18336g23, c18336g24, c18336g25, c18336g26, c18336g27, c18336g28, c18314w, c18315x, c18316y, c18381m03, c18291c, c18292d, c18293e, c18294f, c18295g, c18296h, c18297i, c18298j, c18299k, c18300l, c18351j1, c18397o04, c18302n, c18363k1, c18306o, c18394n0, c18381m04, c18307p, c18308q}[i];
            linkedHashMap.put(abstractC18438v.getKey(), abstractC18438v);
        }
        this.f51720f = linkedHashMap;
    }

    /* renamed from: a */
    public static final boolean m15297a(C18289d c18289d) {
        return ((Boolean) c18289d.f51716b.getValue()).booleanValue();
    }

    /* renamed from: b */
    public static final boolean m15296b(C18289d c18289d) {
        return ((Boolean) c18289d.f51717c.getValue()).booleanValue();
    }

    /* renamed from: c */
    public static final boolean m15295c(C18289d c18289d) {
        return ((Boolean) c18289d.f51718d.getValue()).booleanValue();
    }

    /* renamed from: d */
    public static final boolean m15294d(C18289d c18289d) {
        return ((Boolean) c18289d.f51715a.getValue()).booleanValue();
    }

    /* renamed from: e */
    public static final boolean m15293e(C18289d c18289d, AbstractC18438v abstractC18438v, Object obj, boolean z) {
        boolean z2;
        Objects.requireNonNull(c18289d);
        if (!(obj instanceof Boolean) || l.a(obj, (Boolean) abstractC18438v.getValue()) || (((Boolean) obj).booleanValue() && !z)) {
            z2 = false;
        } else {
            abstractC18438v.setValue(obj);
            z2 = true;
        }
        return z2;
    }
}
