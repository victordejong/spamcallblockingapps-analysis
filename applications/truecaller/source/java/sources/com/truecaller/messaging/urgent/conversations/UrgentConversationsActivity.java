package com.truecaller.messaging.urgent.conversations;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.urgent.KeyguardOverlay;
import com.truecaller.messaging.urgent.service.UrgentMessageService;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18158f;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.AbstractC5275f3;
import p193e.p194a.p195a.p200c.AbstractC5328g8;
import p193e.p194a.p195a.p200c.AbstractC5784v3;
import p193e.p194a.p195a.p200c.C5815y3;
import p193e.p194a.p195a.p237h1.p238n.AbstractC6348g;
import p193e.p194a.p195a.p237h1.p238n.AbstractC6351j;
import p193e.p194a.p195a.p237h1.p238n.AbstractC6353l;
import p193e.p194a.p195a.p237h1.p238n.C6339a;
import p193e.p194a.p195a.p237h1.p238n.C6349h;
import p193e.p194a.p195a.p237h1.p238n.C6350i;
import p193e.p194a.p195a.p237h1.p239o.AbstractC6368i;
import s1.g;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��{\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t*\u00011\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\bM\u0010\u0007J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\f\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\u0007J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0007J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0019\u0010\u0012J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001a\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0007R\u0018\u0010$\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u0010/R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001d\u0010@\u001a\u00020;8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;", "Ln3/b/a/h;", "Le/a/a/h1/n/l;", "Le/a/a/c/f3;", "Le/a/a/c/g8;", "Ls1/s;", "ra", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "onStop", "onDestroy", "", "conversationId", "Y8", "(J)V", "d1", "c0", "", "visible", "I3", "(Z)V", "u2", "w7", "Le/a/a/c/v3;", "z9", "()Le/a/a/c/v3;", "component", "j4", "(Le/a/a/c/v3;)V", "Q2", "i", "Le/a/a/c/v3;", "conversationComponent", "Landroid/os/Handler;", "j", "Landroid/os/Handler;", "handler", "Ljava/lang/Runnable;", "l", "Ljava/lang/Runnable;", "maybeReplayTapRunnable", "Le/a/o2/f;", "f", "Le/a/o2/f;", "adapter", "com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f", "k", "Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;", "serviceConnection", "g", "overflowAdapter", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "e", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "binder", "Le/a/m3/f;", "d", "Ls1/g;", "pa", "()Le/a/m3/f;", "binding", "Landroidx/fragment/app/Fragment;", "h", "Landroidx/fragment/app/Fragment;", "conversationFragment", "Le/a/a/h1/n/j;", "a", "Le/a/a/h1/n/j;", "qa", "()Le/a/a/h1/n/j;", "setPresenter", "(Le/a/a/h1/n/j;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity.class */
public final class UrgentConversationsActivity extends h implements AbstractC6353l, AbstractC5275f3, AbstractC5328g8 {

    /* renamed from: m */
    public static final /* synthetic */ int f13914m = 0;
    @Inject

    /* renamed from: a */
    public AbstractC6351j f13915a;
    @Inject

    /* renamed from: b */
    public C6349h f13916b;
    @Inject

    /* renamed from: c */
    public C6349h f13917c;

    /* renamed from: e */
    public UrgentMessageService.BinderC4280a f13919e;

    /* renamed from: f */
    public C18898f f13920f;

    /* renamed from: g */
    public C18898f f13921g;

    /* renamed from: h */
    public Fragment f13922h;

    /* renamed from: i */
    public AbstractC5784v3 f13923i;

    /* renamed from: d */
    public final g f13918d = C25225a.m3982O1(s1.h.c, new C4276c(this));

    /* renamed from: j */
    public final Handler f13924j = new Handler(Looper.getMainLooper());

    /* renamed from: k */
    public final ServiceConnectionC4279f f13925k = new ServiceConnectionC4279f();

    /* renamed from: l */
    public final Runnable f13926l = new RunnableC4277d();

    /* renamed from: com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$b.class */
    public static final class C4275b extends m implements l<C6350i, AbstractC6348g> {

        /* renamed from: c */
        public static final C4275b f13927c = new C4275b(0);

        /* renamed from: d */
        public static final C4275b f13928d = new C4275b(1);

        /* renamed from: b */
        public final /* synthetic */ int f13929b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4275b(int i) {
            super(1);
            this.f13929b = i;
        }

        /* renamed from: d */
        public final Object m34871d(Object obj) {
            int i = this.f13929b;
            if (i == 0) {
                C6350i c6350i = (C6350i) obj;
                s1.z.c.l.e(c6350i, "it");
                return c6350i;
            } else if (i != 1) {
                throw null;
            } else {
                C6350i c6350i2 = (C6350i) obj;
                s1.z.c.l.e(c6350i2, "it");
                return c6350i2;
            }
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity$c */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$c.class */
    public static final class C4276c extends m implements a<C18158f> {

        /* renamed from: b */
        public final /* synthetic */ h f13930b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4276c(h hVar) {
            super(0);
            this.f13930b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f13930b.getLayoutInflater();
            s1.z.c.l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C2752R.layout.activity_urgent_conversations, (ViewGroup) null, false);
            int i = 2131361996;
            ViewStub viewStub = (ViewStub) inflate.findViewById(C2752R.C2754id.action_mode_bar_stub_placeholder);
            if (viewStub != null) {
                i = 2131362823;
                AppCompatButton appCompatButton = (AppCompatButton) inflate.findViewById(2131362823);
                if (appCompatButton != null) {
                    i = 2131363811;
                    CardView cardView = (CardView) inflate.findViewById(C2752R.C2754id.fragmentCardView);
                    if (cardView != null) {
                        i = 2131363812;
                        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C2752R.C2754id.fragmentContainer);
                        if (frameLayout != null) {
                            i = 2131364529;
                            KeyguardOverlay keyguardOverlay = (KeyguardOverlay) inflate.findViewById(C2752R.C2754id.keyguardOverlay);
                            if (keyguardOverlay != null) {
                                i = 2131364696;
                                ImageView imageView = (ImageView) inflate.findViewById(C2752R.C2754id.logoImage);
                                if (imageView != null) {
                                    i = 2131365060;
                                    RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C2752R.C2754id.overflowRecyclerView);
                                    if (recyclerView != null) {
                                        i = 2131365378;
                                        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(2131365378);
                                        if (recyclerView2 != null) {
                                            return new C18158f((ConstraintLayout) inflate, viewStub, appCompatButton, cardView, frameLayout, keyguardOverlay, imageView, recyclerView, recyclerView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity$d */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d.class */
    public static final class RunnableC4277d implements Runnable {
        public RunnableC4277d() {
            UrgentConversationsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v4, types: [com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity, android.app.Activity] */
        @Override // java.lang.Runnable
        public final void run() {
            if (UrgentConversationsActivity.this.isDestroyed() || UrgentConversationsActivity.this.isFinishing()) {
                return;
            }
            KeyguardOverlay keyguardOverlay = UrgentConversationsActivity.this.m34874pa().f51220d;
            int i = KeyguardOverlay.f13890g;
            keyguardOverlay.m34878a(false);
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity$e */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e.class */
    public static final class View$OnClickListenerC4278e implements View.OnClickListener {
        public View$OnClickListenerC4278e() {
            UrgentConversationsActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            UrgentConversationsActivity.this.m34873qa().onCloseClick();
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.conversations.UrgentConversationsActivity$f */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f.class */
    public static final class ServiceConnectionC4279f implements ServiceConnection {
        public ServiceConnectionC4279f() {
            UrgentConversationsActivity.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            s1.z.c.l.e(componentName, AnalyticsConstants.NAME);
            s1.z.c.l.e(iBinder, "service");
            UrgentMessageService.BinderC4280a binderC4280a = (UrgentMessageService.BinderC4280a) iBinder;
            UrgentConversationsActivity urgentConversationsActivity = UrgentConversationsActivity.this;
            urgentConversationsActivity.f13919e = binderC4280a;
            urgentConversationsActivity.m34873qa().mo11014F3(binderC4280a);
            AbstractC6351j m34873qa = UrgentConversationsActivity.this.m34873qa();
            s1.z.c.l.e(m34873qa, "listener");
            AbstractC6368i abstractC6368i = binderC4280a.f13939a.get();
            if (abstractC6368i != null) {
                abstractC6368i.mo31386vd(m34873qa);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            UrgentConversationsActivity urgentConversationsActivity = UrgentConversationsActivity.this;
            int i = UrgentConversationsActivity.f13914m;
            urgentConversationsActivity.m34872ra();
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: I3 */
    public void mo31420I3(boolean z) {
        RecyclerView recyclerView = m34874pa().f51221e;
        s1.z.c.l.d(recyclerView, "binding.overflowRecyclerView");
        C19286f.m13683U(recyclerView, z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5328g8
    /* renamed from: Q2 */
    public void mo33283Q2() {
        AbstractC6351j abstractC6351j = this.f13915a;
        if (abstractC6351j != null) {
            abstractC6351j.mo31411L0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: Y8 */
    public void mo31419Y8(long j) {
        Fragment c5815y3 = new C5815y3();
        Bundle bundle = new Bundle();
        bundle.putLong("conversation_id", j);
        bundle.putBoolean("is_bubble_intent", true);
        bundle.putBoolean("is_urgent_intent", true);
        c5815y3.setArguments(bundle);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.f75332p = true;
        c26907a.m1120m(C2752R.C2754id.fragmentContainer, c5815y3, null);
        c26907a.mo1127f();
        this.f13922h = c5815y3;
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: c0 */
    public void mo31418c0() {
        C18898f c18898f = this.f13920f;
        if (c18898f == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        c18898f.notifyDataSetChanged();
        C18898f c18898f2 = this.f13921g;
        if (c18898f2 != null) {
            c18898f2.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("overflowAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: d1 */
    public void mo31417d1() {
        Fragment fragment = this.f13922h;
        if (fragment != null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.f75332p = true;
            c26907a.mo1121l(fragment);
            c26907a.mo1127f();
            this.f13922h = null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5275f3
    /* renamed from: j4 */
    public void mo33448j4(AbstractC5784v3 abstractC5784v3) {
        s1.z.c.l.e(abstractC5784v3, "component");
        this.f13923i = abstractC5784v3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        getWindow().setBackgroundDrawableResource(2131231057);
        Window window = getWindow();
        s1.z.c.l.d(window, "window");
        Object obj = C26467a.f74235a;
        window.setStatusBarColor(C26467a.C26471d.m1787a(this, C2752R.color.urgent_messages_background));
        Window window2 = getWindow();
        s1.z.c.l.d(window2, "window");
        window2.setNavigationBarColor(C26467a.C26471d.m1787a(this, C2752R.color.urgent_messages_background));
        Window window3 = getWindow();
        s1.z.c.l.d(window3, "window");
        C17422k.m16073j(window3, false);
        overridePendingTransition(0, 0);
        UrgentConversationsActivity.super.onCreate(bundle);
        getWindow().setFlags(2621440, 2621440);
        C18158f m34874pa = m34874pa();
        s1.z.c.l.d(m34874pa, "binding");
        setContentView(m34874pa.f51217a);
        C19235i0 c19235i0 = new C19235i0(this);
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        s1.z.c.l.d(mo10154s, "(applicationContext as GraphHolder).objectsGraph");
        C25225a.m3846s(c19235i0, AbstractC19233h0.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        ViewGroup viewGroup = null;
        C6339a c6339a = new C6339a(mo10154s, c19235i0, null);
        this.f13915a = (AbstractC6351j) c6339a.f21181e.get();
        this.f13916b = c6339a.m31429a();
        this.f13917c = c6339a.m31429a();
        C6349h c6349h = this.f13916b;
        if (c6349h == null) {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
        C18898f c18898f = new C18898f(new C18910r(c6349h, C2752R.layout.item_urgent_conversation_bubble, new a(0, this), C4275b.f13927c));
        this.f13920f = c18898f;
        c18898f.setHasStableIds(true);
        RecyclerView recyclerView = m34874pa().f51222f;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        C18898f c18898f2 = this.f13920f;
        if (c18898f2 == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f2);
        C6349h c6349h2 = this.f13917c;
        if (c6349h2 == null) {
            s1.z.c.l.l("overflowItemPresenter");
            throw null;
        }
        c6349h2.f21185b = true;
        C18898f c18898f3 = new C18898f(new C18910r(c6349h2, C2752R.layout.item_urgent_conversation_bubble, new a(1, this), C4275b.f13928d));
        this.f13921g = c18898f3;
        c18898f3.setHasStableIds(true);
        RecyclerView recyclerView2 = m34874pa().f51221e;
        s1.z.c.l.d(recyclerView2, "binding.overflowRecyclerView");
        C18898f c18898f4 = this.f13921g;
        if (c18898f4 == null) {
            s1.z.c.l.l("overflowAdapter");
            throw null;
        }
        recyclerView2.setAdapter(c18898f4);
        AbstractC6351j abstractC6351j = this.f13915a;
        if (abstractC6351j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6351j.mo9029Y0(this);
        m34874pa().f51218b.setOnClickListener(new View$OnClickListenerC4278e());
        View findViewById = findViewById(2131361995);
        s1.z.c.l.d(findViewById, "stub");
        ViewParent parent = findViewById.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = parent;
        }
        ViewGroup viewGroup2 = viewGroup;
        if (viewGroup2 == null) {
            return;
        }
        viewGroup2.removeView(findViewById);
        View findViewById2 = findViewById((int) C2752R.C2754id.action_mode_bar_stub_placeholder);
        s1.z.c.l.d(findViewById2, "placeholder");
        ViewGroup.LayoutParams layoutParams = findViewById2.getLayoutParams();
        ViewParent parent2 = findViewById2.getParent();
        Objects.requireNonNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup3 = (ViewGroup) parent2;
        viewGroup3.removeView(findViewById2);
        viewGroup3.addView(findViewById, layoutParams);
    }

    public void onDestroy() {
        UrgentConversationsActivity.super.onDestroy();
        AbstractC6351j abstractC6351j = this.f13915a;
        if (abstractC6351j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6351j.mo9806c();
        this.f13924j.removeCallbacks(this.f13926l);
        RecyclerView recyclerView = m34874pa().f51222f;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        recyclerView.setAdapter(null);
        RecyclerView recyclerView2 = m34874pa().f51221e;
        s1.z.c.l.d(recyclerView2, "binding.overflowRecyclerView");
        recyclerView2.setAdapter(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        UrgentConversationsActivity.super.onStart();
        bindService(new Intent((Context) this, (Class<?>) UrgentMessageService.class), this.f13925k, 0);
        this.f13924j.removeCallbacks(this.f13926l);
        this.f13924j.postDelayed(this.f13926l, 200L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStop() {
        UrgentConversationsActivity.super.onStop();
        unbindService(this.f13925k);
        m34872ra();
    }

    /* renamed from: pa */
    public final C18158f m34874pa() {
        return (C18158f) this.f13918d.getValue();
    }

    /* renamed from: qa */
    public final AbstractC6351j m34873qa() {
        AbstractC6351j abstractC6351j = this.f13915a;
        if (abstractC6351j != null) {
            return abstractC6351j;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: ra */
    public final void m34872ra() {
        UrgentMessageService.BinderC4280a binderC4280a = this.f13919e;
        if (binderC4280a != null) {
            this.f13919e = null;
            AbstractC6351j abstractC6351j = this.f13915a;
            if (abstractC6351j == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.e(abstractC6351j, "listener");
            AbstractC6368i abstractC6368i = binderC4280a.f13939a.get();
            if (abstractC6368i != null) {
                abstractC6368i.mo31387qi(abstractC6351j);
            }
            AbstractC6351j abstractC6351j2 = this.f13915a;
            if (abstractC6351j2 != null) {
                abstractC6351j2.mo11013xb();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: u2 */
    public void mo31416u2(long j) {
        startActivity(new Intent((Context) this, (Class<?>) ConversationActivity.class).putExtra("conversation_id", j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6353l
    /* renamed from: w7 */
    public void mo31415w7(long j) {
        Context applicationContext = getApplicationContext();
        s1.z.c.l.d(applicationContext, "applicationContext");
        UrgentMessageService.m34870e(applicationContext, j);
        C27062a.m968b(getApplicationContext()).m966d(new Intent("com.truecaller.messaging.urgent.ACTION_FINISH_UM_KEYGUARD_ACTIVITY"));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5275f3
    /* renamed from: z9 */
    public AbstractC5784v3 mo33447z9() {
        AbstractC5784v3 abstractC5784v3 = this.f13923i;
        if (abstractC5784v3 != null) {
            return abstractC5784v3;
        }
        throw new IllegalStateException("Conversation component not set");
    }
}
