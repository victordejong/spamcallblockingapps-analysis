package p193e.p194a.p195a.p200c;

import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onTranslateAction$1", f = "ConversationActionModePresenter.kt", l = {453, 458}, m = "invokeSuspend")
/* renamed from: e.a.a.c.l3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l3.class */
public final class C5480l3 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f18617e;

    /* renamed from: f */
    public Object f18618f;

    /* renamed from: g */
    public Object f18619g;

    /* renamed from: h */
    public Object f18620h;

    /* renamed from: i */
    public int f18621i;

    /* renamed from: j */
    public final /* synthetic */ C5373i3 f18622j;

    /* renamed from: k */
    public final /* synthetic */ Message f18623k;

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onTranslateAction$1$isModelDownloaded$1", f = "ConversationActionModePresenter.kt", l = {454}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.l3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l3$a.class */
    public static final class C5481a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f18624e;

        /* renamed from: g */
        public final /* synthetic */ c0 f18626g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5481a(c0 c0Var, d dVar) {
            super(2, dVar);
            C5480l3.this = r5;
            this.f18626g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m33064i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5481a(this.f18626g, dVar);
        }

        /* renamed from: k */
        public final Object m33063k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5481a(this.f18626g, dVar).m33062s(s.a);
        }

        /* renamed from: s */
        public final Object m33062s(Object obj) {
            a aVar = a.a;
            int i = this.f18624e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6254b abstractC6254b = C5480l3.this.f18622j.f18364K;
                this.f18624e = 1;
                Object mo31544e = abstractC6254b.mo31544e(this);
                obj = mo31544e;
                if (mo31544e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.valueOf(((List) obj).contains((String) this.f18626g.a));
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onTranslateAction$1$result$1", f = "ConversationActionModePresenter.kt", l = {899}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.l3$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l3$b.class */
    public static final class C5482b extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f18627e;

        /* renamed from: g */
        public final /* synthetic */ c0 f18629g;

        /* renamed from: h */
        public final /* synthetic */ c0 f18630h;

        /* renamed from: i */
        public final /* synthetic */ c0 f18631i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5482b(c0 c0Var, c0 c0Var2, c0 c0Var3, d dVar) {
            super(2, dVar);
            C5480l3.this = r5;
            this.f18629g = c0Var;
            this.f18630h = c0Var2;
            this.f18631i = c0Var3;
        }

        /* renamed from: i */
        public final d<s> m33061i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5482b(this.f18629g, this.f18630h, this.f18631i, dVar);
        }

        /* renamed from: k */
        public final Object m33060k(Object obj, Object obj2) {
            return m33061i(obj, (d) obj2).m33059s(s.a);
        }

        /* renamed from: s */
        public final Object m33059s(Object obj) {
            a aVar = a.a;
            int i = this.f18627e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5480l3 c5480l3 = C5480l3.this;
                AbstractC6254b abstractC6254b = c5480l3.f18622j.f18364K;
                String str = (String) this.f18629g.a;
                String str2 = (String) this.f18630h.a;
                String str3 = (String) this.f18631i.a;
                Mention[] mentionArr = c5480l3.f18623k.f13395p;
                l.d(mentionArr, "message.mentions");
                ArrayList arrayList = new ArrayList(mentionArr.length);
                for (Mention mention : mentionArr) {
                    arrayList.add(mention.getPrivateName());
                }
                Object[] array = arrayList.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                this.f18627e = 1;
                Object mo31543f = abstractC6254b.mo31543f(str, str2, str3, (String[]) array, this);
                obj = mo31543f;
                if (mo31543f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5480l3(C5373i3 c5373i3, Message message, d dVar) {
        super(2, dVar);
        this.f18622j = c5373i3;
        this.f18623k = message;
    }

    /* renamed from: i */
    public final d<s> m33067i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5480l3(this.f18622j, this.f18623k, dVar);
    }

    /* renamed from: k */
    public final Object m33066k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5480l3(this.f18622j, this.f18623k, dVar).m33065s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0311  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33065s(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5480l3.m33065s(java.lang.Object):java.lang.Object");
    }
}
