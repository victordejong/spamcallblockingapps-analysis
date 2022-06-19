package p193e.p194a.p195a.p200c.p201a;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Message;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p442b.p443a.C8712f;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.s;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.a.c.a.q */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/q.class */
public final class View$OnClickListenerC5049q implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C5053t f17299a;

    /* renamed from: b */
    public final /* synthetic */ String f17300b;

    /* renamed from: c */
    public final /* synthetic */ boolean f17301c;

    /* renamed from: d */
    public final /* synthetic */ l f17302d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC10597h f17303e;

    /* renamed from: f */
    public final /* synthetic */ Message f17304f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC10616p f17305g;

    /* renamed from: e.a.a.c.a.q$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a/q$a.class */
    public static final class C5050a extends m implements p<String, Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5050a() {
            super(2);
            View$OnClickListenerC5049q.this = r4;
        }

        /* renamed from: k */
        public Object m33909k(Object obj, Object obj2) {
            String str = (String) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            s1.z.c.l.e(str, RemoteMessageConst.Notification.TAG);
            View$OnClickListenerC5049q view$OnClickListenerC5049q = View$OnClickListenerC5049q.this;
            AbstractC5013b.m34002c(view$OnClickListenerC5049q.f17299a, view$OnClickListenerC5049q.f17302d, view$OnClickListenerC5049q.f17303e.f31607a, view$OnClickListenerC5049q.f17304f, view$OnClickListenerC5049q.f17305g, booleanValue, str, null, 64, null);
            View$OnClickListenerC5049q view$OnClickListenerC5049q2 = View$OnClickListenerC5049q.this;
            AbstractC5041o abstractC5041o = view$OnClickListenerC5049q2.f17299a.f17124d;
            if (abstractC5041o == null) {
                s1.z.c.l.l("updateCategoriesManager");
                throw null;
            }
            abstractC5041o.mo33928e(str, view$OnClickListenerC5049q2.f17304f.f13380a);
            View m34003b = View$OnClickListenerC5049q.this.f17299a.m34003b();
            if (m34003b != null) {
                C19286f.m13689O(m34003b);
            }
            return s.a;
        }
    }

    public View$OnClickListenerC5049q(C5053t c5053t, String str, boolean z, l lVar, AbstractC10597h abstractC10597h, Message message, AbstractC10616p abstractC10616p) {
        this.f17299a = c5053t;
        this.f17300b = str;
        this.f17301c = z;
        this.f17302d = lVar;
        this.f17303e = abstractC10597h;
        this.f17304f = message;
        this.f17305g = abstractC10616p;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C5053t c5053t = this.f17299a;
        String str = this.f17300b;
        boolean z = this.f17301c;
        p<? super String, ? super Boolean, s> c5050a = new C5050a();
        Context context = c5053t.f17134n.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity");
        FragmentManager supportFragmentManager = ((ConversationActivity) context).getSupportFragmentManager();
        s1.z.c.l.d(supportFragmentManager, "(itemView.context as Con…y).supportFragmentManager");
        C8712f.f26636m.m28103a(str, z, null, c5050a).show(supportFragmentManager, C8712f.f26635l);
    }
}
