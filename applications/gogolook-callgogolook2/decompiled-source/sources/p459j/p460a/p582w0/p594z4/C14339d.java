package p459j.p460a.p582w0.p594z4;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.google.firebase.perf.metrics.Trace;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p640y.C15086c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0004H\u0003J\b\u0010\u0014\u001a\u00020\u0010H\u0007J\u0016\u0010\u0015\u001a\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0010H\u0007J\b\u0010\u0019\u001a\u00020\u0004H\u0007J\b\u0010\u001a\u001a\u00020\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0003J\u0018\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0003R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006$"}, m815d2 = {"Lgogolook/callgogolook2/util/calllog/GgaLogsUtils;", "", "()V", "LOG_TAG", "", "kotlin.jvm.PlatformType", "MONTH_TIME_IN_MILLS", "", "TYPE_IN", "TYPE_MISSED", "TYPE_OUT", "V626RELEASE_DATE", "V626VERSION_CODE", "V627RELEASE_DATE", "V627VERSOIN_CODE", "doQueryAndHandleSmsLog", "", "startSendTime", "lastSendTime", "countLimit", "enqueueGgaCallLog", "enqueueGgaMissedCallLog", "versionRecords", "", "enqueueGgaSmsLog", "getLocalNumber", "getLocalTimeDelta", "handleCallLogGga", "logsGroupRealmObject", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "handleSmsLogGga", "ggaSmsLog", "Lgogolook/callgogolook2/util/calllog/GgaLogsUtils$GgaSmsLog;", "isHistoryData", "", "GgaSmsLog", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.z4.d */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d.class */
public final class C14339d {

    /* renamed from: e */
    public static final C14339d f32141e = new C14339d();

    /* renamed from: a */
    public static final String f32137a = f32137a;

    /* renamed from: a */
    public static final String f32137a = f32137a;

    /* renamed from: b */
    public static final String f32138b = f32138b;

    /* renamed from: b */
    public static final String f32138b = f32138b;

    /* renamed from: c */
    public static final String f32139c = f32139c;

    /* renamed from: c */
    public static final String f32139c = f32139c;

    /* renamed from: d */
    public static final String f32140d = f32140d;

    /* renamed from: d */
    public static final String f32140d = f32140d;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018�� $2\u00020\u0001:\u0001$B+\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015J<\u0010\u001d\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006%"}, m815d2 = {"Lgogolook/callgogolook2/util/calllog/GgaLogsUtils$GgaSmsLog;", "", "remoteNumber", "", "remoteE164", "status", "", "timestamp", "", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)V", "getRemoteE164", "()Ljava/lang/String;", "setRemoteE164", "(Ljava/lang/String;)V", "getRemoteNumber", "setRemoteNumber", "getStatus", "()I", "setStatus", "(I)V", "getTimestamp", "()Ljava/lang/Long;", "setTimestamp", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Lgogolook/callgogolook2/util/calllog/GgaLogsUtils$GgaSmsLog;", "equals", "", "other", "hashCode", "toString", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.w0.z4.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$a.class */
    public static final class C14340a {

        /* renamed from: a */
        public String f32144a;

        /* renamed from: b */
        public String f32145b;

        /* renamed from: c */
        public int f32146c;

        /* renamed from: d */
        public Long f32147d;

        /* renamed from: f */
        public static final C14341a f32143f = new C14341a(null);

        /* renamed from: e */
        public static final String[] f32142e = {"GROUP_CONCAT(participants.send_destination) AS send_destination", "GROUP_CONCAT(participants.normalized_destination) AS normalized_destination", "messages.message_status", "messages.received_timestamp"};

        /* renamed from: j.a.w0.z4.d$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$a$a.class */
        public static final class C14341a {
            public C14341a() {
            }

            public /* synthetic */ C14341a(C15145g gVar) {
                this();
            }

            /* renamed from: a */
            public final C14340a m1514a(Cursor cursor) {
                C15149k.m377b(cursor, "cursor");
                return new C14340a(cursor.getString(cursor.getColumnIndex("send_destination")), cursor.getString(cursor.getColumnIndex("normalized_destination")), cursor.getInt(cursor.getColumnIndex("message_status")), Long.valueOf(cursor.getLong(cursor.getColumnIndex("received_timestamp"))));
            }

            /* renamed from: a */
            public final String[] m1515a() {
                return C14340a.f32142e;
            }
        }

        public C14340a(String str, String str2, int i, Long l) {
            this.f32144a = str;
            this.f32145b = str2;
            this.f32146c = i;
            this.f32147d = l;
        }

        /* renamed from: a */
        public final String m1520a() {
            return this.f32145b;
        }

        /* renamed from: b */
        public final String m1519b() {
            return this.f32144a;
        }

        /* renamed from: c */
        public final int m1518c() {
            return this.f32146c;
        }

        /* renamed from: d */
        public final Long m1517d() {
            return this.f32147d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C14340a)) {
                return false;
            }
            C14340a aVar = (C14340a) obj;
            if (!C15149k.m384a((Object) this.f32144a, (Object) aVar.f32144a) || !C15149k.m384a((Object) this.f32145b, (Object) aVar.f32145b)) {
                return false;
            }
            return (this.f32146c == aVar.f32146c) && C15149k.m384a(this.f32147d, aVar.f32147d);
        }

        public int hashCode() {
            int hashCode;
            String str = this.f32144a;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f32145b;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            hashCode = Integer.valueOf(this.f32146c).hashCode();
            Long l = this.f32147d;
            if (l != null) {
                i = l.hashCode();
            }
            return (((((hashCode2 * 31) + hashCode3) * 31) + hashCode) * 31) + i;
        }

        public String toString() {
            return "GgaSmsLog(remoteNumber=" + this.f32144a + ", remoteE164=" + this.f32145b + ", status=" + this.f32146c + ", timestamp=" + this.f32147d + ")";
        }
    }

    /* renamed from: j.a.w0.z4.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$b.class */
    public static final class C14342b<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ long f32148a;

        public C14342b(long j) {
            this.f32148a = j;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            List<LogsGroupRealmObject> a = C13131j.m4552a(this.f32148a);
            if (a != null) {
                for (LogsGroupRealmObject logsGroupRealmObject : a) {
                    C14339d.f32141e.m1528a(logsGroupRealmObject);
                    Long date = logsGroupRealmObject.getDate();
                    C13915b3.m3057b("prefs_last_send_call_log_date", date != null ? date.longValue() : -1L);
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.w0.z4.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$c.class */
    public static final class C14343c<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C14343c f32149a = new C14343c();

        /* renamed from: a */
        public final void call(Void r2) {
        }
    }

    /* renamed from: j.a.w0.z4.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$d.class */
    public static final class C14344d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C14344d f32150a = new C14344d();

        /* renamed from: a */
        public final void call(Throwable th) {
        }
    }

    /* renamed from: j.a.w0.z4.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$e.class */
    public static final class C14345e<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ long f32151a;

        /* renamed from: b */
        public final /* synthetic */ long f32152b;

        public C14345e(long j, long j2) {
            this.f32151a = j;
            this.f32152b = j2;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            List<LogsGroupRealmObject> a = C13131j.m4552a(this.f32151a);
            if (a != null) {
                for (LogsGroupRealmObject logsGroupRealmObject : a) {
                    Long date = logsGroupRealmObject.getDate();
                    long longValue = date != null ? date.longValue() : 0L;
                    long j = this.f32152b;
                    long j2 = -1;
                    if (longValue >= j && j != -1) {
                        break;
                    }
                    C14339d.f32141e.m1528a(logsGroupRealmObject);
                    Long date2 = logsGroupRealmObject.getDate();
                    C13915b3.m3057b("prefs_last_send_missed_call_log_date", date2 != null ? date2.longValue() : -1L);
                    Long date3 = logsGroupRealmObject.getDate();
                    if (date3 != null) {
                        j2 = date3.longValue();
                    }
                    C13915b3.m3057b("prefs_last_send_call_log_date", j2);
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.w0.z4.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$f.class */
    public static final class C14346f<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C14346f f32153a = new C14346f();

        /* renamed from: a */
        public final void call(Void r2) {
        }
    }

    /* renamed from: j.a.w0.z4.d$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$g.class */
    public static final class C14347g<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C14347g f32154a = new C14347g();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.w0.z4.d$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$h.class */
    public static final class C14348h<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ long f32155a;

        /* renamed from: b */
        public final /* synthetic */ long f32156b;

        /* renamed from: c */
        public final /* synthetic */ int f32157c;

        public C14348h(long j, long j2, int i) {
            this.f32155a = j;
            this.f32156b = j2;
            this.f32157c = i;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            C14339d.f32141e.m1529a(this.f32155a, this.f32156b, String.valueOf(this.f32157c));
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.w0.z4.d$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$i.class */
    public static final class C14349i<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C14349i f32158a = new C14349i();

        /* renamed from: a */
        public final void call(Void r2) {
        }
    }

    /* renamed from: j.a.w0.z4.d$j */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/d$j.class */
    public static final class C14350j<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C14350j f32159a = new C14350j();

        /* renamed from: a */
        public final void call(Throwable th) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1530a() {
        /*
            java.lang.String r0 = "prefs_last_send_call_log_date"
            r1 = -1
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r5 = r0
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0019
            long r0 = java.lang.System.currentTimeMillis()
            r1 = 2592000000(0x9a7ec800, double:1.280618154E-314)
            long r0 = r0 - r1
            r7 = r0
        L_0x0019:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003a
            j.a.w0.z4.d$b r0 = new j.a.w0.z4.d$b
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            rx.Single r0 = p660rx.Single.create(r0)
            rx.Scheduler r1 = p459j.p460a.p582w0.C14174u.m2294j()
            rx.Single r0 = r0.subscribeOn(r1)
            j.a.w0.z4.d$c r1 = p459j.p460a.p582w0.p594z4.C14339d.C14343c.f32149a
            j.a.w0.z4.d$d r2 = p459j.p460a.p582w0.p594z4.C14339d.C14344d.f32150a
            rx.Subscription r0 = r0.subscribe(r1, r2)
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14339d.m1530a():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1524a(java.util.List<java.lang.String> r7) {
        /*
            r0 = r7
            java.lang.String r1 = "versionRecords"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r7
            java.lang.String r1 = p459j.p460a.p582w0.p594z4.C14339d.f32138b
            boolean r0 = r0.contains(r1)
            r8 = r0
            r0 = r7
            java.lang.String r1 = p459j.p460a.p582w0.p594z4.C14339d.f32140d
            boolean r0 = r0.contains(r1)
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0023
            r0 = r9
            if (r0 != 0) goto L_0x0023
            return
        L_0x0023:
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            r1 = r0
            java.lang.String r2 = "yyyy/MM/dd"
            r1.<init>(r2)
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0038
            java.lang.String r0 = p459j.p460a.p582w0.p594z4.C14339d.f32137a
            r7 = r0
            goto L_0x003c
        L_0x0038:
            java.lang.String r0 = p459j.p460a.p582w0.p594z4.C14339d.f32139c
            r7 = r0
        L_0x003c:
            r0 = r10
            r1 = r7
            java.util.Date r0 = r0.parse(r1)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "format.parse(if (isAppEv…TE else V627RELEASE_DATE)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r7
            long r0 = r0.getTime()
            r11 = r0
            java.lang.String r0 = "prefs_last_send_missed_call_log_date"
            r1 = -1
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r13 = r0
            java.lang.String r0 = "app_update_time"
            r1 = -1
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r15 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006d
            r0 = r13
            r11 = r0
        L_0x006d:
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0075
            return
        L_0x0075:
            java.lang.String r0 = "prefs_last_send_call_log_date"
            r1 = -1
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r17 = r0
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0088
            return
        L_0x0088:
            r0 = r17
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x00a3
            r0 = r17
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00a3
            r0 = r13
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00a3
            return
        L_0x00a3:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00c8
            j.a.w0.z4.d$e r0 = new j.a.w0.z4.d$e
            r1 = r0
            r2 = r11
            r3 = r17
            r1.<init>(r2, r3)
            rx.Single r0 = p660rx.Single.create(r0)
            rx.Scheduler r1 = p459j.p460a.p582w0.C14174u.m2294j()
            rx.Single r0 = r0.subscribeOn(r1)
            j.a.w0.z4.d$f r1 = p459j.p460a.p582w0.p594z4.C14339d.C14346f.f32153a
            j.a.w0.z4.d$g r2 = p459j.p460a.p582w0.p594z4.C14339d.C14347g.f32154a
            rx.Subscription r0 = r0.subscribe(r1, r2)
        L_0x00c8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14339d.m1524a(java.util.List):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1523b() {
        /*
            java.lang.String r0 = "prefs_last_send_sms_log_date"
            r1 = -1
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001a
            long r0 = java.lang.System.currentTimeMillis()
            r1 = 2592000000(0x9a7ec800, double:1.280618154E-314)
            long r0 = r0 - r1
            r10 = r0
            goto L_0x001c
        L_0x001a:
            r0 = r8
            r10 = r0
        L_0x001c:
            j.a.u.c r0 = p459j.p460a.p568u.C13640c.m3745d()
            java.lang.String r1 = "sms_log_data_first_sync_count"
            long r0 = r0.m3748b(r1)
            int r0 = (int) r0
            r12 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0050
            r0 = r12
            if (r0 <= 0) goto L_0x0050
            j.a.w0.z4.d$h r0 = new j.a.w0.z4.d$h
            r1 = r0
            r2 = r10
            r3 = r8
            r4 = r12
            r1.<init>(r2, r3, r4)
            rx.Single r0 = p660rx.Single.create(r0)
            rx.Scheduler r1 = p459j.p460a.p582w0.C14174u.m2294j()
            rx.Single r0 = r0.subscribeOn(r1)
            j.a.w0.z4.d$i r1 = p459j.p460a.p582w0.p594z4.C14339d.C14349i.f32158a
            j.a.w0.z4.d$j r2 = p459j.p460a.p582w0.p594z4.C14339d.C14350j.f32159a
            rx.Subscription r0 = r0.subscribe(r1, r2)
        L_0x0050:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14339d.m1523b():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
        if (r4 != null) goto L_0x0061;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (p459j.p460a.p582w0.C13915b3.m3062a("is_owner_of_verified_number", true) != false) goto L_0x0055;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m1522c() {
        /*
            java.lang.String r0 = ""
            r3 = r0
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2484d()     // Catch: all -> 0x0069
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002d
            r0 = r4
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)     // Catch: all -> 0x0069
            r0 = r4
            if (r0 == 0) goto L_0x002d
            r0 = r4
            boolean r0 = p626l.p631e0.C14966w.m724a(r0)     // Catch: all -> 0x0069
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0024
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r4 = r0
        L_0x0026:
            r0 = r4
            if (r0 == 0) goto L_0x002d
        L_0x002a:
            goto L_0x0061
        L_0x002d:
            java.lang.String r0 = p459j.p460a.p582w0.C14137r4.m2374d()     // Catch: all -> 0x0069
            r7 = r0
            r0 = r5
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0061
            r0 = r7
            boolean r0 = p626l.p631e0.C14966w.m724a(r0)     // Catch: all -> 0x0069
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0053
            java.lang.String r0 = "is_owner_of_verified_number"
            r1 = 1
            boolean r0 = p459j.p460a.p582w0.C13915b3.m3062a(r0, r1)     // Catch: all -> 0x0069
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0053
            goto L_0x0055
        L_0x0053:
            r0 = 0
            r6 = r0
        L_0x0055:
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0061
            r0 = r7
            r4 = r0
            goto L_0x002a
        L_0x0061:
            r0 = r4
            if (r0 == 0) goto L_0x0067
            r0 = r4
            r3 = r0
        L_0x0067:
            r0 = r3
            return r0
        L_0x0069:
            r4 = move-exception
            goto L_0x0067
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14339d.m1522c():java.lang.String");
    }

    /* renamed from: d */
    public static final String m1521d() {
        TimeZone timeZone = TimeZone.getDefault();
        C15149k.m383a((Object) timeZone, "TimeZone.getDefault()");
        return String.valueOf(timeZone.getRawOffset() / 3600000.0f);
    }

    /* renamed from: a */
    public final void m1529a(long j, long j2, String str) {
        Long d;
        Trace b = C10062a.m13512b("sms_log_data_db_performance");
        Context o = MyApplication.m29013o();
        ArrayList<C14340a> arrayList = new ArrayList();
        int a = C13915b3.m3066a("prefs_is_old_sms_log", 1);
        String str2 = a == 1 ? "messages.received_timestamp DESC LIMIT " + str : "messages.received_timestamp DESC";
        C15149k.m383a((Object) o, "context");
        Cursor query = o.getContentResolver().query(MessagingContentProvider.f11177e, C14340a.f32143f.m1515a(), "messages.message_status > 0 AND messages.received_timestamp > ?", new String[]{String.valueOf(j)}, str2);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(C14340a.f32143f.m1514a(query));
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            C14989s sVar = C14989s.f33022a;
            C15086c.m447a(query, null);
        }
        for (C14340a aVar : arrayList) {
            f32141e.m1527a(aVar, a);
        }
        if (arrayList.size() > 0 && (d = ((C14340a) arrayList.get(0)).m1517d()) != null) {
            C13915b3.m3057b("prefs_last_send_sms_log_date", d.longValue());
        }
        if (a == 1) {
            C13915b3.m3048d("prefs_is_old_sms_log", 0);
        }
        b.stop();
    }

    @WorkerThread
    /* renamed from: a */
    public final void m1528a(LogsGroupRealmObject logsGroupRealmObject) {
        long j;
        int i;
        String n;
        Locale locale;
        JSONObject jSONObject = new JSONObject();
        Long date = logsGroupRealmObject.getDate();
        long longValue = date != null ? date.longValue() : 0L;
        Integer type = logsGroupRealmObject.getType();
        int intValue = type != null ? type.intValue() : 0;
        if (logsGroupRealmObject.getRef_id() != null) {
            Integer ref_id = logsGroupRealmObject.getRef_id();
            if (ref_id != null) {
                j = Long.parseLong(String.valueOf(ref_id.intValue()));
            } else {
                C15149k.m378b();
                throw null;
            }
        } else {
            j = -1;
        }
        if (logsGroupRealmObject.getDuration() != null) {
            Long duration = logsGroupRealmObject.getDuration();
            if (duration != null) {
                i = Integer.parseInt(String.valueOf(duration.longValue()));
            } else {
                C15149k.m378b();
                throw null;
            }
        } else {
            i = 0;
        }
        String number = logsGroupRealmObject.getNumber();
        if (j <= 0) {
            return;
        }
        if (intValue == 17 || intValue == 19 || intValue == 18) {
            try {
                TimeZone timeZone = TimeZone.getDefault();
                C15149k.m383a((Object) timeZone, "TimeZone.getDefault()");
                jSONObject.put("local_timedelta", timeZone.getRawOffset() / 3600000.0f);
                jSONObject.put("local_db_id", j);
                jSONObject.put("remote_num", number);
                jSONObject.put("remote_e164", logsGroupRealmObject.getE164());
                jSONObject.put("remote_call_duration", i);
                jSONObject.put("remote_call_time", longValue);
                jSONObject.put("remote_call_type", intValue != 17 ? intValue != 18 ? "missed" : "out" : "in");
                jSONObject.put("remote_is_contact", !C14217x3.m2160b(C14217x3.m2146e(MyApplication.m29013o(), number)));
                PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
                try {
                    n = C14017g4.m2810n();
                    C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                    locale = Locale.US;
                    C15149k.m383a((Object) locale, "Locale.US");
                } catch (NumberParseException e) {
                    jSONObject.put("remote_country_code", "");
                }
                if (n != null) {
                    String upperCase = n.toUpperCase(locale);
                    C15149k.m383a((Object) upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    Phonenumber.PhoneNumber parse = instance.parse(number, upperCase);
                    C15149k.m383a((Object) parse, "phoneUtil.parse(number, …).toUpperCase(Locale.US))");
                    String regionCodeForNumber = instance.getRegionCodeForNumber(parse);
                    if (regionCodeForNumber == null) {
                        regionCodeForNumber = "";
                    }
                    jSONObject.put("remote_country_code", regionCodeForNumber);
                    jSONObject.put("local_num", m1522c());
                    C14296p.m1825a(jSONObject);
                    C14261f.m1974a("call_log_gga_batched", (Bundle) null);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            } catch (Exception e2) {
                C13973d4.m2952a(e2);
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m1527a(C14340a aVar, int i) {
        String str;
        NumInfo numInfo;
        String n;
        Locale locale;
        new JSONObject();
        Long d = aVar.m1517d();
        long longValue = d != null ? d.longValue() : 0L;
        String str2 = MessageData.m27611b(aVar.m1518c()) ? "in" : "out";
        try {
            String b = aVar.m1519b();
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            try {
                n = C14017g4.m2810n();
                C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                locale = Locale.US;
                C15149k.m383a((Object) locale, "Locale.US");
            } catch (NumberParseException e) {
                str = null;
            }
            if (n != null) {
                String upperCase = n.toUpperCase(locale);
                C15149k.m383a((Object) upperCase, "(this as java.lang.String).toUpperCase(locale)");
                Phonenumber.PhoneNumber parse = instance.parse(b, upperCase);
                C15149k.m383a((Object) parse, "phoneUtil.parse(number, …).toUpperCase(Locale.US))");
                str = instance.getRegionCodeForNumber(parse);
                if (aVar.m1520a() != null) {
                    String a = aVar.m1520a();
                    if (a != null) {
                        String n2 = C14017g4.m2810n();
                        C15149k.m383a((Object) n2, "UtilsInfo.getRegionCode()");
                        numInfo = C6384a.m22871a(a, n2);
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                } else {
                    numInfo = null;
                }
                C14296p.C14297a.C14298a aVar2 = new C14296p.C14297a.C14298a();
                if (str == null) {
                    str = "";
                }
                aVar2.m1807a("remote_country_code", str);
                aVar2.m1807a("remote_num", b);
                aVar2.m1807a("remote_e164", aVar.m1520a());
                aVar2.m1807a("remote_name", numInfo != null ? numInfo.name : null);
                aVar2.m1807a("remote_spam", numInfo != null ? numInfo.spam : null);
                aVar2.m1807a("remote_type", str2);
                aVar2.m1807a("local_num", m1522c());
                aVar2.m1807a("remote_sms_time", String.valueOf(longValue));
                aVar2.m1807a("local_timedelta", m1521d());
                aVar2.m1808a("remote_is_contact", Integer.valueOf(C14217x3.m2133i(MyApplication.m29013o(), b) ? 1 : 0));
                aVar2.m1808a("remote_is_history", Integer.valueOf(i));
                C14296p.m1830a("whoscall_sms_log_data", aVar2.m1811a());
                C14261f.m1974a("sms_log_gga_batched", (Bundle) null);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
