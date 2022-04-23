package p459j.p460a.p474c0.p488f.p490q;

import android.content.ContentValues;
import android.content.Context;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.gogolook.whoscallsdk.p051ml.MLSdkManager;
import com.gogolook.whoscallsdk.p051ml.callback.InferCallback;
import com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient;
import com.gogolook.whoscallsdk.p051ml.model.ModelStatus;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import com.gogolook.whoscallsdk.p051ml.request.BatchRequest;
import com.gogolook.whoscallsdk.p051ml.request.Data;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11837k;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p489p.C11846b;
import p459j.p460a.p474c0.p488f.p489p.C11848c;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14172t3;
import p459j.p460a.p582w0.p585b5.C13930d;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p632u.C15029u;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0003./0B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0014\u0010\u001a\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00120\u001cJ\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\b\u001a\u00020 J\u0018\u0010!\u001a\u00020\u00042\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u001cH\u0007J\u0016\u0010#\u001a\u00020\u00042\u000e\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u001cJ\u000e\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010&\u001a\u00020\u0017J,\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00122\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020-H\u0007¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/InferHelper;", "", "()V", "batchInferHistoryMessages", "", "context", "Landroid/content/Context;", "downloadModel", "callback", "Lgogolook/callgogolook2/messaging/sms/job/InferHelper$ModelDownloadCallback;", "getInferMethod", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod;", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod$InferCallback;", "getSpamThreshold", "", "handleBatchInferFail", "keyList", "", "", "handleBatchInferSuccess", "successData", "Lgogolook/callgogolook2/messaging/sms/job/InferHelper$BatchInferSuccess;", "isNeedInfer", "", "data", "Lgogolook/callgogolook2/messaging/datamodel/data/UnfilteredMessageData;", "notifyInferSuccess", "conversationIdList", "", "performBatchInfer", "inputDataBuilder", "Lcom/gogolook/whoscallsdk/ml/request/Data$Builder;", "Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "setSkipInferMessagesToNormal", "skipIdList", "setSkipInferMessagesToNormalInBackground", "idList", "shouldSkipAtHistoryInfer", "shouldStartHistoryBatchInfer", "updateMessageFilterType", "dbWrapper", "Lgogolook/callgogolook2/messaging/datamodel/DatabaseWrapper;", "conversationId", "messageId", "filterType", "", "BatchInferSuccess", "ModelDownloadCallback", "SingleInferSuccess", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e.class */
public final class C11876e {

    /* renamed from: j.a.c0.f.q.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$a.class */
    public static final class C11877a extends AbstractC11893j.AbstractC11894a.C11896b {

        /* renamed from: a */
        public final ConcurrentHashMap<String, Integer> f26650a;

        public C11877a(ConcurrentHashMap<String, Integer> concurrentHashMap) {
            C15149k.m377b(concurrentHashMap, "msgIdToFilterTypeMap");
            this.f26650a = concurrentHashMap;
        }

        /* renamed from: a */
        public final ConcurrentHashMap<String, Integer> m8000a() {
            return this.f26650a;
        }
    }

    /* renamed from: j.a.c0.f.q.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$b.class */
    public interface AbstractC11878b {
        /* renamed from: a */
        void mo7999a();

        /* renamed from: b */
        void mo7998b();
    }

    /* renamed from: j.a.c0.f.q.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$c.class */
    public static final class C11879c extends AbstractC11893j.AbstractC11894a.C11896b {

        /* renamed from: a */
        public final int f26651a;

        /* renamed from: b */
        public final Float f26652b;

        /* renamed from: c */
        public final Float f26653c;

        public C11879c(int i, Float f, Float f2) {
            this.f26651a = i;
            this.f26652b = f;
            this.f26653c = f2;
        }

        /* renamed from: a */
        public final int m7997a() {
            return this.f26651a;
        }

        /* renamed from: b */
        public final Float m7996b() {
            return this.f26652b;
        }

        /* renamed from: c */
        public final Float m7995c() {
            return this.f26653c;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/InferHelper$downloadModel$1", m472f = "InferHelper.kt", m471l = {49}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$d.class */
    public static final class C11880d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26654a;

        /* renamed from: b */
        public int f26655b;

        /* renamed from: c */
        public final /* synthetic */ C13930d f26656c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC11878b f26657d;

        /* renamed from: j.a.c0.f.q.e$d$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$d$a.class */
        public static final class C11881a implements Observer<ModelStatus> {
            public C11881a() {
            }

            /* renamed from: a */
            public void onChanged(ModelStatus modelStatus) {
                if (modelStatus instanceof ModelStatus.DownloadFinished) {
                    C11880d.this.f26656c.m3017f();
                    C11880d.this.f26657d.mo7999a();
                    MLSdkManager.INSTANCE.getModelStatusLiveData().removeObserver(this);
                    C11837k.m8067a(true, C11880d.this.f26656c.m3025a());
                } else if (modelStatus instanceof ModelStatus.C3548c) {
                    C11880d.this.f26656c.m3017f();
                    C11880d.this.f26657d.mo7998b();
                    MLSdkManager.INSTANCE.getModelStatusLiveData().removeObserver(this);
                    C11837k.m8067a(false, C11880d.this.f26656c.m3025a());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11880d(C13930d dVar, AbstractC11878b bVar, AbstractC15044d dVar2) {
            super(2, dVar2);
            this.f26656c = dVar;
            this.f26657d = bVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11880d dVar2 = new C11880d(this.f26656c, this.f26657d, dVar);
            dVar2.f26654a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11880d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f26655b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                MLSdkManager.INSTANCE.getModelStatusLiveData().observe(ProcessLifecycleOwner.get(), new C11881a());
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/InferHelper$setSkipInferMessagesToNormalInBackground$1", m472f = "InferHelper.kt", m471l = {144}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.f.q.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/e$e.class */
    public static final class C11882e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26659a;

        /* renamed from: b */
        public int f26660b;

        /* renamed from: d */
        public final /* synthetic */ Collection f26662d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11882e(Collection collection, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26662d = collection;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11882e eVar = new C11882e(this.f26662d, dVar);
            eVar.f26659a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11882e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f26660b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11876e.this.m8002b(this.f26662d);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static /* synthetic */ void m8007a(C11876e eVar, C11534l lVar, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        eVar.m8011a(lVar, str, str2, i);
    }

    /* renamed from: a */
    public final float m8015a() {
        return 0.8f;
    }

    /* renamed from: a */
    public final AbstractC11844a m8009a(AbstractC11844a.AbstractC11845a aVar) {
        C15149k.m377b(aVar, "callback");
        return C12758e.m5408h() ? new C11848c(aVar) : C12758e.m5409g() ? new C11846b(aVar) : null;
    }

    /* renamed from: a */
    public final void m8014a(Context context) {
        C15149k.m377b(context, "context");
        WorkManager.getInstance(context).enqueue(new OneTimeWorkRequest.Builder(HistoryBatchInferSmsWorker.class).build());
    }

    /* renamed from: a */
    public final void m8013a(Context context, AbstractC11878b bVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(bVar, "callback");
        C13930d dVar = new C13930d();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new C11880d(dVar, bVar, null), 3, null);
        String n = C14017g4.m2810n();
        dVar.m3018e();
        ModelType.SmsFilterRemote smsFilterRemote = ModelType.SmsFilterRemote.INSTANCE;
        C15149k.m383a((Object) n, "region");
        MLSdkManager.preDownload$default(context, smsFilterRemote, n, true, null, 16, null);
    }

    /* renamed from: a */
    public final void m8012a(Data.Builder builder, InferCallback inferCallback) {
        C15149k.m377b(builder, "inputDataBuilder");
        C15149k.m377b(inferCallback, "callback");
        BatchRequest build = new BatchRequest.Builder().setInputData(builder.build()).setModelType(ModelType.SmsFilterRemote.INSTANCE).setCallback(inferCallback).build();
        SmsFilterClient smsFilterClient = MLSdkManager.INSTANCE.getSmsFilterClient();
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        smsFilterClient.predict(o, build);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m8011a(C11534l lVar, String str, String str2, int i) {
        C15149k.m377b(lVar, "dbWrapper");
        C15149k.m377b(str2, "messageId");
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_filter_type", Integer.valueOf(i));
        C11521c.m9338d(lVar, str2, contentValues);
        if (str != null) {
            MessagingContentProvider.m27769e();
            MessagingContentProvider.m27766f(str);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m8008a(C11877a aVar) {
        C15149k.m377b(aVar, "successData");
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        C11534l f = k.mo9244f();
        for (Map.Entry<String, Integer> entry : aVar.m8000a().entrySet()) {
            C15149k.m383a((Object) f, "dbWrapper");
            m8007a(this, f, null, entry.getKey(), entry.getValue().intValue(), 2, null);
        }
    }

    /* renamed from: a */
    public final void m8006a(Collection<String> collection) {
        C15149k.m377b(collection, "conversationIdList");
        for (String str : collection) {
            MessagingContentProvider.m27766f(str);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m8005a(List<String> list) {
        C15149k.m377b(list, "keyList");
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        C11534l f = k.mo9244f();
        for (String str : list) {
            C15149k.m383a((Object) f, "dbWrapper");
            m8007a(this, f, null, str, 1, 2, null);
        }
    }

    /* renamed from: a */
    public final boolean m8010a(C11636q qVar) {
        C15149k.m377b(qVar, "data");
        return qVar.m8738f() && qVar.m8739e() && !qVar.m8740d();
    }

    @WorkerThread
    /* renamed from: b */
    public final void m8002b(Collection<String> collection) {
        C15149k.m377b(collection, "skipIdList");
        List<String> c = C15029u.m532c(collection);
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        C11534l f = k.mo9244f();
        for (String str : c) {
            C15149k.m383a((Object) f, "dbWrapper");
            m8007a(this, f, null, str, 1, 2, null);
        }
    }

    /* renamed from: b */
    public final boolean m8004b() {
        return !C12758e.m5410f() && C12758e.m5412d();
    }

    /* renamed from: b */
    public final boolean m8003b(C11636q qVar) {
        C15149k.m377b(qVar, "data");
        return !m8010a(qVar) || C12758e.m5410f();
    }

    /* renamed from: c */
    public final void m8001c(Collection<String> collection) {
        C15149k.m377b(collection, "idList");
        BuildersKt__Builders_commonKt.launch$default(new C14172t3(Dispatchers.getIO()), null, null, new C11882e(collection, null), 3, null);
    }
}
