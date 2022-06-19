package p193e.p194a.p195a.p284w0;

import android.util.Patterns;
import android.webkit.URLUtil;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import javax.inject.Inject;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.p219p8.C5665g;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.p250a0.C6657c;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.a0;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.w0.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/w0/c.class */
public final class C7292c implements AbstractC7290a {

    /* renamed from: a */
    public final AbstractC7293d f23272a;

    /* renamed from: b */
    public final AbstractC19462a f23273b;

    /* renamed from: c */
    public final AbstractC13497p f23274c;

    /* renamed from: d */
    public final C8601l0 f23275d;

    /* renamed from: e */
    public final AbstractC19510i0 f23276e;

    /* renamed from: f */
    public final AbstractC18951b0 f23277f;

    /* renamed from: g */
    public final AbstractC19219a0 f23278g;

    @Inject
    public C7292c(AbstractC7293d abstractC7293d, AbstractC19462a abstractC19462a, AbstractC13497p abstractC13497p, C8601l0 c8601l0, AbstractC19510i0 abstractC19510i0, AbstractC18951b0 abstractC18951b0, AbstractC19219a0 abstractC19219a0, C20592g c20592g) {
        l.e(abstractC7293d, "repository");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13497p, "multisimManager");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC19510i0, "messageAnalytics");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(c20592g, "featuresRegistry");
        this.f23272a = abstractC7293d;
        this.f23273b = abstractC19462a;
        this.f23274c = abstractC13497p;
        this.f23275d = c8601l0;
        this.f23276e = abstractC19510i0;
        this.f23277f = abstractC18951b0;
        this.f23278g = abstractC19219a0;
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: a */
    public void mo29847a(boolean z, int i) {
        LinkedHashMap m8655X = C22128a.m8655X("ScheduledMessageSend", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String m29836l = m29836l(i);
        l.e("messageType", AnalyticsConstants.NAME);
        l.e(m29836l, "value");
        m8655X.put("messageType", m29836l);
        String str = z ? AnalyticsConstants.SUCCESS : AnalyticsConstants.FAIL;
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("sendResult", AnalyticsConstants.NAME, str, "value", m8655X, "sendResult", str, "ScheduledMessageSend", linkedHashMap);
        m8560v1.m15848d(m8655X);
        GenericRecord build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f23273b.mo13275a(build);
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: b */
    public void mo29846b(AbstractC6696o abstractC6696o, Message message, int i) {
        CharSequence charSequence;
        boolean z;
        boolean z2;
        l.e(abstractC6696o, "result");
        l.e(message, "message");
        boolean z3 = abstractC6696o instanceof AbstractC6696o.C6700d;
        if (z3) {
            charSequence = "Success";
        } else if (abstractC6696o instanceof AbstractC6696o.C6697a) {
            charSequence = "Cancel";
        } else if (!(abstractC6696o instanceof AbstractC6696o.C6698b)) {
            throw new IllegalStateException("Unexpected result " + abstractC6696o);
        } else {
            charSequence = "Failure";
        }
        String m29836l = m29836l(i);
        C19497e0 c19497e0 = new C19497e0("MessageSendResult");
        c19497e0.m13279c("type", m29836l);
        c19497e0.m13279c(UpdateKey.STATUS, charSequence);
        c19497e0.m13279c("sim", this.f23274c.mo21740h() ? "Multi" : "Single");
        String str = message.f13392m;
        l.d(str, "message.simToken");
        c19497e0.m13279c("simToken", str);
        String mo21720c = this.f23274c.mo21720c();
        l.d(mo21720c, "multisimManager.analyticsName");
        c19497e0.m13279c("multiSimConfig", mo21720c);
        c19497e0.m13280b("retryCount", message.f13402w);
        String str2 = message.f13396q;
        if (str2 != null) {
            AbstractC7293d abstractC7293d = this.f23272a;
            long m28258c = this.f23275d.m28258c();
            l.d(str2, "id");
            Long valueOf = Long.valueOf(abstractC7293d.mo29833b(m28258c, str2));
            if (!(valueOf.longValue() > 0)) {
                valueOf = null;
            }
            if (valueOf != null) {
                c19497e0.m13279c("fullTimeInterval", m29835m(valueOf.longValue()));
            }
            Long valueOf2 = Long.valueOf(this.f23272a.mo29827h(str2));
            if (!(valueOf2.longValue() > 0)) {
                valueOf2 = null;
            }
            if (valueOf2 != null) {
                c19497e0.m13279c("scheduleTimeInterval", m29835m(valueOf2.longValue()));
            }
            Long valueOf3 = Long.valueOf(this.f23272a.mo29830e(str2));
            if (!(valueOf3.longValue() > 0)) {
                valueOf3 = null;
            }
            if (valueOf3 != null) {
                c19497e0.m13279c("enqueueTimeInterval", m29835m(valueOf3.longValue()));
            }
            Long valueOf4 = Long.valueOf(this.f23272a.mo29829f(this.f23275d.m28258c(), str2));
            if (!(valueOf4.longValue() > 0)) {
                valueOf4 = null;
            }
            if (valueOf4 != null) {
                long longValue = valueOf4.longValue();
                c19497e0.m13279c("sendTimeInterval", m29835m(longValue));
                c19497e0.m13276f(longValue);
            }
            this.f23272a.mo29832c(str2);
        }
        if (abstractC6696o instanceof C6657c) {
            C6657c c6657c = (C6657c) abstractC6696o;
            c19497e0.m13279c("failureReason", c6657c.f21945b);
            c19497e0.m13278d("hasSendSmsPermission", this.f23278g.mo13825h("android.permission.SEND_SMS"));
            Integer num = c6657c.f21946c;
            if (num != null) {
                c19497e0.m13279c("errorResult", String.valueOf(num.intValue()));
            }
            Integer num2 = c6657c.f21947d;
            if (num2 != null) {
                c19497e0.m13279c("errorCode", String.valueOf(num2.intValue()));
            }
        }
        this.f23273b.mo13275a(c19497e0.m13281a());
        if (i == 2) {
            this.f23276e.mo13221e(message, abstractC6696o);
            if (z3 && C10480a.m25865z1(message)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                a0 a0Var = new a0();
                a0Var.a = 0;
                String m35025a = message.m35025a();
                l.d(m35025a, "message.buildMessageText()");
                C5665g.m32795b(m35025a, new C7291b(linkedHashMap, a0Var));
                if (!linkedHashMap.isEmpty() || a0Var.a != 0) {
                    C19497e0 c19497e02 = new C19497e0("RichTextMessageSent");
                    c19497e02.m13278d("isMixedFormatting", linkedHashMap.size() + a0Var.a > 1);
                    Integer num3 = (Integer) linkedHashMap.get(FormattingStyle.BOLD);
                    c19497e02.m13280b("numBold", num3 != null ? num3.intValue() : 0);
                    Integer num4 = (Integer) linkedHashMap.get(FormattingStyle.ITALIC);
                    c19497e02.m13280b("numItalic", num4 != null ? num4.intValue() : 0);
                    Integer num5 = (Integer) linkedHashMap.get(FormattingStyle.UNDERLINE);
                    c19497e02.m13280b("numUnderline", num5 != null ? num5.intValue() : 0);
                    Integer num6 = (Integer) linkedHashMap.get(FormattingStyle.STRIKETHROUGH);
                    c19497e02.m13280b("numStrikethrough", num6 != null ? num6.intValue() : 0);
                    Integer num7 = (Integer) linkedHashMap.get(FormattingStyle.MONOSPACE);
                    c19497e02.m13280b("numMonospace", num7 != null ? num7.intValue() : 0);
                    Integer num8 = (Integer) linkedHashMap.get(FormattingStyle.MONOSPACE_MULTILINE);
                    c19497e02.m13280b("numMultiLineMonospace", num8 != null ? num8.intValue() : 0);
                    c19497e02.m13280b("numLink", a0Var.a);
                    this.f23273b.mo13275a(c19497e02.m13281a());
                }
            }
        }
        b bVar = message.f13385f;
        l.d(bVar, "message.sendScheduleDate");
        if (((e) bVar).a > 0) {
            mo29847a(z3, i);
        }
        if (message.f13390k == 2) {
            String m35025a2 = message.m35025a();
            l.d(m35025a2, "message.buildMessageText()");
            Matcher matcher = Patterns.WEB_URL.matcher(m35025a2);
            l.d(matcher, "Patterns.WEB_URL.matcher(text)");
            while (true) {
                if (!matcher.find()) {
                    z = false;
                    break;
                }
                String group = matcher.group();
                if (!URLUtil.isValidUrl(group)) {
                    group = null;
                }
                if (group != null) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return;
            }
            Entity[] entityArr = message.f13394o;
            l.d(entityArr, "message.entities");
            int length = entityArr.length;
            int i2 = 0;
            while (true) {
                z2 = false;
                if (i2 >= length) {
                    break;
                } else if (entityArr[i2].mo34997n()) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            AbstractC19462a abstractC19462a = this.f23273b;
            LinkedHashMap m8655X = C22128a.m8655X("ImWithLinkSent", "type");
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            l.e("hasPreview", AnalyticsConstants.NAME);
            m8655X.put("hasPreview", String.valueOf(z2));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ImWithLinkSent");
            m15852a.m15849c(linkedHashMap2);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
        }
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: c */
    public void mo29845c(String str, int i) {
        if (str != null) {
            this.f23272a.mo29828g(str);
        }
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: d */
    public void mo29844d(String str, long j, int i) {
        l.e(str, AnalyticsConstants.CONTEXT);
        m29837k(str, "Reshedule", i, j - this.f23275d.m28258c(), j);
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: e */
    public void mo29843e(String str, int i) {
        if (str != null) {
            this.f23272a.mo29834a(str);
        }
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: f */
    public void mo29842f(String str, int i, long j, long j2) {
        l.e(str, AnalyticsConstants.CONTEXT);
        m29837k(str, "Delete", i, j2 - j, j2);
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: g */
    public void mo29841g(String str, int i) {
        if (str != null) {
            this.f23272a.mo29831d(str);
        }
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: h */
    public void mo29840h(String str, long j, int i) {
        l.e(str, AnalyticsConstants.CONTEXT);
        m29837k(str, "Schedule", i, j - this.f23275d.m28258c(), j);
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: i */
    public void mo29839i(String str, String str2, int i, Participant[] participantArr, BinaryEntity[] binaryEntityArr, boolean z) {
        l.e(str2, "userInteraction");
        l.e(participantArr, "participants");
        l.e(binaryEntityArr, "media");
        if (str != null) {
            this.f23272a.mo29826i(str);
        }
    }

    @Override // p193e.p194a.p195a.p284w0.AbstractC7290a
    /* renamed from: j */
    public void mo29838j(Message message) {
        l.e(message, "message");
        l.e("EditMessage", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String m26016T2 = C10480a.m26016T2(C25225a.m3962T1(message));
        l.e("type", AnalyticsConstants.NAME);
        l.e(m26016T2, "value");
        linkedHashMap.put("type", m26016T2);
        String str = C10480a.m26081D1(message) ? "urgent" : C10480a.m26093A1(message) ? "scheduled" : "im";
        l.e("transport", AnalyticsConstants.NAME);
        l.e(str, "value");
        linkedHashMap.put("transport", str);
        l.e("peer", AnalyticsConstants.NAME);
        l.e("chat", "value");
        linkedHashMap.put("peer", "chat");
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("EditMessage");
        m15852a.m15849c(linkedHashMap2);
        m15852a.m15848d(linkedHashMap);
        GenericRecord build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f23273b.mo13275a(build);
    }

    /* renamed from: k */
    public final void m29837k(String str, String str2, int i, long j, long j2) {
        String str3;
        LinkedHashMap m8655X = C22128a.m8655X("ScheduleMessage", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y(AnalyticsConstants.CONTEXT, AnalyticsConstants.NAME, str, "value", m8655X, AnalyticsConstants.CONTEXT, str);
        String m29836l = m29836l(i);
        l.e("messageType", AnalyticsConstants.NAME);
        l.e(m29836l, "value");
        m8655X.put("messageType", m29836l);
        C22128a.m8695K0("action", AnalyticsConstants.NAME, str2, "value", m8655X, "action", str2);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        int minutes = (int) timeUnit.toMinutes(j);
        int hours = (int) timeUnit.toHours(j);
        String str4 = minutes <= 4 ? "0-4mins" : minutes <= 15 ? "5-15mins" : minutes <= 30 ? "16-30mins" : minutes <= 60 ? "31-60mins" : hours <= 6 ? "1-6h" : hours <= 24 ? "7-24h" : ((int) timeUnit.toDays(j)) <= 7 ? "1-7d" : "8d+";
        C22128a.m8695K0("period", AnalyticsConstants.NAME, str4, "value", m8655X, "period", str4);
        int mo14287h = this.f23277f.mo14287h(j2);
        if (mo14287h < 3) {
            str3 = "0-3";
        } else if (mo14287h < 6) {
            str3 = "3-6";
        } else if (mo14287h < 9) {
            str3 = "6-9";
        } else if (mo14287h < 12) {
            str3 = "9-12";
        } else if (mo14287h < 15) {
            str3 = "12-15";
        } else if (mo14287h < 18) {
            str3 = "15-18";
        } else if (mo14287h < 21) {
            str3 = "18-21";
        } else if (mo14287h >= 24) {
            throw new IllegalArgumentException("Should be < 24");
        } else {
            str3 = "21-24";
        }
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("sendingTime", AnalyticsConstants.NAME, str3, "value", m8655X, "sendingTime", str3, "ScheduleMessage", m8652Y);
        m8560v1.m15848d(m8655X);
        GenericRecord build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f23273b.mo13275a(build);
    }

    /* renamed from: l */
    public final String m29836l(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "Unknown" : "im" : "mms" : TokenResponseDto.METHOD_SMS;
    }

    /* renamed from: m */
    public final String m29835m(long j) {
        int seconds = (int) TimeUnit.MILLISECONDS.toSeconds(j);
        return (seconds >= 0 && 2 >= seconds) ? "0-2" : (2 <= seconds && 5 >= seconds) ? "2-5" : (5 <= seconds && 10 >= seconds) ? "5-10" : (10 <= seconds && 20 >= seconds) ? "10-20" : (20 <= seconds && 30 >= seconds) ? "20-30" : (30 <= seconds && 40 >= seconds) ? "30-40" : (40 <= seconds && 50 >= seconds) ? "40-50" : (50 <= seconds && 60 >= seconds) ? "50-60" : (60 <= seconds && 90 >= seconds) ? "60-90" : (90 <= seconds && 120 >= seconds) ? "90-120" : (120 <= seconds && 180 >= seconds) ? "120-180" : (180 <= seconds && 240 >= seconds) ? "180-240" : (240 <= seconds && 480 >= seconds) ? "240-480" : ">480";
    }
}
