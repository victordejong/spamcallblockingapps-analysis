package com.callapp.contacts.activity.contact.details;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.callapp.contacts.activity.contact.details.CallFabWithActionsView;
import com.callapp.contacts.databinding.CallFabLayoutBinding;
import com.callapp.contacts.util.ViewUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0002LMB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\u0016\u0010'\u001a\u00020%2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000eH\u0002J\b\u0010+\u001a\u00020%H\u0002J\u0018\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0007H\u0002J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u00100\u001a\u00020%J\b\u00101\u001a\u00020%H\u0002J\u0010\u00102\u001a\u00020%2\u0006\u00103\u001a\u00020\u000eH\u0002J\u001c\u00104\u001a\u00020%2\b\b\u0002\u00105\u001a\u00020\u000e2\b\b\u0002\u00106\u001a\u000207H\u0002J\u0016\u00108\u001a\u00020%2\f\u00109\u001a\b\u0012\u0004\u0012\u00020%0:H\u0002J\u001c\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020=2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010>\u001a\u000207J\u0006\u0010?\u001a\u000207J\u0010\u0010@\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\b\u0010A\u001a\u00020%H\u0002J\b\u0010B\u001a\u00020%H\u0002J\b\u0010C\u001a\u00020%H\u0014J\u000e\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020FJ\u000e\u0010G\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010H\u001a\u00020%J\u0010\u0010I\u001a\u00020%2\u0006\u00105\u001a\u00020\u000eH\u0002J\u0012\u0010J\u001a\u00020%2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0002J\u0006\u0010K\u001a\u00020%R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0014\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R&\u0010\"\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0#0\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n��¨\u0006N"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "BG_TRANSLATION_DELTA", "", "SCALE_HIDE", "SCALE_SHOW", "SHOW_TIMEOUT", "", "_binding", "Lcom/callapp/contacts/databinding/CallFabLayoutBinding;", "actionsViews", "", "Landroid/view/View;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;", "callFabActionListener", "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;", "contactActions", "", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "delayHandler", "Landroid/os/Handler;", "runnableAutoHide", "Ljava/lang/Runnable;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;", "transfersCoordinates", "Lkotlin/Pair;", "addAction", "", "action", "addActionsToContainer", "list", "animateHandOff", "delay", "clearAll", "getActionView", "Landroid/widget/ImageView;", "res", "getActions", "hide", "hideActionsAndBg", "hideAfterTimeOut", "timeOut", "hideBg", "startDelay", "fast", "", "hideImmediate", "onHiddenComplete", "Lkotlin/Function0;", "init", "activity", "Landroid/app/Activity;", "isActionsHidden", "isValid", "onActionClicked", "onActionsHidden", "onAllActionsShow", "onDetachedFromWindow", "onTouchUpPerformed", "e", "Landroid/view/MotionEvent;", "setActionListener", "show", "showActions", "showBgAndActions", "showIntro", "OnCallFabActionListener", "State", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView.class */
public final class CallFabWithActionsView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    OnCallFabActionListener f11997a;

    /* renamed from: b  reason: collision with root package name */
    final List<View> f11998b;

    /* renamed from: c  reason: collision with root package name */
    State f11999c;

    /* renamed from: d  reason: collision with root package name */
    List<? extends ContactAction> f12000d;
    final Runnable e;
    final Handler f;
    private CallFabLayoutBinding g;
    private final float h;
    private final float i;
    private final long j;
    private final float k;
    private final List<List<n<Float, Float>>> l;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tH&¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;", "", "onCallFabActionClicked", "", "action", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "onCallFabActionsHidden", "onCallFabActionsShown", "actions", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener.class */
    public interface OnCallFabActionListener {
        void onCallFabActionClicked(ContactAction contactAction);

        void onCallFabActionsHidden();

        void onCallFabActionsShown(List<? extends ContactAction> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;", "", "(Ljava/lang/String;I)V", "AnimateInto", "AnimatingHide", "AnimatingShow", "Show", "Hide", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView$State.class */
    public enum State {
        AnimateInto,
        AnimatingHide,
        AnimatingShow,
        Show,
        Hide
    }

    public CallFabWithActionsView(Context context) {
        this(context, null, 0, 6, null);
    }

    public CallFabWithActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallFabWithActionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p.d(context, "context");
        this.f11998b = new ArrayList();
        this.f11999c = State.Hide;
        this.f12000d = z.f36608a;
        this.e = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$runnableAutoHide$1
            @Override // java.lang.Runnable
            public final void run() {
                CallFabWithActionsView.this.b();
            }
        };
        this.h = 0.5f;
        this.i = 1.0f;
        this.j = 3500L;
        this.k = 45.0f;
        this.f = new Handler(Looper.getMainLooper());
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        this.l = kotlin.a.n.b((Object[]) new List[]{kotlin.a.n.a(new n(valueOf, Float.valueOf(ViewUtils.a(context, -75.0f)))), kotlin.a.n.b((Object[]) new n[]{new n(Float.valueOf(ViewUtils.a(context, -50.0f)), Float.valueOf(ViewUtils.a(context, -75.0f))), new n(Float.valueOf(ViewUtils.a(context, 50.0f)), Float.valueOf(ViewUtils.a(context, -75.0f)))}), kotlin.a.n.b((Object[]) new n[]{new n(Float.valueOf(ViewUtils.a(context, -65.0f)), Float.valueOf(ViewUtils.a(context, -50.0f))), new n(valueOf, Float.valueOf(ViewUtils.a(context, -75.0f))), new n(Float.valueOf(ViewUtils.a(context, 65.0f)), Float.valueOf(ViewUtils.a(context, -50.0f)))}), kotlin.a.n.b((Object[]) new n[]{new n(Float.valueOf(ViewUtils.a(context, -75.0f)), Float.valueOf(ViewUtils.a(context, -33.0f))), new n(Float.valueOf(ViewUtils.a(context, -33.0f)), Float.valueOf(ViewUtils.a(context, -75.0f))), new n(Float.valueOf(ViewUtils.a(context, 33.0f)), Float.valueOf(ViewUtils.a(context, -75.0f))), new n(Float.valueOf(ViewUtils.a(context, 75.0f)), Float.valueOf(ViewUtils.a(context, -33.0f)))}), kotlin.a.n.b((Object[]) new n[]{new n(Float.valueOf(ViewUtils.a(context, -75.0f)), Float.valueOf(ViewUtils.a(context, -15.0f))), new n(Float.valueOf(ViewUtils.a(context, -50.0f)), Float.valueOf(ViewUtils.a(context, -65.0f))), new n(valueOf, Float.valueOf(ViewUtils.a(context, -90.0f))), new n(Float.valueOf(ViewUtils.a(context, 50.0f)), Float.valueOf(ViewUtils.a(context, -65.0f))), new n(Float.valueOf(ViewUtils.a(context, 75.0f)), Float.valueOf(ViewUtils.a(context, -15.0f)))})});
        this.g = CallFabLayoutBinding.a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ CallFabWithActionsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final void a(final long j, final boolean z) {
        final View view = getBinding().f14290d;
        view.clearAnimation();
        view.setOnClickListener(null);
        view.animate().setStartDelay(j).alpha(BitmapDescriptorFactory.HUE_RED).translationY(ViewUtils.a(view.getContext(), this.k)).setDuration(z ? 200L : view.getAlpha() * 300.0f).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$hideBg$$inlined$apply$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(8);
                CallFabWithActionsView.h(this);
            }
        }).start();
    }

    public static final /* synthetic */ void a(CallFabWithActionsView callFabWithActionsView, List list) {
        callFabWithActionsView.c();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ContactAction contactAction = (ContactAction) it2.next();
            Context context = callFabWithActionsView.getContext();
            p.b(context, "context");
            int largeIcon = contactAction.getLargeIcon();
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(largeIcon);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) ViewUtils.a(context, 35.0f);
            imageView.setClickable(true);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleX(callFabWithActionsView.h);
            imageView.setScaleY(callFabWithActionsView.h);
            imageView.setClickable(true);
            callFabWithActionsView.f11998b.add(imageView);
            callFabWithActionsView.getBinding().f14287a.addView(imageView);
        }
    }

    public static final /* synthetic */ void a(CallFabWithActionsView callFabWithActionsView, final Function0 function0) {
        callFabWithActionsView.f11999c = State.AnimatingHide;
        for (View view : callFabWithActionsView.f11998b) {
            view.clearAnimation();
            view.animate().translationY(BitmapDescriptorFactory.HUE_RED).translationX(BitmapDescriptorFactory.HUE_RED).scaleY(callFabWithActionsView.h).scaleX(callFabWithActionsView.h).setDuration(50L).start();
        }
        callFabWithActionsView.a(550L, true);
        callFabWithActionsView.f.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$hideImmediate$2
            @Override // java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(long j) {
        this.f.postDelayed(this.e, j);
    }

    private final void c() {
        for (View view : this.f11998b) {
            view.clearAnimation();
        }
        getBinding().f14287a.removeAllViews();
        this.f11998b.clear();
    }

    public static final /* synthetic */ void g(CallFabWithActionsView callFabWithActionsView) {
        callFabWithActionsView.f11999c = State.Show;
        OnCallFabActionListener onCallFabActionListener = callFabWithActionsView.f11997a;
        if (onCallFabActionListener != null) {
            onCallFabActionListener.onCallFabActionsShown(callFabWithActionsView.f12000d);
        }
        callFabWithActionsView.b(callFabWithActionsView.j);
    }

    public static final /* synthetic */ void h(CallFabWithActionsView callFabWithActionsView) {
        callFabWithActionsView.f11999c = State.Hide;
        OnCallFabActionListener onCallFabActionListener = callFabWithActionsView.f11997a;
        if (onCallFabActionListener != null) {
            onCallFabActionListener.onCallFabActionsHidden();
        }
    }

    public final void a() {
        if (this.f11999c != State.Hide && this.f11999c != State.AnimatingHide) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final long j) {
        this.f11999c = State.AnimatingShow;
        final View view = getBinding().f14290d;
        view.clearAnimation();
        view.setVisibility(0);
        view.setY(ViewUtils.a(view.getContext(), this.k));
        view.animate().setStartDelay(j).translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration((1.0f - view.getAlpha()) * 175.0f).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.a();
                    }
                });
            }
        }).start();
        if (isValid()) {
            final List<n<Float, Float>> list = this.l.get(this.f11998b.size() - 1);
            final int i = 0;
            for (Object obj : this.f11998b) {
                if (i < 0) {
                    kotlin.a.n.a();
                }
                View view2 = (View) obj;
                view2.clearAnimation();
                view2.animate().translationX(list.get(i).f36810a.floatValue()).translationY(list.get(i).f36811b.floatValue()).scaleY(this.i).scaleX(this.i).setStartDelay((i * 70) + j).setDuration(550L).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        List list2;
                        int i2 = i;
                        list2 = this.f11998b;
                        if (i2 == list2.size() - 1) {
                            CallFabWithActionsView.g(this);
                        }
                    }
                }).start();
                i++;
            }
            return;
        }
        a();
    }

    public final void a(Activity activity, final List<? extends ContactAction> list) {
        p.d(activity, "activity");
        p.d(list, "list");
        if (list.size() > this.l.size() || list.isEmpty()) {
            throw new IndexOutOfBoundsException("Number of actions cant be greater then " + this.l.size() + " or empty");
        }
        this.f12000d = list;
        activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$init$1

            @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
            /* renamed from: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$init$1$1  reason: invalid class name */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1.class */
            static final class AnonymousClass1 extends r implements Function0<v> {
                AnonymousClass1() {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ v invoke() {
                    CallFabWithActionsView.a(CallFabWithActionsView.this, list);
                    return v.f38654a;
                }
            }

            @Override // java.lang.Runnable
            public final void run() {
                CallFabLayoutBinding binding;
                CallFabWithActionsView.State state;
                CallFabWithActionsView.State state2;
                binding = CallFabWithActionsView.this.getBinding();
                FrameLayout frameLayout = binding.f14287a;
                p.b(frameLayout, "binding.actionsContainer");
                if (frameLayout.getChildCount() > 0) {
                    state = CallFabWithActionsView.this.f11999c;
                    if (state != CallFabWithActionsView.State.Show) {
                        state2 = CallFabWithActionsView.this.f11999c;
                        if (state2 != CallFabWithActionsView.State.AnimatingShow) {
                            CallFabWithActionsView.a(CallFabWithActionsView.this, list);
                            return;
                        }
                    }
                    CallFabWithActionsView.a(CallFabWithActionsView.this, new AnonymousClass1());
                    return;
                }
                CallFabWithActionsView.a(CallFabWithActionsView.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f11999c = State.AnimatingHide;
        int i = 0;
        a(300L, false);
        for (Object obj : this.f11998b) {
            if (i < 0) {
                kotlin.a.n.a();
            }
            View view = (View) obj;
            view.clearAnimation();
            view.animate().translationY(BitmapDescriptorFactory.HUE_RED).translationX(BitmapDescriptorFactory.HUE_RED).scaleX(this.h).scaleY(this.h).setStartDelay(((this.f11998b.size() - i) - 1) * 55).setDuration(300L).start();
            i++;
        }
    }

    public final List<ContactAction> getActions() {
        return this.f12000d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final CallFabLayoutBinding getBinding() {
        CallFabLayoutBinding callFabLayoutBinding = this.g;
        p.a(callFabLayoutBinding);
        return callFabLayoutBinding;
    }

    public final boolean isActionsHidden() {
        return this.f11999c == State.Hide;
    }

    public final boolean isValid() {
        return this.f11998b.size() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        getBinding().f14290d.clearAnimation();
        c();
        super.onDetachedFromWindow();
    }

    public final void setActionListener(OnCallFabActionListener callFabActionListener) {
        p.d(callFabActionListener, "callFabActionListener");
        this.f11997a = callFabActionListener;
    }
}
