package p193e.p194a.p1195s.p1212s;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callhero_assistant.data.ScreenedCall;
import com.truecaller.callhero_assistant.data.ScreenedCallMessage;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1195s.p1197k.p1198c.C20023a;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.s.s.f */
/* loaded from: classes17-dex2jar.jar:e/a/s/s/f.class */
public final class C20180f implements AbstractC20179e {

    /* renamed from: a */
    public final String[] f56860a = {"initiated", "ringing", "answered"};

    /* renamed from: b */
    public final c f56861b = g.a(false, 1);

    /* renamed from: c */
    public final int f56862c;

    /* renamed from: d */
    public final f f56863d;

    /* renamed from: e */
    public final ContentResolver f56864e;

    /* renamed from: f */
    public final AbstractC20177c f56865f;

    /* renamed from: g */
    public final AbstractC20102d f56866g;

    /* renamed from: h */
    public final AbstractC19222c f56867h;

    @e(c = "com.truecaller.callhero_assistant.utils.ScreenedCallsManagerImpl$getCalls$2", f = "ScreenedCallsManager.kt", l = {84}, m = "invokeSuspend")
    /* renamed from: e.a.s.s.f$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/s/f$a.class */
    public static final class C20181a extends i implements p<i0, d<? super C20023a>, Object> {

        /* renamed from: e */
        public int f56868e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20181a(d dVar) {
            super(2, dVar);
            C20180f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11412i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20181a(dVar);
        }

        /* renamed from: k */
        public final Object m11411k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20181a(dVar).m11410s(s.a);
        }

        /* renamed from: s */
        public final Object m11410s(Object obj) {
            C20023a c20023a;
            a aVar = a.a;
            int i = this.f56868e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Cursor query = C20180f.this.f56864e.query(C17891a1.C17902k.m15666K(), null, null, null, "created_at DESC");
                if (query == null) {
                    c20023a = null;
                    return c20023a;
                }
                l.d(query, "it");
                C20023a c20023a2 = new C20023a(query);
                this.f56868e = 1;
                Object m13518r = C19291g.m13518r(c20023a2, this);
                obj = m13518r;
                if (m13518r == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            c20023a = (C20023a) obj;
            return c20023a;
        }
    }

    @e(c = "com.truecaller.callhero_assistant.utils.ScreenedCallsManagerImpl$syncCallsIfNeeded$1", f = "ScreenedCallsManager.kt", l = {180, 69}, m = "invokeSuspend")
    /* renamed from: e.a.s.s.f$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/s/f$b.class */
    public static final class C20182b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f56870e;

        /* renamed from: f */
        public int f56871f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20182b(d dVar) {
            super(2, dVar);
            C20180f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11409i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20182b(dVar);
        }

        /* renamed from: k */
        public final Object m11408k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20182b(dVar).m11407s(s.a);
        }

        /* renamed from: s */
        public final Object m11407s(Object obj) {
            c cVar;
            c cVar2;
            a aVar = a.a;
            int i = this.f56871f;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c cVar3 = C20180f.this.f56861b;
                    this.f56870e = cVar3;
                    this.f56871f = 1;
                    cVar = cVar3;
                    if (cVar3.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar4 = (c) this.f56870e;
                    cVar2 = cVar4;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar4;
                        cVar2 = cVar;
                        s sVar = s.a;
                        cVar.c((Object) null);
                        return sVar;
                    } catch (Throwable th) {
                        th = th;
                        cVar = cVar2;
                        cVar.c((Object) null);
                        throw th;
                    }
                } else {
                    C25225a.m3932a3(obj);
                    cVar = (c) this.f56870e;
                }
                C20180f c20180f = C20180f.this;
                this.f56870e = cVar;
                this.f56871f = 2;
                if (c20180f.m11413d(this) == aVar) {
                    return aVar;
                }
                cVar2 = cVar;
                s sVar2 = s.a;
                cVar.c((Object) null);
                return sVar2;
            } catch (Throwable th2) {
                th = th2;
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    /* renamed from: e.a.s.s.f$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/s/f$c.class */
    public static final class C20183c<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(((ScreenedCall) t2).getCreatedAt(), ((ScreenedCall) t).getCreatedAt());
        }
    }

    @e(c = "com.truecaller.callhero_assistant.utils.ScreenedCallsManagerImpl", f = "ScreenedCallsManager.kt", l = {106}, m = "syncCallsInternal")
    /* renamed from: e.a.s.s.f$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/s/f$d.class */
    public static final class C20184d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f56873d;

        /* renamed from: e */
        public int f56874e;

        /* renamed from: g */
        public Object f56876g;

        /* renamed from: h */
        public Object f56877h;

        /* renamed from: i */
        public long f56878i;

        /* renamed from: j */
        public long f56879j;

        /* renamed from: k */
        public int f56880k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20184d(d dVar) {
            super(dVar);
            C20180f.this = r4;
        }

        /* renamed from: s */
        public final Object m11406s(Object obj) {
            this.f56873d = obj;
            this.f56874e |= Integer.MIN_VALUE;
            return C20180f.this.m11413d(this);
        }
    }

    @Inject
    public C20180f(int i, @Named("IO") f fVar, ContentResolver contentResolver, AbstractC20177c abstractC20177c, AbstractC20102d abstractC20102d, AbstractC19222c abstractC19222c) {
        l.e(fVar, "ioContext");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC20177c, "callAssistantSettings");
        l.e(abstractC20102d, "restAdapter");
        l.e(abstractC19222c, "clock");
        this.f56862c = i;
        this.f56863d = fVar;
        this.f56864e = contentResolver;
        this.f56865f = abstractC20177c;
        this.f56866g = abstractC20102d;
        this.f56867h = abstractC19222c;
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20179e
    /* renamed from: a */
    public void mo11416a() {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f56863d, (j0) null, new C20182b(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20179e
    /* renamed from: b */
    public Object mo11415b(d<? super C20023a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f56863d, new C20181a(null), dVar);
    }

    /* renamed from: c */
    public final void m11414c(List<ScreenedCall> list) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (ScreenedCall screenedCall : list) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C17891a1.C17902k.m15666K());
            l.e(screenedCall, "$this$toContentValues");
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", screenedCall.getId());
            contentValues.put("to_number", screenedCall.getToNumber());
            contentValues.put("from_number", screenedCall.getFromNumber());
            contentValues.put("created_at", Long.valueOf(screenedCall.getCreatedAt().getTime()));
            contentValues.put(VastIconXmlManager.DURATION, Integer.valueOf(screenedCall.getDuration()));
            contentValues.put(AnalyticsConstants.LOCALE, screenedCall.getLocale());
            contentValues.put(UpdateKey.STATUS, screenedCall.getStatus());
            contentValues.put("is_voicemail", Boolean.valueOf(screenedCall.isVoicemail()));
            contentValues.put("originate_call_status", screenedCall.getOriginateCallStatus());
            contentValues.put("spam_model_prediction", screenedCall.getSpamModelPrediction());
            contentValues.put("intent", screenedCall.getIntent());
            arrayList.add(newInsert.withValues(contentValues).build());
            for (ScreenedCallMessage screenedCallMessage : screenedCall.getMessages()) {
                ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(Uri.withAppendedPath(C17891a1.f50888a, "screened_call_messages"));
                l.e(screenedCallMessage, "$this$toContentValues");
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("id", screenedCallMessage.getId());
                contentValues2.put("call_id", screenedCallMessage.getCallId());
                contentValues2.put("text", screenedCallMessage.getText());
                contentValues2.put("type", Integer.valueOf(screenedCallMessage.getType()));
                contentValues2.put("created_at", Long.valueOf(screenedCallMessage.getCreatedAt().getTime()));
                contentValues2.put("selected_option", screenedCallMessage.getSelectedOption());
                contentValues2.put("caller_action", screenedCallMessage.getCallerAction());
                arrayList.add(newInsert2.withValues(contentValues2).build());
            }
        }
        ContentResolver contentResolver = this.f56864e;
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01cf A[Catch: IOException | RuntimeException -> 0x02ee, TryCatch #0 {IOException | RuntimeException -> 0x02ee, blocks: (B:13:0x0077, B:24:0x0144, B:29:0x0198, B:31:0x01c7, B:33:0x01cf, B:38:0x01f2, B:41:0x0200, B:42:0x020b, B:45:0x0216, B:47:0x0230, B:49:0x0238, B:50:0x024e, B:53:0x0259, B:55:0x0262, B:57:0x026a, B:64:0x0294, B:66:0x02a7, B:68:0x02c2), top: B:77:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0216 A[Catch: IOException | RuntimeException -> 0x02ee, TRY_ENTER, TryCatch #0 {IOException | RuntimeException -> 0x02ee, blocks: (B:13:0x0077, B:24:0x0144, B:29:0x0198, B:31:0x01c7, B:33:0x01cf, B:38:0x01f2, B:41:0x0200, B:42:0x020b, B:45:0x0216, B:47:0x0230, B:49:0x0238, B:50:0x024e, B:53:0x0259, B:55:0x0262, B:57:0x026a, B:64:0x0294, B:66:0x02a7, B:68:0x02c2), top: B:77:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0294 A[Catch: IOException | RuntimeException -> 0x02ee, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException | RuntimeException -> 0x02ee, blocks: (B:13:0x0077, B:24:0x0144, B:29:0x0198, B:31:0x01c7, B:33:0x01cf, B:38:0x01f2, B:41:0x0200, B:42:0x020b, B:45:0x0216, B:47:0x0230, B:49:0x0238, B:50:0x024e, B:53:0x0259, B:55:0x0262, B:57:0x026a, B:64:0x0294, B:66:0x02a7, B:68:0x02c2), top: B:77:0x0077 }] */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0192 -> B:29:0x0198). Please submit an issue!!! */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m11413d(s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1195s.p1212s.C20180f.m11413d(s1.w.d):java.lang.Object");
    }
}
