package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b(\b\u0087\b\u0018��2\u00020\u0001Bu\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0007\u0012\u0006\u0010\u001d\u001a\u00020\n\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u000f\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b<\u0010=J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0004J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0004J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0004J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0094\u0001\u0010%\u001a\u00020��2\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u00022\b\b\u0002\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\u00022\b\b\u0003\u0010\u001f\u001a\u00020\u00022\b\b\u0002\u0010 \u001a\u00020\u000f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015HÆ\u0001¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b'\u0010\u0004J\u0010\u0010(\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b(\u0010\fJ\u001a\u0010*\u001a\u00020\u000f2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b*\u0010+R\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006¢\u0006\f\n\u0004\b$\u0010,\u001a\u0004\b-\u0010\u0018R\u001c\u0010\u001b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010.\u001a\u0004\b/\u0010\u0004R\u0019\u0010\u001f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010.\u001a\u0004\b0\u0010\u0004R\u001b\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010.\u001a\u0004\b1\u0010\u0004R\u0019\u0010\u001d\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u00102\u001a\u0004\b3\u0010\fR\u001b\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010.\u001a\u0004\b4\u0010\u0004R\u001b\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b#\u0010.\u001a\u0004\b5\u0010\u0004R\u001c\u0010\u0019\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010.\u001a\u0004\b6\u0010\u0004R\u0019\u0010\u001e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010.\u001a\u0004\b7\u0010\u0004R\u0019\u0010\u001c\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u00108\u001a\u0004\b9\u0010\tR\u001c\u0010\u001a\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010.\u001a\u0004\b:\u0010\u0004R\u0019\u0010 \u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b \u0010;\u001a\u0004\b \u0010\u0011¨\u0006>"}, d2 = {"Lcom/truecaller/callhero_assistant/data/ScreenedCall;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "Ljava/util/Date;", "component4", "()Ljava/util/Date;", "", "component5", "()I", "component6", "component7", "", "component8", "()Z", "component9", "component10", "component11", "", "Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;", "component12", "()Ljava/util/List;", "id", "toNumber", "fromNumber", "createdAt", VastIconXmlManager.DURATION, AnalyticsConstants.LOCALE, UpdateKey.STATUS, "isVoicemail", "originateCallStatus", "spamModelPrediction", "intent", "messages", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/callhero_assistant/data/ScreenedCall;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getMessages", "Ljava/lang/String;", "getFromNumber", "getStatus", "getOriginateCallStatus", "I", "getDuration", "getSpamModelPrediction", "getIntent", "getId", "getLocale", "Ljava/util/Date;", "getCreatedAt", "getToNumber", "Z", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/ScreenedCall.class */
public final class ScreenedCall {
    private final Date createdAt;
    private final int duration;
    @b(RemoteMessageConst.FROM)
    private final String fromNumber;
    @b("_id")

    /* renamed from: id */
    private final String f10669id;
    private final String intent;
    private final boolean isVoicemail;
    private final String locale;
    private final List<ScreenedCallMessage> messages;
    private final String originateCallStatus;
    private final String spamModelPrediction;
    private final String status;
    @b(RemoteMessageConst.f7718TO)
    private final String toNumber;

    public ScreenedCall(String str, String str2, String str3, Date date, int i, String str4, String str5, boolean z, String str6, String str7, String str8, List<ScreenedCallMessage> list) {
        l.e(str, "id");
        l.e(str2, "toNumber");
        l.e(str3, "fromNumber");
        l.e(date, "createdAt");
        l.e(str4, AnalyticsConstants.LOCALE);
        l.e(str5, UpdateKey.STATUS);
        l.e(list, "messages");
        this.f10669id = str;
        this.toNumber = str2;
        this.fromNumber = str3;
        this.createdAt = date;
        this.duration = i;
        this.locale = str4;
        this.status = str5;
        this.isVoicemail = z;
        this.originateCallStatus = str6;
        this.spamModelPrediction = str7;
        this.intent = str8;
        this.messages = list;
    }

    public static /* synthetic */ ScreenedCall copy$default(ScreenedCall screenedCall, String str, String str2, String str3, Date date, int i, String str4, String str5, boolean z, String str6, String str7, String str8, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = screenedCall.f10669id;
        }
        if ((i2 & 2) != 0) {
            str2 = screenedCall.toNumber;
        }
        if ((i2 & 4) != 0) {
            str3 = screenedCall.fromNumber;
        }
        if ((i2 & 8) != 0) {
            date = screenedCall.createdAt;
        }
        if ((i2 & 16) != 0) {
            i = screenedCall.duration;
        }
        if ((i2 & 32) != 0) {
            str4 = screenedCall.locale;
        }
        if ((i2 & 64) != 0) {
            str5 = screenedCall.status;
        }
        if ((i2 & 128) != 0) {
            z = screenedCall.isVoicemail;
        }
        if ((i2 & 256) != 0) {
            str6 = screenedCall.originateCallStatus;
        }
        if ((i2 & 512) != 0) {
            str7 = screenedCall.spamModelPrediction;
        }
        if ((i2 & 1024) != 0) {
            str8 = screenedCall.intent;
        }
        if ((i2 & 2048) != 0) {
            list = screenedCall.messages;
        }
        return screenedCall.copy(str, str2, str3, date, i, str4, str5, z, str6, str7, str8, list);
    }

    public final String component1() {
        return this.f10669id;
    }

    public final String component10() {
        return this.spamModelPrediction;
    }

    public final String component11() {
        return this.intent;
    }

    public final List<ScreenedCallMessage> component12() {
        return this.messages;
    }

    public final String component2() {
        return this.toNumber;
    }

    public final String component3() {
        return this.fromNumber;
    }

    public final Date component4() {
        return this.createdAt;
    }

    public final int component5() {
        return this.duration;
    }

    public final String component6() {
        return this.locale;
    }

    public final String component7() {
        return this.status;
    }

    public final boolean component8() {
        return this.isVoicemail;
    }

    public final String component9() {
        return this.originateCallStatus;
    }

    public final ScreenedCall copy(String str, String str2, String str3, Date date, int i, String str4, String str5, boolean z, String str6, String str7, String str8, List<ScreenedCallMessage> list) {
        l.e(str, "id");
        l.e(str2, "toNumber");
        l.e(str3, "fromNumber");
        l.e(date, "createdAt");
        l.e(str4, AnalyticsConstants.LOCALE);
        l.e(str5, UpdateKey.STATUS);
        l.e(list, "messages");
        return new ScreenedCall(str, str2, str3, date, i, str4, str5, z, str6, str7, str8, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ScreenedCall)) {
                return false;
            }
            ScreenedCall screenedCall = (ScreenedCall) obj;
            return l.a(this.f10669id, screenedCall.f10669id) && l.a(this.toNumber, screenedCall.toNumber) && l.a(this.fromNumber, screenedCall.fromNumber) && l.a(this.createdAt, screenedCall.createdAt) && this.duration == screenedCall.duration && l.a(this.locale, screenedCall.locale) && l.a(this.status, screenedCall.status) && this.isVoicemail == screenedCall.isVoicemail && l.a(this.originateCallStatus, screenedCall.originateCallStatus) && l.a(this.spamModelPrediction, screenedCall.spamModelPrediction) && l.a(this.intent, screenedCall.intent) && l.a(this.messages, screenedCall.messages);
        }
        return true;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final String getFromNumber() {
        return this.fromNumber;
    }

    public final String getId() {
        return this.f10669id;
    }

    public final String getIntent() {
        return this.intent;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final List<ScreenedCallMessage> getMessages() {
        return this.messages;
    }

    public final String getOriginateCallStatus() {
        return this.originateCallStatus;
    }

    public final String getSpamModelPrediction() {
        return this.spamModelPrediction;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getToNumber() {
        return this.toNumber;
    }

    public int hashCode() {
        String str = this.f10669id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.toNumber;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.fromNumber;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Date date = this.createdAt;
        int hashCode4 = date != null ? date.hashCode() : 0;
        int i2 = this.duration;
        String str4 = this.locale;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.status;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        boolean z = this.isVoicemail;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str6 = this.originateCallStatus;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.spamModelPrediction;
        int hashCode8 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.intent;
        int hashCode9 = str8 != null ? str8.hashCode() : 0;
        List<ScreenedCallMessage> list = this.messages;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i3) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public final boolean isVoicemail() {
        return this.isVoicemail;
    }

    public String toString() {
        return "ScreenedCall(id=" + this.f10669id + ", toNumber=" + this.toNumber + ", fromNumber=" + this.fromNumber + ", createdAt=" + this.createdAt + ", duration=" + this.duration + ", locale=" + this.locale + ", status=" + this.status + ", isVoicemail=" + this.isVoicemail + ", originateCallStatus=" + this.originateCallStatus + ", spamModelPrediction=" + this.spamModelPrediction + ", intent=" + this.intent + ", messages=" + this.messages + ")";
    }
}
