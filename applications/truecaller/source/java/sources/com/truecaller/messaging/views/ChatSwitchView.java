package com.truecaller.messaging.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.a.l;
import s1.b0.c;
import s1.g;
import s1.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\r\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u0004J\r\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0015\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\rJ\r\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\r\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0011\u0010\u0013\u001a\u00020\u0002*\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0015*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R%\u0010\u001d\u001a\n \u0015*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0017\u001a\u0004\b\u001c\u0010\u0019R%\u0010 \u001a\n \u0015*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0017\u001a\u0004\b\u001f\u0010\u0019R$\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0002\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010'\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0002\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R%\u0010,\u001a\n \u0015*\u0004\u0018\u00010(0(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0017\u001a\u0004\b*\u0010+R+\u00104\u001a\u00020\"2\u0006\u0010-\u001a\u00020\"8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00065"}, d2 = {"Lcom/truecaller/messaging/views/ChatSwitchView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Ls1/s;", "onFinishInflate", "()V", "r1", "j1", "l1", "k1", "q1", "", "visible", "o1", "(Z)V", "setChatSwitchVisible", "setSmsSwitchVisible", "m1", "n1", "Lcom/truecaller/messaging/views/TransportSwitchView;", "i1", "(Lcom/truecaller/messaging/views/TransportSwitchView;)V", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "getSmsSwitch", "()Lcom/truecaller/messaging/views/TransportSwitchView;", "smsSwitch", "v", "getUrgentMessageSwitch", "urgentMessageSwitch", "t", "getChatSwitch", "chatSwitch", "Lkotlin/Function1;", "Lcom/truecaller/messaging/views/Switch;", "y", "Ls1/z/b/l;", "onDeActivatedSwitchClicked", "x", "onSelected", "Landroid/view/View;", "w", "getUrgentMessageBadge", "()Landroid/view/View;", "urgentMessageBadge", "<set-?>", "z", "Ls1/b0/c;", "getSelected", "()Lcom/truecaller/messaging/views/Switch;", "setSelected", "(Lcom/truecaller/messaging/views/Switch;)V", AnalyticsConstants.SELECTED, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/views/ChatSwitchView.class */
public final class ChatSwitchView extends ConstraintLayout {

    /* renamed from: A */
    public static final /* synthetic */ l[] f13941A = {C22128a.m8629e0(ChatSwitchView.class, AnalyticsConstants.SELECTED, "getSelected()Lcom/truecaller/messaging/views/Switch;", 0)};

    /* renamed from: t */
    public final g f13942t;

    /* renamed from: u */
    public final g f13943u;

    /* renamed from: v */
    public final g f13944v;

    /* renamed from: w */
    public final g f13945w;

    /* renamed from: x */
    public s1.z.b.l<? super Switch, s> f13946x;

    /* renamed from: y */
    public s1.z.b.l<? super Switch, s> f13947y;

    /* renamed from: z */
    public final c f13948z;

    /* renamed from: com.truecaller.messaging.views.ChatSwitchView$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/messaging/views/ChatSwitchView$a.class */
    public static final class View$OnClickListenerC4282a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f13949a;

        /* renamed from: b */
        public final /* synthetic */ Object f13950b;

        public View$OnClickListenerC4282a(int i, Object obj) {
            this.f13949a = i;
            this.f13950b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f13949a;
            if (i == 0) {
                s1.z.c.l.d(view, "it");
                ChatSwitchView.m34867g1((ChatSwitchView) this.f13950b, view, Switch.CHAT);
                return;
            }
            Switch r7 = null;
            if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                s1.z.c.l.d(view, "it");
                ChatSwitchView.m34867g1((ChatSwitchView) this.f13950b, view, Switch.URGENT_MESSAGE);
                return;
            }
            ChatSwitchView chatSwitchView = (ChatSwitchView) this.f13950b;
            s1.z.c.l.d(view, "it");
            ?? smsSwitch = ((ChatSwitchView) this.f13950b).getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch, "smsSwitch");
            Object tag = smsSwitch.getTag();
            if (tag instanceof Switch) {
                r7 = tag;
            }
            Switch r72 = r7;
            if (r72 == null) {
                r72 = Switch.SMS;
            }
            ChatSwitchView.m34867g1(chatSwitchView, view, r72);
        }
    }

    public ChatSwitchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v23, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChatSwitchView(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11) {
        /*
            r7 = this;
            r0 = r11
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r9 = r0
        L9:
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r10 = r0
        L12:
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            r1 = r7
            r2 = 2131362747(0x7f0a03bb, float:1.8345283E38)
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f13942t = r1
            r0 = r7
            r1 = r7
            r2 = 2131365951(0x7f0a103f, float:1.8351782E38)
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f13943u = r1
            r0 = r7
            r1 = r7
            r2 = 2131366720(0x7f0a1340, float:1.8353342E38)
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f13944v = r1
            r0 = r7
            r1 = r7
            r2 = 2131366719(0x7f0a133f, float:1.835334E38)
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f13945w = r1
            com.truecaller.messaging.views.Switch r0 = com.truecaller.messaging.views.Switch.SMS
            r9 = r0
            r0 = r7
            e.a.a.j1.a r1 = new e.a.a.j1.a
            r2 = r1
            r3 = r9
            r4 = r9
            r5 = r7
            r2.<init>(r3, r4, r5)
            r0.f13948z = r1
            r0 = r8
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "LayoutInflater.from(context)"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = 1
            android.view.LayoutInflater r0 = p193e.p194a.p1049l4.C17422k.m16050u0(r0, r1)
            r1 = 2131559290(0x7f0d037a, float:1.874392E38)
            r2 = r7
            r3 = 1
            android.view.View r0 = r0.inflate(r1, r2, r3)
            r0 = r7
            com.truecaller.messaging.views.TransportSwitchView r0 = r0.getChatSwitch()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "chatSwitch"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = 1
            r0.setActivated(r1)
            r0 = r7
            com.truecaller.messaging.views.TransportSwitchView r0 = r0.getSmsSwitch()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "smsSwitch"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = 1
            r0.setActivated(r1)
            r0 = r7
            com.truecaller.messaging.views.TransportSwitchView r0 = r0.getUrgentMessageSwitch()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "urgentMessageSwitch"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = 1
            r0.setActivated(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.views.ChatSwitchView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: g1 */
    public static final void m34867g1(ChatSwitchView chatSwitchView, View view, Switch r5) {
        Objects.requireNonNull(chatSwitchView);
        if (!view.isActivated()) {
            s1.z.b.l<? super Switch, s> lVar = chatSwitchView.f13947y;
            if (lVar == null) {
                return;
            }
            s sVar = (s) lVar.d(r5);
            return;
        }
        chatSwitchView.setSelected(r5);
        s1.z.b.l<? super Switch, s> lVar2 = chatSwitchView.f13946x;
        if (lVar2 == null) {
            return;
        }
        s sVar2 = (s) lVar2.d(chatSwitchView.getSelected());
    }

    private final TransportSwitchView getChatSwitch() {
        return (TransportSwitchView) this.f13942t.getValue();
    }

    public final TransportSwitchView getSmsSwitch() {
        return (TransportSwitchView) this.f13943u.getValue();
    }

    private final View getUrgentMessageBadge() {
        return (View) this.f13945w.getValue();
    }

    private final TransportSwitchView getUrgentMessageSwitch() {
        return (TransportSwitchView) this.f13944v.getValue();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v23, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v40, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v45, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v49, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v53, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v59, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v63, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v67, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* renamed from: h1 */
    public static final void m34866h1(ChatSwitchView chatSwitchView, Switch r4) {
        Objects.requireNonNull(chatSwitchView);
        int ordinal = r4.ordinal();
        if (ordinal == 0) {
            ?? chatSwitch = chatSwitchView.getChatSwitch();
            s1.z.c.l.d((Object) chatSwitch, "chatSwitch");
            chatSwitch.setSelected(true);
            ?? smsSwitch = chatSwitchView.getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch, "smsSwitch");
            smsSwitch.setSelected(false);
            ?? urgentMessageSwitch = chatSwitchView.getUrgentMessageSwitch();
            s1.z.c.l.d((Object) urgentMessageSwitch, "urgentMessageSwitch");
            urgentMessageSwitch.setSelected(false);
        } else if (ordinal == 1) {
            ?? chatSwitch2 = chatSwitchView.getChatSwitch();
            s1.z.c.l.d((Object) chatSwitch2, "chatSwitch");
            chatSwitch2.setSelected(false);
            ?? smsSwitch2 = chatSwitchView.getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch2, "smsSwitch");
            smsSwitch2.setSelected(true);
            ?? urgentMessageSwitch2 = chatSwitchView.getUrgentMessageSwitch();
            s1.z.c.l.d((Object) urgentMessageSwitch2, "urgentMessageSwitch");
            urgentMessageSwitch2.setSelected(false);
            chatSwitchView.getSmsSwitch().setImageResource((int) C2752R.C2753drawable.selector_transport_sms);
            TransportSwitchView smsSwitch3 = chatSwitchView.getSmsSwitch();
            String string = chatSwitchView.getResources().getString(C2752R.string.TransportSwitchSms);
            s1.z.c.l.d(string, "resources.getString(R.string.TransportSwitchSms)");
            smsSwitch3.setText(string);
            ?? smsSwitch4 = chatSwitchView.getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch4, "smsSwitch");
            smsSwitch4.setTag(Switch.SMS);
        } else if (ordinal == 2) {
            ?? chatSwitch3 = chatSwitchView.getChatSwitch();
            s1.z.c.l.d((Object) chatSwitch3, "chatSwitch");
            chatSwitch3.setSelected(false);
            ?? smsSwitch5 = chatSwitchView.getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch5, "smsSwitch");
            smsSwitch5.setSelected(true);
            ?? urgentMessageSwitch3 = chatSwitchView.getUrgentMessageSwitch();
            s1.z.c.l.d((Object) urgentMessageSwitch3, "urgentMessageSwitch");
            urgentMessageSwitch3.setSelected(false);
            chatSwitchView.m34857r1();
        } else if (ordinal != 3) {
        } else {
            ?? chatSwitch4 = chatSwitchView.getChatSwitch();
            s1.z.c.l.d((Object) chatSwitch4, "chatSwitch");
            chatSwitch4.setSelected(false);
            ?? smsSwitch6 = chatSwitchView.getSmsSwitch();
            s1.z.c.l.d((Object) smsSwitch6, "smsSwitch");
            smsSwitch6.setSelected(false);
            ?? urgentMessageSwitch4 = chatSwitchView.getUrgentMessageSwitch();
            s1.z.c.l.d((Object) urgentMessageSwitch4, "urgentMessageSwitch");
            urgentMessageSwitch4.setSelected(true);
        }
    }

    public final Switch getSelected() {
        return (Switch) this.f13948z.A1(this, f13941A[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i1 */
    public final void m34865i1(TransportSwitchView transportSwitchView) {
        s1.z.c.l.e(transportSwitchView, "$this$disable");
        transportSwitchView.setActivated(false);
        transportSwitchView.setAlpha(0.5f);
    }

    /* renamed from: j1 */
    public final void m34864j1() {
        TransportSwitchView chatSwitch = getChatSwitch();
        s1.z.c.l.d(chatSwitch, "chatSwitch");
        m34865i1(chatSwitch);
    }

    /* renamed from: k1 */
    public final void m34863k1() {
        TransportSwitchView smsSwitch = getSmsSwitch();
        s1.z.c.l.d(smsSwitch, "smsSwitch");
        m34865i1(smsSwitch);
    }

    /* renamed from: l1 */
    public final void m34862l1() {
        TransportSwitchView smsSwitch = getSmsSwitch();
        s1.z.c.l.d(smsSwitch, "smsSwitch");
        m34865i1(smsSwitch);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.ImageButton, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.ImageButton, com.truecaller.messaging.views.TransportSwitchView] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.widget.ImageButton, com.truecaller.messaging.views.TransportSwitchView] */
    /* renamed from: m1 */
    public final void m34861m1() {
        getChatSwitch().setOnClickListener(new View$OnClickListenerC4282a(0, this));
        getSmsSwitch().setOnClickListener(new View$OnClickListenerC4282a(1, this));
        getUrgentMessageSwitch().setOnClickListener(new View$OnClickListenerC4282a(2, this));
    }

    /* renamed from: n1 */
    public final void m34860n1() {
        TransportSwitchView chatSwitch = getChatSwitch();
        s1.z.c.l.d(chatSwitch, "chatSwitch");
        chatSwitch.setBackgroundTintList(C26467a.m1799c(getContext(), 17170445));
        TransportSwitchView smsSwitch = getSmsSwitch();
        s1.z.c.l.d(smsSwitch, "smsSwitch");
        smsSwitch.setBackgroundTintList(C26467a.m1799c(getContext(), 17170445));
    }

    /* renamed from: o1 */
    public final void m34859o1(boolean z) {
        View urgentMessageBadge = getUrgentMessageBadge();
        s1.z.c.l.d(urgentMessageBadge, "urgentMessageBadge");
        C19286f.m13683U(urgentMessageBadge, z);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m34861m1();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* renamed from: q1 */
    public final void m34858q1() {
        ?? urgentMessageSwitch = getUrgentMessageSwitch();
        s1.z.c.l.d((Object) urgentMessageSwitch, "urgentMessageSwitch");
        C19286f.m13684T(urgentMessageSwitch);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [android.widget.ImageButton, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    /* renamed from: r1 */
    public final void m34857r1() {
        getSmsSwitch().setImageResource((int) C2752R.C2753drawable.selector_transport_mms);
        TransportSwitchView smsSwitch = getSmsSwitch();
        String string = getResources().getString(C2752R.string.TransportSwitchMms);
        s1.z.c.l.d(string, "resources.getString(R.string.TransportSwitchMms)");
        smsSwitch.setText(string);
        ?? smsSwitch2 = getSmsSwitch();
        s1.z.c.l.d((Object) smsSwitch2, "smsSwitch");
        smsSwitch2.setTag(Switch.MMS);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    public final void setChatSwitchVisible(boolean z) {
        ?? chatSwitch = getChatSwitch();
        s1.z.c.l.d((Object) chatSwitch, "chatSwitch");
        C19286f.m13683U(chatSwitch, z);
    }

    public final void setSelected(Switch r6) {
        s1.z.c.l.e(r6, "<set-?>");
        this.f13948z.a(this, f13941A[0], r6);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View, java.lang.Object, com.truecaller.messaging.views.TransportSwitchView] */
    public final void setSmsSwitchVisible(boolean z) {
        ?? smsSwitch = getSmsSwitch();
        s1.z.c.l.d((Object) smsSwitch, "smsSwitch");
        C19286f.m13683U(smsSwitch, z);
    }
}
