package com.gogolook.whoscallsdk.p051ml.client;

import android.content.Context;
import com.gogolook.whoscallsdk.p051ml.callback.InferCallback;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import com.gogolook.whoscallsdk.p051ml.request.BatchRequest;
import com.gogolook.whoscallsdk.p051ml.request.SingleRequest;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.p196e.AbstractC6462b;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000bJ3\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0019R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\bX\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/client/SmsFilterClient;", "", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcherProvider", "Lcom/gogolook/whoscallsdk/ml/dispatcher/DispatcherProvider;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/gogolook/whoscallsdk/ml/dispatcher/DispatcherProvider;)V", "batchRequestChannel", "Lkotlinx/coroutines/channels/Channel;", "Lcom/gogolook/whoscallsdk/ml/request/BatchRequest;", "singleRequestChannel", "Lcom/gogolook/whoscallsdk/ml/request/SingleRequest;", "predict", "", "context", "Landroid/content/Context;", "batchRequest", "singleRequest", "predictInternal", "", "query", "", "modelType", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "region", "(Landroid/content/Context;Ljava/lang/String;Lcom/gogolook/whoscallsdk/ml/model/ModelType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient.class */
public final class SmsFilterClient {

    /* renamed from: a */
    public final Channel<SingleRequest> f6179a = ChannelKt.Channel$default(0, 1, null);

    /* renamed from: b */
    public final Channel<BatchRequest> f6180b = ChannelKt.Channel(-2);

    /* renamed from: c */
    public final CoroutineScope f6181c;

    /* renamed from: d */
    public final AbstractC6462b f6182d;

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$1", m472f = "SmsFilterClient.kt", m471l = {30, 33}, m470m = "invokeSuspend")
    /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$a.class */
    public static final class C3538a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6183a;

        /* renamed from: b */
        public int f6184b;

        /* renamed from: d */
        public final /* synthetic */ SingleRequest f6186d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3538a(SingleRequest singleRequest, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6186d = singleRequest;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3538a aVar = new C3538a(this.f6186d, dVar);
            aVar.f6183a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3538a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f6184b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C6442a.m22560a(this.f6183a, "send to single queue");
                Channel channel = SmsFilterClient.this.f6179a;
                SingleRequest singleRequest = this.f6186d;
                this.f6184b = 1;
                if (channel.send(singleRequest, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$2", m472f = "SmsFilterClient.kt", m471l = {35, 37, 42}, m470m = "invokeSuspend")
    /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$b */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$b.class */
    public static final class C3539b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6187a;

        /* renamed from: b */
        public Object f6188b;

        /* renamed from: c */
        public Object f6189c;

        /* renamed from: d */
        public Object f6190d;

        /* renamed from: e */
        public Object f6191e;

        /* renamed from: f */
        public Object f6192f;

        /* renamed from: g */
        public Object f6193g;

        /* renamed from: h */
        public Object f6194h;

        /* renamed from: i */
        public int f6195i;

        /* renamed from: j */
        public int f6196j;

        /* renamed from: l */
        public final /* synthetic */ Context f6198l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3539b(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6198l = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3539b bVar = new C3539b(this.f6198l, dVar);
            bVar.f6187a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3539b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:2|101|(2:4|(2:6|(3:8|9|(13:11|12|82|83|84|85|(2:87|88)|89|90|35|102|36|(41:38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|(2:79|80)(12:81|82|83|84|85|(0)|89|90|35|102|36|(4:92|93|97|98)(0)))(0))(3:13|14|15))(2:18|19))(2:20|(2:22|23)))(2:24|(2:26|(2:28|29))(2:99|100))|30|31|32|33|34|35|102|36|(0)(0)|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0253, code lost:
            r13 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0263, code lost:
            p081h.p160h.p179e.p192b.C6442a.m22561a(r8);
            r0 = "Single request exception : " + r13;
            r0 = r8.getCallback();
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x028b, code lost:
            if (r0 != null) goto L_0x028e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x028e, code lost:
            r0.onInferFailed(p626l.p632u.C15029u.m515k(r8.getInputData().getKeyValueMap().keySet()));
            r0 = p626l.C14989s.f33022a;
         */
        /* JADX WARN: Not initialized variable reg: 13, insn: 0x007d: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:17:0x007d */
        /* JADX WARN: Removed duplicated region for block: B:38:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0258  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0211 -> B:82:0x0219). Please submit an issue!!! */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 692
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient.C3539b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$3", m472f = "SmsFilterClient.kt", m471l = {54, 57}, m470m = "invokeSuspend")
    /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$c */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$c.class */
    public static final class C3540c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6199a;

        /* renamed from: b */
        public int f6200b;

        /* renamed from: d */
        public final /* synthetic */ BatchRequest f6202d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3540c(BatchRequest batchRequest, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6202d = batchRequest;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3540c cVar = new C3540c(this.f6202d, dVar);
            cVar.f6199a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3540c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f6200b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C6442a.m22560a(this.f6199a, "send to batch queue");
                Channel channel = SmsFilterClient.this.f6180b;
                BatchRequest batchRequest = this.f6202d;
                this.f6200b = 1;
                if (channel.send(batchRequest, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$4", m472f = "SmsFilterClient.kt", m471l = {59, 61, 120}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$d */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$d.class */
    public static final class C3541d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6203a;

        /* renamed from: b */
        public Object f6204b;

        /* renamed from: c */
        public Object f6205c;

        /* renamed from: d */
        public Object f6206d;

        /* renamed from: e */
        public Object f6207e;

        /* renamed from: f */
        public Object f6208f;

        /* renamed from: g */
        public Object f6209g;

        /* renamed from: h */
        public Object f6210h;

        /* renamed from: i */
        public Object f6211i;

        /* renamed from: j */
        public int f6212j;

        /* renamed from: k */
        public int f6213k;

        /* renamed from: l */
        public int f6214l;

        /* renamed from: m */
        public int f6215m;

        /* renamed from: o */
        public final /* synthetic */ Context f6217o;

        @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$4$1$1$batchJob$1", m472f = "SmsFilterClient.kt", m471l = {74, 99}, m470m = "invokeSuspend")
        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$4$1$1$batchJob$1", "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$4$$special$$inlined$forEachIndexed$lambda$1"}, m814k = 3, m813mv = {1, 1, 13})
        /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$d$a */
        /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$d$a.class */
        public static final class C3542a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f6218a;

            /* renamed from: b */
            public Object f6219b;

            /* renamed from: c */
            public Object f6220c;

            /* renamed from: d */
            public int f6221d;

            /* renamed from: e */
            public final /* synthetic */ List f6222e;

            /* renamed from: f */
            public final /* synthetic */ int f6223f;

            /* renamed from: g */
            public final /* synthetic */ BatchRequest f6224g;

            /* renamed from: h */
            public final /* synthetic */ C15162x f6225h;

            /* renamed from: i */
            public final /* synthetic */ C3541d f6226i;

            /* renamed from: j */
            public final /* synthetic */ CoroutineScope f6227j;

            @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient$predict$4$1$1$batchJob$1$1$1", m472f = "SmsFilterClient.kt", m471l = {81, 89}, m470m = "invokeSuspend")
            /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$d$a$a */
            /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$d$a$a.class */
            public static final class C3543a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14978j<? extends String, ? extends float[]>>, Object> {

                /* renamed from: a */
                public CoroutineScope f6228a;

                /* renamed from: b */
                public Object f6229b;

                /* renamed from: c */
                public Object f6230c;

                /* renamed from: d */
                public int f6231d;

                /* renamed from: e */
                public final /* synthetic */ String f6232e;

                /* renamed from: f */
                public final /* synthetic */ C3542a f6233f;

                /* renamed from: g */
                public final /* synthetic */ CoroutineScope f6234g;

                /* renamed from: h */
                public final /* synthetic */ List f6235h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C3543a(String str, AbstractC15044d dVar, C3542a aVar, CoroutineScope coroutineScope, List list) {
                    super(2, dVar);
                    this.f6232e = str;
                    this.f6233f = aVar;
                    this.f6234g = coroutineScope;
                    this.f6235h = list;
                }

                @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                    C15149k.m377b(dVar, "completion");
                    C3543a aVar = new C3543a(this.f6232e, dVar, this.f6233f, this.f6234g, this.f6235h);
                    aVar.f6228a = (CoroutineScope) obj;
                    return aVar;
                }

                @Override // p626l.p641z.p642c.AbstractC15122p
                public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14978j<? extends String, ? extends float[]>> dVar) {
                    return ((C3543a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
                }

                /* JADX WARN: Not initialized variable reg: 13, insn: 0x0107: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:47:0x0107 */
                @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                public final Object invokeSuspend(Object obj) {
                    C14978j jVar;
                    Object obj2;
                    CoroutineScope coroutineScope;
                    String str;
                    Object a = C15064c.m478a();
                    int i = this.f6231d;
                    try {
                        if (i != 0) {
                            if (i == 1) {
                                str = (String) this.f6230c;
                                coroutineScope = (CoroutineScope) this.f6229b;
                                if (obj instanceof C14979k.C14981b) {
                                    throw ((C14979k.C14981b) obj).f33014a;
                                }
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else if (!(obj instanceof C14979k.C14981b)) {
                            coroutineScope = this.f6228a;
                            str = this.f6232e;
                            SmsFilterClient smsFilterClient = SmsFilterClient.this;
                            Context context = this.f6233f.f6226i.f6217o;
                            String string = this.f6233f.f6224g.getInputData().getString(this.f6232e);
                            ModelType modelType = this.f6233f.f6224g.getModelType();
                            String region = this.f6233f.f6224g.getRegion();
                            this.f6229b = coroutineScope;
                            this.f6230c = str;
                            this.f6231d = 1;
                            obj = smsFilterClient.m32217a(context, string, modelType, region, this);
                            if (obj == a) {
                                return a;
                            }
                        } else {
                            throw ((C14979k.C14981b) obj).f33014a;
                        }
                        jVar = new C14978j(str, obj);
                    } catch (Exception e) {
                        C6442a.m22561a(obj2);
                        String str2 = "Async coroutine exception : " + e + ", key = " + this.f6232e;
                        jVar = new C14978j(this.f6232e, null);
                    }
                    return jVar;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3542a(List list, int i, AbstractC15044d dVar, BatchRequest batchRequest, C15162x xVar, C3541d dVar2, CoroutineScope coroutineScope) {
                super(2, dVar);
                this.f6222e = list;
                this.f6223f = i;
                this.f6224g = batchRequest;
                this.f6225h = xVar;
                this.f6226i = dVar2;
                this.f6227j = coroutineScope;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C3542a aVar = new C3542a(this.f6222e, this.f6223f, dVar, this.f6224g, this.f6225h, this.f6226i, this.f6227j);
                aVar.f6218a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C3542a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:106:0x024e  */
            /* JADX WARN: Type inference failed for: r0v59, types: [java.util.List, java.util.Collection, java.lang.Object, java.util.ArrayList] */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                /*
                    Method dump skipped, instructions count: 612
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient.C3541d.C3542a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$d$b */
        /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$d$b.class */
        public static final class C3544b extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

            /* renamed from: a */
            public final /* synthetic */ BatchRequest f6236a;

            /* renamed from: b */
            public final /* synthetic */ C15162x f6237b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3544b(BatchRequest batchRequest, C15162x xVar, C3541d dVar, CoroutineScope coroutineScope) {
                super(1);
                this.f6236a = batchRequest;
                this.f6237b = xVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
                invoke2(th);
                return C14989s.f33022a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                InferCallback callback;
                C15162x xVar = this.f6237b;
                xVar.f33150a--;
                if (xVar.f33150a == 0 && (callback = this.f6236a.getCallback()) != null) {
                    callback.onInferComplete();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3541d(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6217o = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3541d dVar2 = new C3541d(this.f6217o, dVar);
            dVar2.f6203a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3541d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x021e  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0378  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0327 -> B:51:0x0345). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0364 -> B:53:0x036a). Please submit an issue!!! */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 900
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient.C3541d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/client/SmsFilterClient", m472f = "SmsFilterClient.kt", m471l = {127, 130, 127}, m470m = "predictInternal")
    /* renamed from: com.gogolook.whoscallsdk.ml.client.SmsFilterClient$e */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/client/SmsFilterClient$e.class */
    public static final class C3545e extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f6238a;

        /* renamed from: b */
        public int f6239b;

        /* renamed from: d */
        public Object f6241d;

        /* renamed from: e */
        public Object f6242e;

        /* renamed from: f */
        public Object f6243f;

        /* renamed from: g */
        public Object f6244g;

        /* renamed from: h */
        public Object f6245h;

        public C3545e(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f6238a = obj;
            this.f6239b |= Integer.MIN_VALUE;
            return SmsFilterClient.this.m32217a(null, null, null, null, this);
        }
    }

    public SmsFilterClient(CoroutineScope coroutineScope, AbstractC6462b bVar) {
        C15149k.m377b(coroutineScope, "coroutineScope");
        C15149k.m377b(bVar, "dispatcherProvider");
        this.f6181c = coroutineScope;
        this.f6182d = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m32217a(android.content.Context r8, java.lang.String r9, com.gogolook.whoscallsdk.p051ml.model.ModelType r10, java.lang.String r11, p626l.p634w.AbstractC15044d<? super float[]> r12) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient.m32217a(android.content.Context, java.lang.String, com.gogolook.whoscallsdk.ml.model.ModelType, java.lang.String, l.w.d):java.lang.Object");
    }

    public final void predict(Context context, BatchRequest batchRequest) {
        C15149k.m377b(context, "context");
        C15149k.m377b(batchRequest, "batchRequest");
        BuildersKt__Builders_commonKt.launch$default(this.f6181c, new CoroutineName("QueueBatchRequest").plus(this.f6182d.mo22524b()), null, new C3540c(batchRequest, null), 2, null);
        BuildersKt__Builders_commonKt.launch$default(this.f6181c, new CoroutineName("ReceiveBatchRequest").plus(this.f6182d.mo22524b()), null, new C3541d(context, null), 2, null);
    }

    public final void predict(Context context, SingleRequest singleRequest) {
        C15149k.m377b(context, "context");
        C15149k.m377b(singleRequest, "singleRequest");
        BuildersKt__Builders_commonKt.launch$default(this.f6181c, new CoroutineName("QueueSingleRequest").plus(this.f6182d.mo22524b()), null, new C3538a(singleRequest, null), 2, null);
        BuildersKt__Builders_commonKt.launch$default(this.f6181c, new CoroutineName("ReceiveSingleRequest").plus(this.f6182d.mo22524b()), null, new C3539b(context, null), 2, null);
    }
}
