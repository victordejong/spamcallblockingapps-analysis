package p193e.p194a.p1049l4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.api.services.presence.p139v1.models.CallContext;
import com.truecaller.api.services.presence.p139v1.models.CovidMedicalSupply;
import com.truecaller.api.services.presence.p139v1.models.Flash;
import com.truecaller.api.services.presence.p139v1.models.InstantMessaging;
import com.truecaller.api.services.presence.p139v1.models.Payment;
import com.truecaller.api.services.presence.p139v1.models.Premium;
import com.truecaller.api.services.presence.p139v1.models.VideoCallerID;
import com.truecaller.api.services.presence.p139v1.models.Voip;
import com.truecaller.presence.C4368R;
import java.io.Serializable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.C8602m;
import s1.f0.p;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l4.e */
/* loaded from: classes12-dex2jar.jar:e/a/l4/e.class */
public final class C17409e implements Serializable {

    /* renamed from: a */
    public final String f48754a;

    /* renamed from: b */
    public final Availability f48755b;

    /* renamed from: c */
    public final Flash f48756c;

    /* renamed from: d */
    public final b f48757d;

    /* renamed from: e */
    public final InstantMessaging f48758e;

    /* renamed from: f */
    public final Voip f48759f;

    /* renamed from: g */
    public final Payment f48760g;

    /* renamed from: h */
    public final transient b f48761h;

    /* renamed from: i */
    public final Premium f48762i;

    /* renamed from: j */
    public final CallContext f48763j;

    /* renamed from: k */
    public final CovidMedicalSupply f48764k;

    /* renamed from: l */
    public final VideoCallerID f48765l;

    /* renamed from: e.a.l4.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/e$a.class */
    public static final class C17410a {

        /* renamed from: a */
        public Availability f48766a;

        /* renamed from: b */
        public Flash f48767b;

        /* renamed from: c */
        public b f48768c;

        /* renamed from: d */
        public InstantMessaging f48769d;

        /* renamed from: e */
        public Voip f48770e;

        /* renamed from: f */
        public Payment f48771f;

        /* renamed from: g */
        public Premium f48772g;

        /* renamed from: h */
        public CallContext f48773h;

        /* renamed from: i */
        public CovidMedicalSupply f48774i;

        /* renamed from: j */
        public VideoCallerID f48775j;

        /* renamed from: k */
        public String f48776k;

        public C17410a(String str) {
            l.e(str, "number");
            this.f48776k = str;
        }

        /* renamed from: a */
        public final C17409e m16133a() {
            return new C17409e(this, null);
        }
    }

    public C17409e(C17410a c17410a, f fVar) {
        this.f48754a = c17410a.f48776k;
        this.f48755b = c17410a.f48766a;
        this.f48756c = c17410a.f48767b;
        this.f48757d = c17410a.f48768c;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        this.f48761h = bVar;
        this.f48758e = c17410a.f48769d;
        this.f48759f = c17410a.f48770e;
        this.f48760g = c17410a.f48771f;
        this.f48762i = c17410a.f48772g;
        this.f48763j = c17410a.f48773h;
        this.f48764k = c17410a.f48774i;
        this.f48765l = c17410a.f48775j;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01aa A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Collection<p193e.p194a.p1049l4.C17409e> m16137b(com.truecaller.api.services.presence.p139v1.GetPresenceResponse r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17409e.m16137b(com.truecaller.api.services.presence.v1.GetPresenceResponse, boolean):java.util.Collection");
    }

    /* renamed from: d */
    public static String m16135d(C17409e c17409e, Context context, boolean z, int i) {
        String str;
        Availability.Status status;
        b bVar;
        if ((i & 2) != 0) {
            z = true;
        }
        Objects.requireNonNull(c17409e);
        l.e(context, AnalyticsConstants.CONTEXT);
        Availability availability = c17409e.f48755b;
        if (availability != null && availability.getStatus() != null && (status = c17409e.f48755b.getStatus()) != null) {
            int ordinal = status.ordinal();
            if (ordinal == 1) {
                str = (!z || (bVar = c17409e.f48757d) == null) ? context.getString(C4368R.string.availability_available) : context.getString(C4368R.string.availability_available_last_seen_time_fmt, C8602m.m28248j(context, ((e) bVar).a, TimeUnit.MILLISECONDS));
                l.d(str, "if (showLastSeen && last…g.availability_available)");
            } else if (ordinal == 2) {
                Availability.Context context2 = c17409e.f48755b.getContext();
                if (context2 != null) {
                    int ordinal2 = context2.ordinal();
                    if (ordinal2 == 1) {
                        str = context.getString(C4368R.string.availability_busy_call);
                        l.d(str, "context.getString(R.string.availability_busy_call)");
                    } else if (ordinal2 == 3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(context.getString(C4368R.string.availability_busy_sleep));
                        if (z && c17409e.f48757d != null) {
                            sb.append(". ");
                            sb.append(context.getString(C4368R.string.availability_available_last_seen_time_fmt, C8602m.m28248j(context, ((e) c17409e.f48757d).a, TimeUnit.MILLISECONDS)));
                        }
                        str = sb.toString();
                        l.d(str, "when (availability.conte…ility_busy)\n            }");
                    }
                }
                str = context.getString(C4368R.string.availability_busy);
                l.d(str, "when (availability.conte…ility_busy)\n            }");
            }
            return str;
        }
        str = "";
        return str;
    }

    /* renamed from: a */
    public final C17410a m16138a() {
        l.e(this, "presence");
        C17410a c17410a = new C17410a(this.f48754a);
        c17410a.f48766a = this.f48755b;
        c17410a.f48767b = this.f48756c;
        c17410a.f48768c = this.f48757d;
        return c17410a;
    }

    /* renamed from: c */
    public final String m16136c(Context context) {
        return m16135d(this, context, false, 2);
    }

    /* renamed from: e */
    public final boolean m16134e() {
        Availability availability = this.f48755b;
        return availability != null && (availability.getStatus() == Availability.Status.AVAILABLE || this.f48755b.getStatus() == Availability.Status.BUSY);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || (true ^ l.a(C17409e.class, obj.getClass()))) {
            return false;
        }
        if (!(obj instanceof C17409e)) {
            obj = null;
        }
        C17409e c17409e = (C17409e) obj;
        String str = this.f48754a;
        String str2 = null;
        if (c17409e != null) {
            str2 = c17409e.f48754a;
        }
        return l.a(str, str2);
    }

    public int hashCode() {
        return this.f48754a.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Presence{\nNumber=");
        sb.append(this.f48754a != null ? AnalyticsConstants.NULL : "<non-null number>");
        l.d(sb, "append(value)");
        p.e(sb);
        sb.append("Availability");
        if (this.f48755b == null) {
            sb.append("=null");
            l.d(sb, "append(value)");
            p.e(sb);
        } else {
            sb.append(".Status=");
            l.d(sb, "append(\".Status=\")");
            sb.append(this.f48755b.getStatus().name());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("Availability.Context=");
            l.d(sb, "append(\"Availability.Context=\")");
            sb.append(this.f48755b.getContext().name());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48756c != null) {
            sb.append("Flash.isEnabled=");
            l.d(sb, "append(\"Flash.isEnabled=\")");
            sb.append(this.f48756c.getEnabled());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("Flash.version=");
            l.d(sb, "append(\"Flash.version=\")");
            sb.append(this.f48756c.getVersion());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48757d != null) {
            sb.append("LastSeen=");
            l.d(sb, "append(\"LastSeen=\")");
            sb.append(((e) this.f48757d).a);
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48759f != null) {
            sb.append("VoIP.isDisabled=");
            l.d(sb, "append(\"VoIP.isDisabled=\")");
            sb.append(this.f48759f.getDisabled());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("VoIP.version=");
            l.d(sb, "append(\"VoIP.version=\")");
            sb.append(this.f48759f.getVersion());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48760g != null) {
            sb.append("Payment.isEnabled=");
            l.d(sb, "append(\"Payment.isEnabled=\")");
            sb.append(this.f48760g.getEnabled());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("Payment.lastTxnTimeSeconds=");
            l.d(sb, "append(\"Payment.lastTxnTimeSeconds=\")");
            sb.append(this.f48760g.getLastTxn());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("Payment.version=");
            l.d(sb, "append(\"Payment.version=\")");
            sb.append(this.f48760g.getVersion());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48762i != null) {
            sb.append("Premium.level=");
            l.d(sb, "append(\"Premium.level=\")");
            sb.append(this.f48762i.getLevel());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("Premium.scope=");
            l.d(sb, "append(\"Premium.scope=\")");
            sb.append(this.f48762i.getScope());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48763j != null) {
            sb.append("CallContext.isDisabled=");
            l.d(sb, "append(\"CallContext.isDisabled=\")");
            sb.append(this.f48763j.getDisabled());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("CallContext.version=");
            l.d(sb, "append(\"CallContext.version=\")");
            sb.append(this.f48763j.getVersion());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        if (this.f48764k != null) {
            sb.append("CovidMedicalSupply.isDisabled=");
            l.d(sb, "append(\"CovidMedicalSupply.isDisabled=\")");
            sb.append(this.f48764k.getEnabled());
            l.d(sb, "append(value)");
            p.e(sb);
            sb.append("CovidMedicalSupply.list=");
            l.d(sb, "append(\"CovidMedicalSupply.list=\")");
            sb.append(this.f48764k.getItemsList());
            l.d(sb, "append(value)");
            p.e(sb);
        }
        StringBuilder m8728C = C22128a.m8728C("CheckTime=");
        m8728C.append(((e) this.f48761h).a);
        sb.append(m8728C.toString());
        l.d(sb, "append(value)");
        p.e(sb);
        sb.append("}");
        String sb2 = sb.toString();
        l.d(sb2, "with(StringBuilder(\"Pres…\n        toString()\n    }");
        return sb2;
    }
}
