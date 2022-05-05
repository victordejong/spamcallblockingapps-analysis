package p081h.p160h.p179e.p192b.p201g;

import java.io.File;
import kotlin.Metadata;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9134d;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p373y.p374a.p377c.C10049d;
import p081h.p203i.p325c.p373y.p378b.C10055a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.C15056i;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
import p646n.p649b.p650a.C15203c;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J#\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001��¢\u0006\u0002\u0010\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0082@ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/source/SmsFilterRemoteModelSource;", "Lcom/gogolook/whoscallsdk/ml/source/ModelSource;", "Lorg/tensorflow/lite/Interpreter;", "()V", "fetch", "context", "Landroid/content/Context;", "modelConfig", "Lcom/gogolook/whoscallsdk/ml/model/ModelConfig;", "(Landroid/content/Context;Lcom/gogolook/whoscallsdk/ml/model/ModelConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadInterpreter", "remoteModel", "Lcom/google/firebase/ml/custom/FirebaseCustomRemoteModel;", "(Lcom/google/firebase/ml/custom/FirebaseCustomRemoteModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.g.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/g/c.class */
public final class C6484c implements AbstractC6482a<C15203c> {

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/source/SmsFilterRemoteModelSource", m472f = "SmsFilterRemoteModelSource.kt", m471l = {36, 45, 53}, m470m = "fetch")
    /* renamed from: h.h.e.b.g.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/g/c$a.class */
    public static final class C6485a extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f16156a;

        /* renamed from: b */
        public int f16157b;

        /* renamed from: d */
        public Object f16159d;

        /* renamed from: e */
        public Object f16160e;

        /* renamed from: f */
        public Object f16161f;

        /* renamed from: g */
        public Object f16162g;

        /* renamed from: h */
        public Object f16163h;

        /* renamed from: i */
        public boolean f16164i;

        public C6485a(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f16156a = obj;
            this.f16157b |= Integer.MIN_VALUE;
            return C6484c.this.mo22478a(null, null, this);
        }
    }

    /* renamed from: h.h.e.b.g.c$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/g/c$b.class */
    public static final class C6486b<TResult> implements AbstractC9132c<File> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f16165a;

        /* renamed from: b */
        public final /* synthetic */ C6484c f16166b;

        public C6486b(AbstractC15044d dVar, C6484c cVar, C10055a aVar) {
            this.f16165a = dVar;
            this.f16166b = cVar;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
        /* renamed from: a */
        public final void mo3743a(AbstractC9143h<File> hVar) {
            C15149k.m377b(hVar, "task");
            File b = hVar.mo16014b();
            if (b == null) {
                C6442a.m22561a(this.f16166b);
                AbstractC15044d dVar = this.f16165a;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(null);
                dVar.resumeWith(null);
                return;
            }
            C6442a.m22561a(this.f16166b);
            AbstractC15044d dVar2 = this.f16165a;
            C15203c cVar = new C15203c(b);
            C14979k.C14980a aVar2 = C14979k.f33013a;
            C14979k.m657a(cVar);
            dVar2.resumeWith(cVar);
        }
    }

    /* renamed from: h.h.e.b.g.c$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/g/c$c.class */
    public static final class C6487c implements AbstractC9134d {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f16167a;

        public C6487c(AbstractC15044d dVar) {
            this.f16167a = dVar;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(Exception exc) {
            C15149k.m377b(exc, "it");
            AbstractC15044d dVar = this.f16167a;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a((Throwable) exc);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:2|(2:4|(6:6|8|68|(2:10|(2:12|(3:14|15|(7:17|18|60|61|62|64|65)(3:19|20|21))(2:23|24))(2:25|(2:27|28)))(2:29|(2:31|(2:33|34)(1:35))(2:66|67))|36|(2:38|39)(23:40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|(2:58|59)|60|61|62|64|65)))|7|8|68|(0)(0)|36|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b6, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0200, code lost:
        r0 = p081h.p160h.p179e.p192b.C6442a.m22561a(r10);
        android.util.Log.e(r0, "Exception : " + r9);
        r8 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0182  */
    @Override // p081h.p160h.p179e.p192b.p201g.AbstractC6482a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22478a(android.content.Context r8, p081h.p160h.p179e.p192b.p197f.C6465b r9, p626l.p634w.AbstractC15044d<? super p646n.p649b.p650a.C15203c> r10) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p192b.p201g.C6484c.mo22478a(android.content.Context, h.h.e.b.f.b, l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public final /* synthetic */ Object m22477a(C10055a aVar, AbstractC15044d<? super C15203c> dVar) {
        C15056i iVar = new C15056i(C15059b.m481a(dVar));
        AbstractC9143h<File> a = C10049d.m13535a().m13533a(aVar);
        a.mo16025a(new C6486b(iVar, this, aVar));
        a.mo16024a(new C6487c(iVar));
        Object a2 = iVar.m482a();
        if (a2 == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return a2;
    }
}
