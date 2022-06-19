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
import kotlin.C18538n;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0002LMB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\u0016\u0010'\u001a\u00020%2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000eH\u0002J\b\u0010+\u001a\u00020%H\u0002J\u0018\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0007H\u0002J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u00100\u001a\u00020%J\b\u00101\u001a\u00020%H\u0002J\u0010\u00102\u001a\u00020%2\u0006\u00103\u001a\u00020\u000eH\u0002J\u001c\u00104\u001a\u00020%2\b\b\u0002\u00105\u001a\u00020\u000e2\b\b\u0002\u00106\u001a\u000207H\u0002J\u0016\u00108\u001a\u00020%2\f\u00109\u001a\b\u0012\u0004\u0012\u00020%0:H\u0002J\u001c\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020=2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010>\u001a\u000207J\u0006\u0010?\u001a\u000207J\u0010\u0010@\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\b\u0010A\u001a\u00020%H\u0002J\b\u0010B\u001a\u00020%H\u0002J\b\u0010C\u001a\u00020%H\u0014J\u000e\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020FJ\u000e\u0010G\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010H\u001a\u00020%J\u0010\u0010I\u001a\u00020%2\u0006\u00105\u001a\u00020\u000eH\u0002J\u0012\u0010J\u001a\u00020%2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0002J\u0006\u0010K\u001a\u00020%R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\nX\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082D¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0014\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R&\u0010\"\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0#0\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n��¨\u0006N"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "BG_TRANSLATION_DELTA", "", "SCALE_HIDE", "SCALE_SHOW", "SHOW_TIMEOUT", "", "_binding", "Lcom/callapp/contacts/databinding/CallFabLayoutBinding;", "actionsViews", "", "Landroid/view/View;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;", "callFabActionListener", "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;", "contactActions", "", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "delayHandler", "Landroid/os/Handler;", "runnableAutoHide", "Ljava/lang/Runnable;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;", "transfersCoordinates", "Lkotlin/Pair;", "addAction", "", "action", "addActionsToContainer", "list", "animateHandOff", "delay", "clearAll", "getActionView", "Landroid/widget/ImageView;", "res", "getActions", "hide", "hideActionsAndBg", "hideAfterTimeOut", "timeOut", "hideBg", "startDelay", "fast", "", "hideImmediate", "onHiddenComplete", "Lkotlin/Function0;", "init", "activity", "Landroid/app/Activity;", "isActionsHidden", "isValid", "onActionClicked", "onActionsHidden", "onAllActionsShow", "onDetachedFromWindow", "onTouchUpPerformed", "e", "Landroid/view/MotionEvent;", "setActionListener", "show", "showActions", "showBgAndActions", "showIntro", "OnCallFabActionListener", "State", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView.class */
public final class CallFabWithActionsView extends FrameLayout {

    /* renamed from: a */
    OnCallFabActionListener f21703a;

    /* renamed from: b */
    final List<View> f21704b;

    /* renamed from: c */
    State f21705c;

    /* renamed from: d */
    List<? extends ContactAction> f21706d;

    /* renamed from: e */
    final Runnable f21707e;

    /* renamed from: f */
    final Handler f21708f;

    /* renamed from: g */
    private CallFabLayoutBinding f21709g;

    /* renamed from: h */
    private final float f21710h;

    /* renamed from: i */
    private final float f21711i;

    /* renamed from: j */
    private final long f21712j;

    /* renamed from: k */
    private final float f21713k;

    /* renamed from: l */
    private final List<List<C18538n<Float, Float>>> f21714l;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tH&¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;", "", "onCallFabActionClicked", "", "action", "Lcom/callapp/contacts/activity/contact/details/ContactAction;", "onCallFabActionsHidden", "onCallFabActionsShown", "actions", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener.class */
    public interface OnCallFabActionListener {
        void onCallFabActionClicked(ContactAction contactAction);

        void onCallFabActionsHidden();

        void onCallFabActionsShown(List<? extends ContactAction> list);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;", "", "(Ljava/lang/String;I)V", "AnimateInto", "AnimatingHide", "AnimatingShow", "Show", "Hide", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
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
        C18524p.m3840d(context, "context");
        this.f21704b = new ArrayList();
        this.f21705c = State.Hide;
        this.f21706d = C18297z.f63400a;
        this.f21707e = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$runnableAutoHide$1
            @Override // java.lang.Runnable
            public final void run() {
                CallFabWithActionsView.this.m30957b();
            }
        };
        this.f21710h = 0.5f;
        this.f21711i = 1.0f;
        this.f21712j = 3500L;
        this.f21713k = 45.0f;
        this.f21708f = new Handler(Looper.getMainLooper());
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        this.f21714l = C18282n.m4167b((Object[]) new List[]{C18282n.m4176a(new C18538n(valueOf, Float.valueOf(ViewUtils.m27333a(context, -75.0f)))), C18282n.m4167b((Object[]) new C18538n[]{new C18538n(Float.valueOf(ViewUtils.m27333a(context, -50.0f)), Float.valueOf(ViewUtils.m27333a(context, -75.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 50.0f)), Float.valueOf(ViewUtils.m27333a(context, -75.0f)))}), C18282n.m4167b((Object[]) new C18538n[]{new C18538n(Float.valueOf(ViewUtils.m27333a(context, -65.0f)), Float.valueOf(ViewUtils.m27333a(context, -50.0f))), new C18538n(valueOf, Float.valueOf(ViewUtils.m27333a(context, -75.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 65.0f)), Float.valueOf(ViewUtils.m27333a(context, -50.0f)))}), C18282n.m4167b((Object[]) new C18538n[]{new C18538n(Float.valueOf(ViewUtils.m27333a(context, -75.0f)), Float.valueOf(ViewUtils.m27333a(context, -33.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, -33.0f)), Float.valueOf(ViewUtils.m27333a(context, -75.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 33.0f)), Float.valueOf(ViewUtils.m27333a(context, -75.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 75.0f)), Float.valueOf(ViewUtils.m27333a(context, -33.0f)))}), C18282n.m4167b((Object[]) new C18538n[]{new C18538n(Float.valueOf(ViewUtils.m27333a(context, -75.0f)), Float.valueOf(ViewUtils.m27333a(context, -15.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, -50.0f)), Float.valueOf(ViewUtils.m27333a(context, -65.0f))), new C18538n(valueOf, Float.valueOf(ViewUtils.m27333a(context, -90.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 50.0f)), Float.valueOf(ViewUtils.m27333a(context, -65.0f))), new C18538n(Float.valueOf(ViewUtils.m27333a(context, 75.0f)), Float.valueOf(ViewUtils.m27333a(context, -15.0f)))})});
        this.f21709g = CallFabLayoutBinding.m29072a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ CallFabWithActionsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    private final void m30963a(final long j, final boolean z) {
        final View view = getBinding().f24981d;
        view.clearAnimation();
        view.setOnClickListener(null);
        view.animate().setStartDelay(j).alpha(BitmapDescriptorFactory.HUE_RED).translationY(ViewUtils.m27333a(view.getContext(), this.f21713k)).setDuration(z ? (char) 200 : view.getAlpha() * 300.0f).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$hideBg$$inlined$apply$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(8);
                CallFabWithActionsView.m30948h(this);
            }
        }).start();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m30959a(CallFabWithActionsView callFabWithActionsView, List list) {
        callFabWithActionsView.m30954c();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ContactAction contactAction = (ContactAction) it2.next();
            Context context = callFabWithActionsView.getContext();
            C18524p.m3843b(context, "context");
            int largeIcon = contactAction.getLargeIcon();
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(largeIcon);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) ViewUtils.m27333a(context, 35.0f);
            imageView.setClickable(true);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleX(callFabWithActionsView.f21710h);
            imageView.setScaleY(callFabWithActionsView.f21710h);
            imageView.setClickable(true);
            callFabWithActionsView.f21704b.add(imageView);
            callFabWithActionsView.getBinding().f24978a.addView(imageView);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m30958a(CallFabWithActionsView callFabWithActionsView, final Function0 function0) {
        callFabWithActionsView.f21705c = State.AnimatingHide;
        for (View view : callFabWithActionsView.f21704b) {
            view.clearAnimation();
            view.animate().translationY(BitmapDescriptorFactory.HUE_RED).translationX(BitmapDescriptorFactory.HUE_RED).scaleY(callFabWithActionsView.f21710h).scaleX(callFabWithActionsView.f21710h).setDuration(50L).start();
        }
        callFabWithActionsView.m30963a(550L, true);
        callFabWithActionsView.f21708f.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$hideImmediate$2
            @Override // java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        }, 1000L);
    }

    /* renamed from: b */
    public final void m30956b(long j) {
        this.f21708f.postDelayed(this.f21707e, j);
    }

    /* renamed from: c */
    private final void m30954c() {
        for (View view : this.f21704b) {
            view.clearAnimation();
        }
        getBinding().f24978a.removeAllViews();
        this.f21704b.clear();
    }

    /* renamed from: g */
    public static final /* synthetic */ void m30949g(CallFabWithActionsView callFabWithActionsView) {
        callFabWithActionsView.f21705c = State.Show;
        OnCallFabActionListener onCallFabActionListener = callFabWithActionsView.f21703a;
        if (onCallFabActionListener != null) {
            onCallFabActionListener.onCallFabActionsShown(callFabWithActionsView.f21706d);
        }
        callFabWithActionsView.m30956b(callFabWithActionsView.f21712j);
    }

    /* renamed from: h */
    public static final /* synthetic */ void m30948h(CallFabWithActionsView callFabWithActionsView) {
        callFabWithActionsView.f21705c = State.Hide;
        OnCallFabActionListener onCallFabActionListener = callFabWithActionsView.f21703a;
        if (onCallFabActionListener != null) {
            onCallFabActionListener.onCallFabActionsHidden();
        }
    }

    /* renamed from: a */
    public final void m30965a() {
        if (this.f21705c == State.Hide || this.f21705c == State.AnimatingHide) {
            return;
        }
        m30957b();
    }

    /* renamed from: a */
    public final void m30964a(final long j) {
        this.f21705c = State.AnimatingShow;
        final View view = getBinding().f24981d;
        view.clearAnimation();
        view.setVisibility(0);
        view.setY(ViewUtils.m27333a(view.getContext(), this.f21713k));
        view.animate().setStartDelay(j).translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration((1.0f - view.getAlpha()) * 175.0f).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.m30965a();
                    }
                });
            }
        }).start();
        if (!isValid()) {
            m30965a();
            return;
        }
        final List<C18538n<Float, Float>> list = this.f21714l.get(this.f21704b.size() - 1);
        int i = 0;
        for (Object obj : this.f21704b) {
            if (i < 0) {
                C18282n.m4175a();
            }
            View view2 = (View) obj;
            view2.clearAnimation();
            final int i2 = i;
            view2.animate().translationX(list.get(i).f63624a.floatValue()).translationY(list.get(i).f63625b.floatValue()).scaleY(this.f21711i).scaleX(this.f21711i).setStartDelay((i * 70) + j).setDuration(550L).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    List list2;
                    int i3 = i2;
                    list2 = this.f21704b;
                    if (i3 == list2.size() - 1) {
                        CallFabWithActionsView.m30949g(this);
                    }
                }
            }).start();
            i++;
        }
    }

    /* renamed from: a */
    public final void m30962a(Activity activity, final List<? extends ContactAction> list) {
        C18524p.m3840d(activity, "activity");
        C18524p.m3840d(list, "list");
        if (list.size() <= this.f21714l.size() && !list.isEmpty()) {
            this.f21706d = list;
            activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$init$1

                @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
                /* renamed from: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$init$1$1 */
                /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1.class */
                static final class C61521 extends AbstractC18526r implements Function0<C20128v> {
                    C61521() {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ C20128v invoke() {
                        CallFabWithActionsView.m30959a(CallFabWithActionsView.this, list);
                        return C20128v.f66529a;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    CallFabLayoutBinding binding;
                    CallFabWithActionsView.State state;
                    CallFabWithActionsView.State state2;
                    binding = CallFabWithActionsView.this.getBinding();
                    FrameLayout frameLayout = binding.f24978a;
                    C18524p.m3843b(frameLayout, "binding.actionsContainer");
                    if (frameLayout.getChildCount() <= 0) {
                        CallFabWithActionsView.m30959a(CallFabWithActionsView.this, list);
                        return;
                    }
                    state = CallFabWithActionsView.this.f21705c;
                    if (state != CallFabWithActionsView.State.Show) {
                        state2 = CallFabWithActionsView.this.f21705c;
                        if (state2 != CallFabWithActionsView.State.AnimatingShow) {
                            CallFabWithActionsView.m30959a(CallFabWithActionsView.this, list);
                            return;
                        }
                    }
                    CallFabWithActionsView.m30958a(CallFabWithActionsView.this, new C61521());
                }
            });
            return;
        }
        throw new IndexOutOfBoundsException("Number of actions cant be greater then " + this.f21714l.size() + " or empty");
    }

    /* renamed from: b */
    public final void m30957b() {
        this.f21705c = State.AnimatingHide;
        int i = 0;
        m30963a(300L, false);
        for (Object obj : this.f21704b) {
            if (i < 0) {
                C18282n.m4175a();
            }
            View view = (View) obj;
            view.clearAnimation();
            view.animate().translationY(BitmapDescriptorFactory.HUE_RED).translationX(BitmapDescriptorFactory.HUE_RED).scaleX(this.f21710h).scaleY(this.f21710h).setStartDelay(((this.f21704b.size() - i) - 1) * 55).setDuration(300L).start();
            i++;
        }
    }

    public final List<ContactAction> getActions() {
        return this.f21706d;
    }

    public final CallFabLayoutBinding getBinding() {
        CallFabLayoutBinding callFabLayoutBinding = this.f21709g;
        C18524p.m3851a(callFabLayoutBinding);
        return callFabLayoutBinding;
    }

    public final boolean isActionsHidden() {
        return this.f21705c == State.Hide;
    }

    public final boolean isValid() {
        return this.f21704b.size() > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        getBinding().f24981d.clearAnimation();
        m30954c();
        super.onDetachedFromWindow();
    }

    public final void setActionListener(OnCallFabActionListener callFabActionListener) {
        C18524p.m3840d(callFabActionListener, "callFabActionListener");
        this.f21703a = callFabActionListener;
    }
}
