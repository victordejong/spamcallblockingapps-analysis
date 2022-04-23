package p459j.p460a.p582w0.p589f5;

import android.content.Context;
import android.database.Cursor;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.gson.SmsFilterKeywordsConfig;
import gogolook.callgogolook2.gson.SmsScanConfig;
import gogolook.callgogolook2.gson.SmsScanConfigHelper;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p459j.p460a.p538m0.C13025h;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14989s;
import p626l.p631e0.C14949k;
import p626l.p631e0.C14966w;
import p626l.p631e0.C14967x;
import p626l.p640y.C15086c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15132b;
import p626l.p641z.p643d.C15149k;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.functions.Func2;
import p660rx.functions.FuncN;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018��2\u00020\u0001:\u0002>?B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0003J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0003J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J9\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042'\b\u0002\u0010\u0019\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u001b¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001aH\u0007J(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J!\u0010#\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010\u00062\b\u0010%\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010&J\b\u0010'\u001a\u00020\rH\u0007J\u0010\u0010(\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\b\u0010)\u001a\u00020\rH\u0007J\u0018\u0010*\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0004H\u0007J\"\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u0002002\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u0017\u00101\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¢\u0006\u0002\u00102J*\u00103\u001a\u00020\u001f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u0006052\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u0017\u00106\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0007¢\u0006\u0002\u00102J!\u00107\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007¢\u0006\u0002\u00108J(\u00109\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u00042\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u0006052\b\u0010!\u001a\u0004\u0018\u00010\"H\u0003J\u0018\u0010:\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010;\u001a\u00020-H\u0007J)\u0010<\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007¢\u0006\u0002\u0010=R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n \t*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006@"}, m815d2 = {"Lgogolook/callgogolook2/util/urlscan/MessageScanUtils;", "", "()V", "DEBUG_MODE_MESSAGE_BODY", "", "OTP_LENGTH_MAX", "", "OTP_LENGTH_MIN", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "addHttpPrefix", "url", "checkIsSentenceContainsOtpKeyword", "", "sentence", "getMessageScanObservable", "Lrx/Observable;", "messageBody", "getNotificationWarningWordingByRating", SmsUrlScanResultRealmObject.RATING, "getOtpCandidateFromSentence", "getOtpFromMessage", NotificationCompat.CATEGORY_MESSAGE, "getRedirectUrl", "urlStr", "onOpenConnection", "Lkotlin/Function1;", "Ljava/net/HttpURLConnection;", "Lkotlin/ParameterName;", "name", "urlConnection", "", "getUrlScanObservable", "urlScanTrackingContent", "Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;", "handleScanResults", "result1", "result2", "(Ljava/lang/Integer;Ljava/lang/Integer;)I", "isAllowScanSmsUrl", "isApkUrl", "isScanEnable", "isUrlMatched", "patternStr", "parseRedirectUrl", "Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlRedirectParseResult;", "receivedUrl", "redirectCheckCountMax", "", "queryCachedScanResult", "(Ljava/lang/String;)Ljava/lang/Integer;", "scan", "action", "Lrx/functions/Action1;", "scanFirebaseKeyword", "scanFirebaseUrlMatcher", "(Ljava/lang/String;Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;)Ljava/lang/Integer;", "scanMessage", "scanRedirectUrl", "parseResult", "scanWithThirdPartyApi", "(Ljava/lang/String;Ljava/lang/String;Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;)Ljava/lang/Integer;", "UrlRedirectParseResult", "UrlScanTrackingContent", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.f5.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a.class */
public final class C14005a {

    /* renamed from: j.a.w0.f5.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$a.class */
    public static final class C14006a {

        /* renamed from: a */
        public String f31428a;

        /* renamed from: b */
        public String f31429b;

        /* renamed from: c */
        public boolean f31430c;

        /* renamed from: d */
        public C14007b f31431d;

        public C14006a(String str, String str2, boolean z, C14007b bVar) {
            C15149k.m377b(str, "receivedUrl");
            C15149k.m377b(str2, "checkedUrl");
            this.f31428a = str;
            this.f31429b = str2;
            this.f31430c = z;
            this.f31431d = bVar;
        }

        /* renamed from: a */
        public final String m2873a() {
            return this.f31429b;
        }

        /* renamed from: b */
        public final boolean m2872b() {
            return this.f31430c;
        }

        /* renamed from: c */
        public final C14007b m2871c() {
            return this.f31431d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C14006a)) {
                return false;
            }
            C14006a aVar = (C14006a) obj;
            if (!C15149k.m384a((Object) this.f31428a, (Object) aVar.f31428a) || !C15149k.m384a((Object) this.f31429b, (Object) aVar.f31429b)) {
                return false;
            }
            return (this.f31430c == aVar.f31430c) && C15149k.m384a(this.f31431d, aVar.f31431d);
        }

        public int hashCode() {
            String str = this.f31428a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31429b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f31430c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            C14007b bVar = this.f31431d;
            if (bVar != null) {
                i = bVar.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
        }

        public String toString() {
            return "UrlRedirectParseResult(receivedUrl=" + this.f31428a + ", checkedUrl=" + this.f31429b + ", shouldShowRedirectWarning=" + this.f31430c + ", urlScanTrackingContent=" + this.f31431d + ")";
        }
    }

    /* renamed from: j.a.w0.f5.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$b.class */
    public static final class C14007b {

        /* renamed from: a */
        public final int f31432a;

        /* renamed from: b */
        public int f31433b;

        /* renamed from: c */
        public int f31434c;

        /* renamed from: d */
        public String f31435d;

        /* renamed from: e */
        public String f31436e;

        /* renamed from: f */
        public String f31437f;

        /* renamed from: g */
        public String f31438g;

        /* renamed from: h */
        public int f31439h;

        /* renamed from: i */
        public int f31440i;

        /* renamed from: j */
        public long f31441j;

        /* renamed from: k */
        public String f31442k;

        public C14007b() {
            this(0, 0, 0, null, null, null, null, 0, 0, 0L, null, 2047, null);
        }

        public C14007b(int i, int i2, int i3, String str, String str2, String str3, String str4, int i4, int i5, long j, String str5) {
            C15149k.m377b(str, "checkedUrl");
            C15149k.m377b(str2, "receivedUrl");
            C15149k.m377b(str3, "remoteNumber");
            C15149k.m377b(str4, "remoteE164");
            C15149k.m377b(str5, "thirdPartyUrlScanResult");
            this.f31432a = i;
            this.f31433b = i2;
            this.f31434c = i3;
            this.f31435d = str;
            this.f31436e = str2;
            this.f31437f = str3;
            this.f31438g = str4;
            this.f31439h = i4;
            this.f31440i = i5;
            this.f31441j = j;
            this.f31442k = str5;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C14007b(int r15, int r16, int r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22, int r23, long r24, java.lang.String r26, int r27, p626l.p641z.p643d.C15145g r28) {
            /*
                r14 = this;
                r0 = 1
                r29 = r0
                r0 = r27
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x000f
                r0 = 1
                r15 = r0
                goto L_0x000f
            L_0x000f:
                r0 = r27
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x001c
                r0 = r29
                r16 = r0
                goto L_0x001c
            L_0x001c:
                r0 = r27
                r1 = 4
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0028
                r0 = 0
                r17 = r0
                goto L_0x0028
            L_0x0028:
                java.lang.String r0 = ""
                r28 = r0
                r0 = r27
                r1 = 8
                r0 = r0 & r1
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = ""
                r18 = r0
                goto L_0x003b
            L_0x003b:
                r0 = r27
                r1 = 16
                r0 = r0 & r1
                if (r0 == 0) goto L_0x004a
                java.lang.String r0 = ""
                r19 = r0
                goto L_0x004a
            L_0x004a:
                r0 = r27
                r1 = 32
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0059
                java.lang.String r0 = ""
                r20 = r0
                goto L_0x0059
            L_0x0059:
                r0 = r27
                r1 = 64
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0068
                java.lang.String r0 = ""
                r21 = r0
                goto L_0x0068
            L_0x0068:
                r0 = -1
                r29 = r0
                r0 = r27
                r1 = 128(0x80, float:1.794E-43)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x007a
                r0 = -1
                r22 = r0
                goto L_0x007a
            L_0x007a:
                r0 = r27
                r1 = 256(0x100, float:3.59E-43)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x008a
                r0 = r29
                r23 = r0
                goto L_0x008a
            L_0x008a:
                r0 = r27
                r1 = 512(0x200, float:7.175E-43)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x009b
                r0 = -1
                r24 = r0
                goto L_0x009b
            L_0x009b:
                r0 = r27
                r1 = 1024(0x400, float:1.435E-42)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x00ab
                r0 = r28
                r26 = r0
                goto L_0x00ab
            L_0x00ab:
                r0 = r14
                r1 = r15
                r2 = r16
                r3 = r17
                r4 = r18
                r5 = r19
                r6 = r20
                r7 = r21
                r8 = r22
                r9 = r23
                r10 = r24
                r11 = r26
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p589f5.C14005a.C14007b.<init>(int, int, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, long, java.lang.String, int, l.z.d.g):void");
        }

        /* renamed from: a */
        public final String m2870a() {
            return this.f31435d;
        }

        /* renamed from: a */
        public final void m2869a(int i) {
            this.f31434c = i;
        }

        /* renamed from: a */
        public final void m2868a(long j) {
            this.f31441j = j;
        }

        /* renamed from: a */
        public final void m2867a(String str) {
            C15149k.m377b(str, "<set-?>");
            this.f31435d = str;
        }

        /* renamed from: b */
        public final String m2866b() {
            return this.f31436e;
        }

        /* renamed from: b */
        public final void m2865b(int i) {
            this.f31433b = i;
        }

        /* renamed from: b */
        public final void m2864b(String str) {
            C15149k.m377b(str, "<set-?>");
            this.f31436e = str;
        }

        /* renamed from: c */
        public final long m2863c() {
            return this.f31441j;
        }

        /* renamed from: c */
        public final void m2862c(int i) {
            this.f31440i = i;
        }

        /* renamed from: c */
        public final void m2861c(String str) {
            C15149k.m377b(str, "<set-?>");
            this.f31438g = str;
        }

        /* renamed from: d */
        public final String m2860d() {
            return this.f31438g;
        }

        /* renamed from: d */
        public final void m2859d(int i) {
            this.f31439h = i;
        }

        /* renamed from: d */
        public final void m2858d(String str) {
            C15149k.m377b(str, "<set-?>");
            this.f31437f = str;
        }

        /* renamed from: e */
        public final String m2857e() {
            return this.f31437f;
        }

        /* renamed from: e */
        public final void m2856e(String str) {
            C15149k.m377b(str, "<set-?>");
            this.f31442k = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C14007b)) {
                return false;
            }
            C14007b bVar = (C14007b) obj;
            if (!(this.f31432a == bVar.f31432a)) {
                return false;
            }
            if (!(this.f31433b == bVar.f31433b)) {
                return false;
            }
            if (!(this.f31434c == bVar.f31434c) || !C15149k.m384a((Object) this.f31435d, (Object) bVar.f31435d) || !C15149k.m384a((Object) this.f31436e, (Object) bVar.f31436e) || !C15149k.m384a((Object) this.f31437f, (Object) bVar.f31437f) || !C15149k.m384a((Object) this.f31438g, (Object) bVar.f31438g)) {
                return false;
            }
            if (!(this.f31439h == bVar.f31439h)) {
                return false;
            }
            if (!(this.f31440i == bVar.f31440i)) {
                return false;
            }
            return ((this.f31441j > bVar.f31441j ? 1 : (this.f31441j == bVar.f31441j ? 0 : -1)) == 0) && C15149k.m384a((Object) this.f31442k, (Object) bVar.f31442k);
        }

        /* renamed from: f */
        public final int m2855f() {
            return this.f31434c;
        }

        /* renamed from: g */
        public final int m2854g() {
            return this.f31433b;
        }

        /* renamed from: h */
        public final String m2853h() {
            return this.f31442k;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            hashCode = Integer.valueOf(this.f31432a).hashCode();
            hashCode2 = Integer.valueOf(this.f31433b).hashCode();
            hashCode3 = Integer.valueOf(this.f31434c).hashCode();
            String str = this.f31435d;
            int i = 0;
            int hashCode7 = str != null ? str.hashCode() : 0;
            String str2 = this.f31436e;
            int hashCode8 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f31437f;
            int hashCode9 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31438g;
            int hashCode10 = str4 != null ? str4.hashCode() : 0;
            hashCode4 = Integer.valueOf(this.f31439h).hashCode();
            hashCode5 = Integer.valueOf(this.f31440i).hashCode();
            hashCode6 = Long.valueOf(this.f31441j).hashCode();
            String str5 = this.f31442k;
            if (str5 != null) {
                i = str5.hashCode();
            }
            return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
        }

        /* renamed from: i */
        public final int m2852i() {
            return this.f31440i;
        }

        /* renamed from: j */
        public final int m2851j() {
            return this.f31439h;
        }

        /* renamed from: k */
        public final int m2850k() {
            return this.f31432a;
        }

        public String toString() {
            return "UrlScanTrackingContent(version=" + this.f31432a + ", source=" + this.f31433b + ", scanResult=" + this.f31434c + ", checkedUrl=" + this.f31435d + ", receivedUrl=" + this.f31436e + ", remoteNumber=" + this.f31437f + ", remoteE164=" + this.f31438g + ", urlRedirectTimes=" + this.f31439h + ", urlRedirectCheckingTimes=" + this.f31440i + ", redirectCheckDuration=" + this.f31441j + ", thirdPartyUrlScanResult=" + this.f31442k + ")";
        }
    }

    /* renamed from: j.a.w0.f5.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$c.class */
    public static final class C14008c<T> implements Observable.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ String f31443a;

        public C14008c(String str) {
            this.f31443a = str;
        }

        /* renamed from: a */
        public final void call(Subscriber<? super Integer> subscriber) {
            subscriber.onNext(C14005a.m2874h(this.f31443a));
            subscriber.onCompleted();
        }
    }

    /* renamed from: j.a.w0.f5.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$d.class */
    public static final class C14009d<T> implements Observable.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ String f31444a;

        /* renamed from: b */
        public final /* synthetic */ C14007b f31445b;

        /* renamed from: c */
        public final /* synthetic */ String f31446c;

        public C14009d(String str, C14007b bVar, String str2) {
            this.f31444a = str;
            this.f31445b = bVar;
            this.f31446c = str2;
        }

        /* renamed from: a */
        public final void call(Subscriber<? super Integer> subscriber) {
            int i;
            C14006a a = C14005a.m2890a(C14005a.m2891a(this.f31444a), C13640c.m3745d().m3748b("url_redirect_check_max"), this.f31445b);
            if (a.m2872b()) {
                C14007b bVar = this.f31445b;
                i = 2;
                if (bVar != null) {
                    bVar.m2865b(2);
                    bVar.m2869a(2);
                    C14289m.m1901a(bVar);
                    i = 2;
                }
            } else {
                i = C14005a.m2889a(this.f31446c, a);
            }
            subscriber.onNext(Integer.valueOf(i));
            subscriber.onCompleted();
        }
    }

    /* renamed from: j.a.w0.f5.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$e.class */
    public static final class C14010e<R> implements FuncN<R> {

        /* renamed from: a */
        public static final C14010e f31447a = new C14010e();

        @Override // p660rx.functions.FuncN
        public final int call(Object[] objArr) {
            Iterator a = C15132b.m411a(objArr);
            int i = 0;
            while (a.hasNext()) {
                i = C14005a.m2892a(Integer.valueOf(i), (Integer) a.next());
            }
            return i;
        }
    }

    /* renamed from: j.a.w0.f5.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f5/a$f.class */
    public static final class C14011f<T1, T2, R> implements Func2<Integer, Integer, Integer> {

        /* renamed from: a */
        public static final C14011f f31448a = new C14011f();

        /* renamed from: a */
        public final int m2847a(Integer num, Integer num2) {
            return C14005a.m2892a(num, num2);
        }

        @Override // p660rx.functions.Func2
        public /* bridge */ /* synthetic */ Integer call(Integer num, Integer num2) {
            return Integer.valueOf(m2847a(num, num2));
        }
    }

    static {
        new C14005a();
    }

    /* renamed from: a */
    public static final int m2892a(Integer num, Integer num2) {
        int i = 0;
        if (num == null && num2 == null) {
            return 0;
        }
        if (C15149k.m384a(num, num2)) {
            if (num != null) {
                i = num.intValue();
            }
        } else if (num == null) {
            if (num2 != null) {
                i = num2.intValue();
            }
        } else if (num2 == null) {
            i = num.intValue();
        } else if (num.intValue() == -2 || num2.intValue() == -2) {
            i = -2;
        } else if (num.intValue() == 1 || num2.intValue() == 1) {
            i = 1;
        } else if (num.intValue() == 2 || num2.intValue() == 2) {
            i = 2;
        } else if (num.intValue() == 4 || num2.intValue() == 4) {
            i = 4;
        } else if (num.intValue() == 3 || num2.intValue() == 3) {
            i = 3;
        } else if (num.intValue() == -1 || num2.intValue() == -1) {
            i = -1;
        }
        return i;
    }

    @WorkerThread
    /* renamed from: a */
    public static final int m2889a(String str, C14006a aVar) {
        C15149k.m377b(str, "messageBody");
        C15149k.m377b(aVar, "parseResult");
        if (!C14217x3.m2137h(MyApplication.m29013o())) {
            return m2892a((Integer) (-1), m2875g(aVar.m2873a()));
        }
        return m2892a(Integer.valueOf(m2876f(aVar.m2873a()) ? 4 : 0), Integer.valueOf(m2892a(m2888a(aVar.m2873a(), aVar.m2871c()), m2881b(str, aVar.m2873a(), aVar.m2871c()))));
    }

    @WorkerThread
    /* renamed from: a */
    public static final C14006a m2890a(String str, long j, C14007b bVar) {
        int i;
        String str2;
        C15149k.m377b(str, "receivedUrl");
        boolean z = false;
        if (j == 0) {
            if (bVar != null) {
                bVar.m2864b(str);
                bVar.m2867a(str);
                bVar.m2859d(0);
                bVar.m2862c(0);
                bVar.m2868a(0L);
            } else {
                bVar = null;
            }
            return new C14006a(str, str, false, bVar);
        }
        C13930d dVar = new C13930d();
        dVar.m3018e();
        String str3 = str;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i2;
            str2 = str3;
            if (i2 >= 1 + j) {
                break;
            }
            str2 = m2884a(str3, null, 2, null);
            i2++;
            if (C15149k.m384a((Object) str2, (Object) str3)) {
                i = i2;
                break;
            }
            i3++;
            str3 = str2;
        }
        dVar.m3017f();
        if (i3 > j) {
            z = true;
        }
        if (bVar != null) {
            bVar.m2864b(str);
            bVar.m2867a(str2);
            bVar.m2859d(i3);
            bVar.m2862c(i);
            bVar.m2868a(dVar.m3025a());
        } else {
            bVar = null;
        }
        return new C14006a(str, str2, z, bVar);
    }

    @WorkerThread
    /* renamed from: a */
    public static final Integer m2888a(String str, C14007b bVar) {
        int i;
        C15149k.m377b(str, "url");
        if (C14217x3.m2137h(MyApplication.m29013o())) {
            String n = C14017g4.m2810n();
            C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
            SmsScanConfig a = SmsScanConfigHelper.m28183a(n);
            int i2 = 0;
            int i3 = 0;
            if (a != null) {
                List<String> b = a.m28186b();
                i3 = 0;
                if (b != null) {
                    Iterator<T> it = b.iterator();
                    while (true) {
                        i3 = i2;
                        if (!it.hasNext()) {
                            break;
                        } else if (m2887a(str, (String) it.next())) {
                            i2 = 1;
                        }
                    }
                }
            }
            i = i3;
            if (1 != i3) {
                i = i3;
                if (a != null) {
                    List<String> d = a.m28184d();
                    i = i3;
                    if (d != null) {
                        Iterator<T> it2 = d.iterator();
                        while (true) {
                            i = i3;
                            if (!it2.hasNext()) {
                                break;
                            } else if (m2887a(str, (String) it2.next())) {
                                i3 = 2;
                            }
                        }
                    }
                }
            }
        } else {
            i = -1;
        }
        if (bVar != null) {
            bVar.m2865b(1);
            bVar.m2869a(i);
            C14289m.m1901a(bVar);
        }
        return Integer.valueOf(i);
    }

    /* renamed from: a */
    public static final String m2893a(int i) {
        int i2 = 2131888412;
        switch (i) {
            case -2:
                i2 = R$string.smsnotification_haveurl;
                break;
            case -1:
                break;
            case 0:
                i2 = R$string.smsnotification_urlscan_unrated;
                break;
            case 1:
                i2 = R$string.smsnotification_urlscan_dangerous;
                break;
            case 2:
                i2 = R$string.smsnotification_urlscan_suspicious;
                break;
            case 3:
                i2 = R$string.smsnotification_urlscan_safe;
                break;
            case 4:
                i2 = R$string.smsnotification_haveapk;
                break;
            default:
                i2 = 2131888412;
                break;
        }
        return C14206w4.m2225a(i2);
    }

    /* renamed from: a */
    public static final String m2891a(String str) {
        C15149k.m377b(str, "url");
        if (!C14966w.m712c(str, "http", false, 2, null)) {
            str = "http://" + str;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ce, code lost:
        if (r10 != null) goto L_0x00d1;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0142  */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m2885a(java.lang.String r4, p626l.p641z.p642c.AbstractC15118l<? super java.net.HttpURLConnection, p626l.C14989s> r5) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p589f5.C14005a.m2885a(java.lang.String, l.z.c.l):java.lang.String");
    }

    @WorkerThread
    /* renamed from: a */
    public static /* synthetic */ String m2884a(String str, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = null;
        }
        return m2885a(str, lVar);
    }

    /* renamed from: a */
    public static final Observable<Integer> m2886a(String str, String str2, C14007b bVar) {
        C15149k.m377b(str, "messageBody");
        C15149k.m377b(str2, "url");
        Observable<Integer> create = Observable.create(new C14009d(str2, bVar, str));
        C15149k.m383a((Object) create, "Observable\n             …leted()\n                }");
        return create;
    }

    /* renamed from: a */
    public static final void m2883a(String str, Action1<Integer> action1, C14007b bVar) {
        C15149k.m377b(action1, "action");
        if (str == null || str.length() == 0) {
            action1.call(-1);
        } else if (!m2894a()) {
            action1.call(-2);
        } else {
            m2880b(str, action1, bVar);
        }
    }

    /* renamed from: a */
    public static final boolean m2894a() {
        return C13978e.f31386a.m9462a("sms_checker_warning", (Boolean) false);
    }

    /* renamed from: a */
    public static final boolean m2887a(String str, String str2) {
        boolean z;
        C15149k.m377b(str, "url");
        C15149k.m377b(str2, "patternStr");
        try {
            z = Pattern.compile(str2).matcher(str).matches();
        } catch (PatternSyntaxException e) {
            C14080m2.m2612a((Throwable) e);
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0113  */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Integer m2881b(java.lang.String r7, java.lang.String r8, p459j.p460a.p582w0.p589f5.C14005a.C14007b r9) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p589f5.C14005a.m2881b(java.lang.String, java.lang.String, j.a.w0.f5.a$b):java.lang.Integer");
    }

    /* renamed from: b */
    public static final void m2880b(String str, Action1<Integer> action1, C14007b bVar) {
        List<String> e = C14131q4.m2404e(str);
        if (e == null || e.isEmpty()) {
            action1.call(-1);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : e) {
            C15149k.m383a((Object) str2, "it");
            Observable<Integer> subscribeOn = m2886a(str, str2, bVar).subscribeOn(Schedulers.m0io());
            C15149k.m383a((Object) subscribeOn, "getUrlScanObservable(mes…scribeOn(Schedulers.io())");
            arrayList.add(subscribeOn);
        }
        Observable.zip(Observable.zip(arrayList, C14010e.f31447a), m2879c(str).subscribeOn(Schedulers.m0io()), C14011f.f31448a).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.m0io()).subscribe(action1);
    }

    /* renamed from: b */
    public static final boolean m2882b(String str) {
        boolean z = false;
        try {
            SmsFilterKeywordsConfig smsFilterKeywordsConfig = (SmsFilterKeywordsConfig) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("sms_filter_keywords_config"), (Class<Object>) SmsFilterKeywordsConfig.class);
            String str2 = null;
            Object obj = null;
            List<String> a = smsFilterKeywordsConfig != null ? smsFilterKeywordsConfig.m28189a() : null;
            if (a != null) {
                Iterator<T> it = a.iterator();
                do {
                    if (!it.hasNext()) {
                        break;
                    }
                    obj = it.next();
                } while (!C14967x.m706a((CharSequence) str, (CharSequence) ((String) obj), true));
                str2 = (String) obj;
            }
            if (str2 != null) {
                z = true;
            }
        } catch (C10108n e) {
            C13973d4.m2952a(e);
        }
        return z;
    }

    /* renamed from: c */
    public static final Observable<Integer> m2879c(String str) {
        C15149k.m377b(str, "messageBody");
        Observable<Integer> create = Observable.create(new C14008c(str));
        C15149k.m383a((Object) create, "Observable\n             …leted()\n                }");
        return create;
    }

    /* renamed from: d */
    public static final String m2878d(String str) {
        boolean z = str.length() == 0;
        String str2 = null;
        String str3 = null;
        if (!z) {
            if (m2882b(str)) {
                Iterator it = C14967x.m691a((CharSequence) new C14949k("\\D+").m748a(str, "*"), new String[]{"*"}, false, 0, 6, (Object) null).iterator();
                while (true) {
                    str3 = str2;
                    if (!it.hasNext()) {
                        break;
                    }
                    String str4 = (String) it.next();
                    int length = str4.length();
                    if (4 <= length && 8 >= length) {
                        if (str4.length() > (str2 != null ? str2 : "").length()) {
                            str2 = str4;
                        }
                    }
                }
            } else {
                str3 = null;
            }
        }
        return str3;
    }

    /* renamed from: e */
    public static final String m2877e(String str) {
        C15149k.m377b(str, NotificationCompat.CATEGORY_MESSAGE);
        String str2 = null;
        for (String str3 : new C14949k("[，。]").m745b(str, 0)) {
            String d = m2878d(str3);
            if (!C14217x3.m2160b(d)) {
                if (str2 != null) {
                    if (d != null) {
                        int length = d.length();
                        if (str2 == null) {
                            C15149k.m378b();
                            throw null;
                        } else if (length > str2.length()) {
                        }
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
                str2 = d;
            }
        }
        return str2;
    }

    /* renamed from: f */
    public static final boolean m2876f(String str) {
        C15149k.m377b(str, "url");
        Locale locale = Locale.US;
        C15149k.m383a((Object) locale, "Locale.US");
        String lowerCase = str.toLowerCase(locale);
        C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return C14966w.m716a(lowerCase, ".apk", false, 2, null);
    }

    @WorkerThread
    /* renamed from: g */
    public static final Integer m2875g(String str) {
        C15149k.m377b(str, "url");
        boolean f = m2876f(str);
        Integer num = null;
        if (f) {
            num = Integer.valueOf(m2892a((Integer) null, (Integer) 4));
        } else {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            Cursor query = o.getContentResolver().query(C13025h.f29452a, new String[]{"_id", "_status", "_json"}, "_url=? AND _status=?", new String[]{str, String.valueOf(1)}, null);
            if (query != null) {
                num = null;
                num = null;
                if (query != null) {
                    while (query.moveToNext()) {
                        try {
                            try {
                                num = Integer.valueOf(m2892a(num, Integer.valueOf(new JSONObject(query.getString(query.getColumnIndex("_json"))).getJSONObject("wrs").getInt(SmsUrlScanResultRealmObject.RATING))));
                            } catch (JSONException e) {
                                C13973d4.m2952a(e);
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } finally {
                                C15086c.m447a(query, th);
                            }
                        }
                    }
                    query.close();
                }
                C14989s sVar = C14989s.f33022a;
                th = null;
            }
        }
        Integer num2 = num;
        if (num == null) {
            num2 = num;
            if (!C14217x3.m2137h(MyApplication.m29013o())) {
                num2 = -1;
            }
        }
        return num2;
    }

    @WorkerThread
    /* renamed from: h */
    public static final Integer m2874h(String str) {
        Integer num;
        C15149k.m377b(str, "messageBody");
        if (C14217x3.m2137h(MyApplication.m29013o())) {
            String n = C14017g4.m2810n();
            C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
            SmsScanConfig a = SmsScanConfigHelper.m28183a(n);
            num = null;
            if (a != null) {
                List<String> c = a.m28185c();
                num = null;
                if (c != null) {
                    num = null;
                    for (String str2 : c) {
                        if (C14967x.m705a((CharSequence) str, (CharSequence) str2, false, 2, (Object) null)) {
                            num = 2;
                        }
                    }
                }
            }
        } else {
            num = -1;
        }
        return num;
    }
}
