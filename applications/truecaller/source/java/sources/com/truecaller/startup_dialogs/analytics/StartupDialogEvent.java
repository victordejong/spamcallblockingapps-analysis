package com.truecaller.startup_dialogs.analytics;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17547g2;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/startup_dialogs/analytics/StartupDialogEvent.class */
public final class StartupDialogEvent implements AbstractC19549v {

    /* renamed from: a */
    public final Type f14936a;

    /* renamed from: b */
    public final Action f14937b;

    /* renamed from: c */
    public final String f14938c;

    /* renamed from: d */
    public final String f14939d;

    /* renamed from: e */
    public final Boolean f14940e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "ClickedPositive", "ClickedNegative", "Cancelled", "Shown", "Enabled", "Disabled", "Snooze", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes12-dex2jar.jar:com/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action.class */
    public enum Action {
        ClickedPositive("PositiveBtnClicked"),
        ClickedNegative("NegativeBtnClicked"),
        Cancelled("DialogCancelled"),
        Shown("Shown"),
        Enabled("Enabled"),
        Disabled("Disabled"),
        Snooze("Snooze");
        
        private final String value;

        Action(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b'\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(¨\u0006)"}, d2 = {"Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "WhatsNew", "SoftwareUpdate", "MdauPromo", "FillProfile", "MissedCalls", "WhatsAppCallsAvailable", "WhatsAppCallsEnable", "DrawOverlay", "RingSilent", "AccessLocation", "Backup", "BackupSmsPermission", "Restore", "Onboarding", "CallRecOnboarding", "PinShortcutRequest", "TcpayPromo", "CallRecordingDisabled", "DefaultDialerPromo", "VideoCallerIdPromo", "VideoCallerIdUpdatePromo", "CallsMessagesSeparatelyPromo", "NewInboxPromo", "CallRecordingDefaultDialerPromo", "RegionC", "CreditWhatsNew", "CreditPromoBanner", "WhatsNewGroupVoice", "WhatsNewVideoCallerId", "ContextCallNewUserPromo", "ContextCallReminderPromo", "PremiumBlockingPrompt", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes12-dex2jar.jar:com/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type.class */
    public enum Type {
        WhatsNew("WhatsNew"),
        SoftwareUpdate("SoftwareUpdate"),
        MdauPromo("SpamProtection"),
        FillProfile("FillProfile"),
        MissedCalls("MissedCalls"),
        WhatsAppCallsAvailable("WhatsAppAvailable"),
        WhatsAppCallsEnable("WhatsAppEnable"),
        DrawOverlay("DrawOverlay"),
        RingSilent("RingSilent"),
        AccessLocation("AccessLocation"),
        Backup("Backup"),
        BackupSmsPermission("BackupSmsPermission"),
        Restore("Restore"),
        Onboarding("Onboarding"),
        CallRecOnboarding("CallRecOnboarding"),
        PinShortcutRequest("PinShortcutRequest"),
        TcpayPromo("TCPayPromo"),
        CallRecordingDisabled("CallRecDisabled"),
        DefaultDialerPromo("DefaultDialerPromo"),
        VideoCallerIdPromo("VideoCallerIdPromo"),
        VideoCallerIdUpdatePromo("VideoCallerIdUpdatePromo"),
        CallsMessagesSeparatelyPromo("CallsMessagesSeparatelyPromo"),
        NewInboxPromo("NewInboxPromo"),
        CallRecordingDefaultDialerPromo("CallRecordingDefaultDialerPromo"),
        RegionC("RegionC"),
        CreditWhatsNew("CreditWhatsNew"),
        CreditPromoBanner("CreditPromoBanner"),
        WhatsNewGroupVoice("WhatsNewGroupVoice"),
        WhatsNewVideoCallerId("WhatsNewVideoCallerId"),
        ContextCallNewUserPromo("ContextCallHomeNewUserPromo"),
        ContextCallReminderPromo("ContextCallHomeReminderPromo"),
        PremiumBlockingPrompt("PremiumBlockPrompt");
        
        private final String value;

        Type(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public StartupDialogEvent(Type type, Action action, String str, String str2, Boolean bool, int i) {
        str2 = (i & 8) != 0 ? null : str2;
        bool = (i & 16) != 0 ? null : bool;
        l.e(type, "type");
        l.e(action, "action");
        this.f14936a = type;
        this.f14937b = action;
        this.f14938c = null;
        this.f14939d = str2;
        this.f14940e = bool;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("StartupDialog");
        c19504b.m13263d("Type", this.f14936a.getValue());
        c19504b.m13263d("Action", this.f14937b.getValue());
        String str = this.f14939d;
        if (str != null) {
            c19504b.m13263d("Context", str);
        }
        Boolean bool = this.f14940e;
        if (bool != null) {
            c19504b.m13262e("NewUser", bool.booleanValue());
        }
        String str2 = this.f14938c;
        if (str2 != null) {
            c19504b.m13263d("SubAction", str2);
        }
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "with(AnalyticsEvent.Buil…        build()\n        }");
        AbstractC19580x.C19581a c19581a = new AbstractC19580x.C19581a(m13266a);
        C17547g2.C17549b m15957a = C17547g2.m15957a();
        m15957a.m15952e(this.f14936a.getValue());
        m15957a.m15955b(this.f14937b.getValue());
        m15957a.m15953d(this.f14938c);
        m15957a.m15954c(this.f14939d);
        Boolean bool2 = this.f14940e;
        m15957a.validate(m15957a.fields()[6], bool2);
        m15957a.f49358e = bool2;
        m15957a.fieldSetFlags()[6] = true;
        return new AbstractC19580x.C19585e(i.z0(new AbstractC19580x[]{c19581a, new AbstractC19580x.C19584d(m15957a.build())}));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof StartupDialogEvent)) {
                return false;
            }
            StartupDialogEvent startupDialogEvent = (StartupDialogEvent) obj;
            return l.a(this.f14936a, startupDialogEvent.f14936a) && l.a(this.f14937b, startupDialogEvent.f14937b) && l.a(this.f14938c, startupDialogEvent.f14938c) && l.a(this.f14939d, startupDialogEvent.f14939d) && l.a(this.f14940e, startupDialogEvent.f14940e);
        }
        return true;
    }

    public int hashCode() {
        Type type = this.f14936a;
        int i = 0;
        int hashCode = type != null ? type.hashCode() : 0;
        Action action = this.f14937b;
        int hashCode2 = action != null ? action.hashCode() : 0;
        String str = this.f14938c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.f14939d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        Boolean bool = this.f14940e;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StartupDialogEvent(type=");
        m8728C.append(this.f14936a);
        m8728C.append(", action=");
        m8728C.append(this.f14937b);
        m8728C.append(", subAction=");
        m8728C.append(this.f14938c);
        m8728C.append(", context=");
        m8728C.append(this.f14939d);
        m8728C.append(", newUser=");
        m8728C.append(this.f14940e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
