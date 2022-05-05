package p081h.p160h.p179e.p192b.p197f.p200f;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import androidx.core.app.Person;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.p193c.C6455b;
import p081h.p160h.p179e.p192b.p197f.AbstractC6464a;
import p081h.p160h.p179e.p192b.p197f.C6465b;
import p081h.p160h.p179e.p192b.p197f.p199e.C6473a;
import p081h.p160h.p179e.p192b.p197f.p199e.C6474b;
import p081h.p160h.p179e.p192b.p201g.AbstractC6482a;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p640y.C15086c;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p646n.p649b.p650a.C15203c;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018�� $2\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001$B\u001d\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0096@ø\u0001��¢\u0006\u0002\u0010\u001bJ\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010\u001f\u001a\u00020\u001dH\u0016J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"H\u0002J\u0019\u0010#\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0096@ø\u0001��¢\u0006\u0002\u0010\u001bR\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/sms/SmsFilterModel;", "Lcom/gogolook/whoscallsdk/ml/model/Model;", "", "", "modelSource", "Lcom/gogolook/whoscallsdk/ml/source/ModelSource;", "Lorg/tensorflow/lite/Interpreter;", "modelConfig", "Lcom/gogolook/whoscallsdk/ml/model/ModelConfig;", "(Lcom/gogolook/whoscallsdk/ml/source/ModelSource;Lcom/gogolook/whoscallsdk/ml/model/ModelConfig;)V", "dic", "", "", "featureConverter", "Lcom/gogolook/whoscallsdk/ml/albert/FeatureConverter;", TtmlNode.TAG_METADATA, "Lcom/gogolook/whoscallsdk/ml/model/metadata/Metadata;", "modelInterpreter", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "infer", "input", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isConverterInitialized", "", "isInterpreterInitialized", "isModelInitialized", "loadDictionaryFile", "assetManager", "Landroid/content/res/AssetManager;", "preProcess", "Companion", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.f.f.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/f/b.class */
public class C6476b extends AbstractC6464a<String, float[]> {

    /* renamed from: c */
    public final Mutex f16135c = MutexKt.Mutex$default(false, 1, null);

    /* renamed from: d */
    public final Map<String, Integer> f16136d = new HashMap();

    /* renamed from: e */
    public C6455b f16137e;

    /* renamed from: f */
    public C15203c f16138f;

    /* renamed from: g */
    public C6473a f16139g;

    /* renamed from: h.h.e.b.f.f.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/f/b$a.class */
    public static final class C6477a {
        public C6477a() {
        }

        public /* synthetic */ C6477a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/sms/SmsFilterModel$infer$2", m472f = "SmsFilterModel.kt", m471l = {82, 141, 119}, m470m = "invokeSuspend")
    /* renamed from: h.h.e.b.f.f.b$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/f/b$b.class */
    public static final class C6478b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super float[]>, Object> {

        /* renamed from: a */
        public CoroutineScope f16140a;

        /* renamed from: b */
        public Object f16141b;

        /* renamed from: c */
        public Object f16142c;

        /* renamed from: d */
        public int f16143d;

        /* renamed from: e */
        public int f16144e;

        /* renamed from: g */
        public final /* synthetic */ String f16146g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6478b(String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f16146g = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6478b bVar = new C6478b(this.f16146g, dVar);
            bVar.f16140a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super float[]> dVar) {
            return ((C6478b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:2|(5:(2:4|(2:6|(4:8|111|9|(5:11|109|94|95|96)(2:12|13))(2:16|17))(2:18|(2:20|21)))(2:22|(2:24|(2:26|27)(1:28))(2:105|106))|109|94|95|96)|108|29|30|(4:33|(2:38|114)(2:37|115)|39|31)|113|40|107|(1:42)(2:43|(20:45|(1:47)(1:48)|49|50|(2:53|51)|116|54|55|(4:58|59|60|56)|117|61|62|(2:65|63)|118|66|(4:69|(2:71|120)(1:121)|72|67)|119|73|(2:82|83)(2:77|(1:79)(2:80|81))|84)(2:99|100))|85|86|(1:88)|89|90|(2:92|93)|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0309, code lost:
            r8 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x030d, code lost:
            r8 = th;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 802
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p192b.p197f.p200f.C6476b.C6478b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/sms/SmsFilterModel$init$2", m472f = "SmsFilterModel.kt", m471l = {77, 79}, m470m = "invokeSuspend")
    /* renamed from: h.h.e.b.f.f.b$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/f/b$c.class */
    public static final class C6479c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f16147a;

        /* renamed from: b */
        public Object f16148b;

        /* renamed from: c */
        public int f16149c;

        /* renamed from: e */
        public final /* synthetic */ Context f16151e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6479c(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f16151e = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6479c cVar = new C6479c(this.f16151e, dVar);
            cVar.f16147a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C6479c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            C6476b bVar;
            Object a = C15064c.m478a();
            int i = this.f16149c;
            if (i != 0) {
                if (i == 1) {
                    bVar = (C6476b) this.f16148b;
                    if (!(obj instanceof C14979k.C14981b)) {
                        obj2 = obj;
                    } else {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C6476b bVar2 = C6476b.this;
                AbstractC6482a b = bVar2.m22520b();
                Context context = this.f16151e;
                C6465b a2 = C6476b.this.m22521a();
                this.f16148b = bVar2;
                this.f16149c = 1;
                obj2 = b.mo22478a(context, a2, this);
                if (obj2 == a) {
                    return a;
                }
                bVar = bVar2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            bVar.f16138f = (C15203c) obj2;
            C6476b.this.f16139g = C6474b.f16134a.m22505a(this.f16151e);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/sms/SmsFilterModel$preProcess$2", m472f = "SmsFilterModel.kt", m471l = {44}, m470m = "invokeSuspend")
    /* renamed from: h.h.e.b.f.f.b$d */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/f/b$d.class */
    public static final class C6480d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f16152a;

        /* renamed from: b */
        public int f16153b;

        /* renamed from: d */
        public final /* synthetic */ Context f16155d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6480d(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f16155d = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6480d dVar2 = new C6480d(this.f16155d, dVar);
            dVar2.f16152a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C6480d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f16153b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f16152a;
                if (C6476b.this.m22486d()) {
                    return C14989s.f33022a;
                }
                try {
                    C6476b bVar = C6476b.this;
                    AssetManager assets = this.f16155d.getAssets();
                    C15149k.m383a((Object) assets, "context.assets");
                    bVar.m22501a(assets);
                    C6442a.m22561a(coroutineScope);
                } catch (IOException e) {
                    Log.e(C6442a.m22561a(coroutineScope), e.getMessage());
                }
                C6476b bVar2 = C6476b.this;
                bVar2.f16137e = new C6455b(bVar2.f16136d, 128);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        new C6477a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6476b(AbstractC6482a<C15203c> aVar, C6465b bVar) {
        super(aVar, bVar);
        C15149k.m377b(aVar, "modelSource");
        C15149k.m377b(bVar, "modelConfig");
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22499a(C6476b bVar, Context context, AbstractC15044d dVar) {
        return BuildersKt.withContext(bVar.m22521a().m22519a().mo22525a(), new C6479c(context, null), dVar);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22495a(C6476b bVar, String str, AbstractC15044d dVar) {
        return BuildersKt.withContext(bVar.m22521a().m22519a().mo22525a(), new C6478b(str, null), dVar);
    }

    /* renamed from: b */
    public static /* synthetic */ Object m22489b(C6476b bVar, Context context, AbstractC15044d dVar) {
        return BuildersKt.withContext(bVar.m22521a().m22519a().mo22525a(), new C6480d(context, null), dVar);
    }

    @Override // p081h.p160h.p179e.p192b.p197f.AbstractC6464a
    /* renamed from: a */
    public Object mo22502a(Context context, AbstractC15044d<? super C14989s> dVar) {
        return m22499a(this, context, dVar);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Object mo22493a(String str, AbstractC15044d<? super float[]> dVar) {
        return m22495a(this, str, dVar);
    }

    /* renamed from: a */
    public final void m22501a(AssetManager assetManager) throws IOException {
        InputStream open;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assetManager.open("vocab.txt")));
            int i = 0;
            while (bufferedReader.ready()) {
                String readLine = bufferedReader.readLine();
                Map<String, Integer> map = this.f16136d;
                C15149k.m383a((Object) readLine, Person.KEY_KEY);
                map.put(readLine, Integer.valueOf(i));
                i++;
            }
            C14989s sVar = C14989s.f33022a;
            C15086c.m447a(bufferedReader, null);
            C14989s sVar2 = C14989s.f33022a;
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // p081h.p160h.p179e.p192b.p197f.AbstractC6464a
    /* renamed from: b */
    public Object mo22491b(Context context, AbstractC15044d<? super C14989s> dVar) {
        return m22489b(this, context, dVar);
    }

    @Override // p081h.p160h.p179e.p192b.p197f.AbstractC6464a
    /* renamed from: c */
    public boolean mo22488c() {
        return m22486d() && m22484e();
    }

    /* renamed from: d */
    public final boolean m22486d() {
        return this.f16137e != null;
    }

    /* renamed from: e */
    public final boolean m22484e() {
        return this.f16138f != null;
    }
}
