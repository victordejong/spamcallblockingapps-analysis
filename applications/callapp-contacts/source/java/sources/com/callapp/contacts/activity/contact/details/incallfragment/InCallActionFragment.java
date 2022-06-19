package com.callapp.contacts.activity.contact.details.incallfragment;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0790b;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFragment;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.CallAppExoPlayerFactory;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.DrawingViewWithCallback;
import com.callapp.contacts.widget.SingleAndMultiOnTouchListener;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.AbstractC11168m;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.p346ui.PlayerView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.util.AbstractC11609i;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment.class */
public class InCallActionFragment extends BaseFragment {

    /* renamed from: a */
    private ImageView f21925a;

    /* renamed from: b */
    private ImageView f21926b;

    /* renamed from: c */
    private InCallActionFragmentInterface f21927c;

    /* renamed from: d */
    private String f21928d;

    /* renamed from: e */
    private TextView f21929e;

    /* renamed from: f */
    private TextView f21930f;

    /* renamed from: g */
    private LinearLayout f21931g;

    /* renamed from: h */
    private ViewStub f21932h;

    /* renamed from: i */
    private DrawingViewWithCallback f21933i;

    /* renamed from: j */
    private BaseAnsweringMethodViewController f21934j;

    /* renamed from: k */
    private TextView f21935k;

    /* renamed from: l */
    private PlayerView f21936l;

    /* renamed from: m */
    private AbstractC11168m f21937m;

    /* renamed from: n */
    private String f21938n;

    /* renamed from: o */
    private TextView f21939o;

    /* renamed from: p */
    private LinearLayout f21940p;

    /* renamed from: q */
    private TextView f21941q;

    /* renamed from: r */
    private View f21942r;

    /* renamed from: s */
    private boolean f21943s;

    /* renamed from: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5.class */
    public class C62625 extends SingleAndMultiOnTouchListener {

        /* renamed from: a */
        final /* synthetic */ ImageView f21954a;

        /* renamed from: b */
        final /* synthetic */ Bitmap f21955b;

        /* renamed from: c */
        final /* synthetic */ TextView f21956c;

        /* renamed from: d */
        final /* synthetic */ String f21957d;

        /* renamed from: e */
        final /* synthetic */ Runnable f21958e;

        /* renamed from: g */
        private final int f21960g;

        /* renamed from: h */
        private final int f21961h;

        /* renamed from: i */
        private int f21962i = -1;

        /* renamed from: j */
        private int f21963j = -1;

        /* renamed from: k */
        private float f21964k;

        /* renamed from: l */
        private float f21965l;

        /* renamed from: m */
        private int f21966m;

        C62625(ImageView imageView, Bitmap bitmap, TextView textView, String str, Runnable runnable) {
            InCallActionFragment.this = r5;
            this.f21954a = imageView;
            this.f21955b = bitmap;
            this.f21956c = textView;
            this.f21957d = str;
            this.f21958e = runnable;
            this.f21960g = r5.getResources().getDimensionPixelOffset(2131165689);
            this.f21961h = r5.getResources().getDimensionPixelOffset(2131165692);
        }

        /* renamed from: a */
        public /* synthetic */ void m30884a(double d, Bitmap bitmap) {
            InCallActionFragment.this.f21933i.m26753b(this.f21962i, this.f21963j, d, bitmap);
        }

        /* JADX WARN: Type inference failed for: r0v89, types: [double] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /* renamed from: a */
        public final boolean mo26614a(View view, MotionEvent motionEvent, boolean z) {
            int i;
            if (this.f21962i == -1 && this.f21963j == -1) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                this.f21962i = iArr[0] + (view.getWidth() / 2);
                this.f21963j = iArr[1];
                this.f21966m = ViewConfiguration.get(InCallActionFragment.this.getContext()).getScaledTouchSlop();
            }
            ?? hypot = Math.hypot(this.f21962i - motionEvent.getRawX(), this.f21963j - motionEvent.getRawY());
            int i2 = this.f21961h;
            char c = hypot;
            if (hypot <= i2) {
                c = i2;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                AndroidUtils.m27630a(view, 1);
                InCallActionFragment.this.f21933i.setPaintColor(ThemeUtils.getColor(2131099784));
                InCallActionFragment.this.f21933i.setCoverImageView(this.f21954a);
                InCallActionFragment.this.f21933i.m26761a(this.f21962i, this.f21963j, (double) c, this.f21955b);
                this.f21964k = motionEvent.getRawX();
                this.f21965l = motionEvent.getRawY();
                this.f21956c.setText(this.f21957d);
                return true;
            } else if (action != 1) {
                if (action != 2) {
                    return true;
                }
                if (c >= this.f21960g && c <= i + 10) {
                    AndroidUtils.m27630a(view, 1);
                }
                InCallActionFragment.this.f21933i.m26759a(this.f21962i, this.f21963j, c, this.f21955b);
                return true;
            } else {
                this.f21956c.setText("");
                float f = this.f21964k;
                float rawX = motionEvent.getRawX();
                float f2 = this.f21965l;
                float rawY = motionEvent.getRawY();
                float abs = Math.abs(f - rawX);
                float abs2 = Math.abs(f2 - rawY);
                int i3 = this.f21966m;
                boolean z2 = false;
                if (abs <= i3) {
                    z2 = false;
                    if (abs2 <= i3) {
                        z2 = true;
                    }
                }
                if (z2) {
                    DrawingViewWithCallback drawingViewWithCallback = InCallActionFragment.this.f21933i;
                    final char c2 = c;
                    final Bitmap bitmap = this.f21955b;
                    drawingViewWithCallback.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$InCallActionFragment$5$3lFkrGUxdRIN3798Zn88n5w94_o
                        @Override // java.lang.Runnable
                        public final void run() {
                            InCallActionFragment.C62625.this.m30884a(c2, bitmap);
                        }
                    }, 300L);
                    return true;
                } else if (c > this.f21960g) {
                    InCallActionFragment.this.f21933i.m26760a(this.f21962i, this.f21963j, c, this.f21955b, this.f21958e);
                    return true;
                } else {
                    InCallActionFragment.this.f21933i.m26753b(this.f21962i, this.f21963j, c, this.f21955b);
                    return true;
                }
            }
        }

        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /* renamed from: a */
        public final boolean mo26613a(boolean z) {
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface.class */
    public interface InCallActionFragmentInterface {
        PlayerView getPlayerView();

        void onActionSelected(int i);

        void onInCallActionFragmentCreated(boolean z);
    }

    /* renamed from: a */
    private static Bitmap m30896a(ImageView imageView) {
        imageView.setDrawingCacheEnabled(true);
        imageView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        imageView.layout(0, 0, imageView.getMeasuredWidth(), imageView.getMeasuredHeight());
        imageView.buildDrawingCache(true);
        Bitmap createBitmap = Bitmap.createBitmap(imageView.getDrawingCache());
        imageView.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    /* renamed from: a */
    private View.OnTouchListener m30897a(Bitmap bitmap, ImageView imageView, TextView textView, String str, Runnable runnable) {
        return new C62625(imageView, bitmap, textView, str, runnable);
    }

    /* renamed from: a */
    public static Fragment m30891a(String str) {
        InCallActionFragment inCallActionFragment = new InCallActionFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Constants.EXTRA_PHONE_NUMBER, str);
        inCallActionFragment.setArguments(bundle);
        return inCallActionFragment;
    }

    /* renamed from: a */
    private void m30898a() {
        if ((Prefs.f26635ho.get().intValue() % 2 == 0 && Prefs.f26635ho.get().intValue() < 5) || (Prefs.f26657n.get().booleanValue() && Prefs.f26660q.get().booleanValue())) {
            this.f21940p.setVisibility(0);
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            InCallActionFragment.this.f21940p.setVisibility(8);
                        }
                    });
                }
            }, 3000L);
        }
        Prefs.f26635ho.m28169b(1);
    }

    /* renamed from: a */
    static /* synthetic */ void m30894a(InCallActionFragment inCallActionFragment, int i) {
        if (inCallActionFragment.f21939o != null) {
            if (i == 2 || (Prefs.f26657n.get().booleanValue() && Prefs.f26662s.get().booleanValue())) {
                inCallActionFragment.m30898a();
                inCallActionFragment.f21939o.setVisibility(0);
                inCallActionFragment.f21939o.setText(Activities.getString(2131887398));
                inCallActionFragment.f21939o.setCompoundDrawablesWithIntrinsicBounds(2131231794, 0, 0, 0);
                inCallActionFragment.f21939o.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
            } else if (i != 1 && (!Prefs.f26657n.get().booleanValue() || !Prefs.f26661r.get().booleanValue())) {
                inCallActionFragment.f21939o.setVisibility(8);
                inCallActionFragment.f21940p.setVisibility(8);
            } else {
                inCallActionFragment.m30898a();
                inCallActionFragment.f21939o.setVisibility(0);
                inCallActionFragment.f21939o.setText(Activities.getString(2131887400));
                inCallActionFragment.f21939o.setCompoundDrawablesWithIntrinsicBounds(2131231960, 0, 0, 0);
                inCallActionFragment.f21939o.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
            }
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m30890b() {
        PhoneStateManager.get().muteRingerIfNeeded();
        this.f21927c.onActionSelected(3);
    }

    /* renamed from: c */
    public /* synthetic */ void m30888c() {
        PhoneStateManager.get().muteRingerIfNeeded();
        this.f21927c.onActionSelected(2);
    }

    public void setSimId(int i, String str) {
        SimManager.SimId simId = SimManager.SimId.getSimId(Integer.valueOf(i));
        if (simId == null) {
            if (!ViewUtils.m27329a(this.f21931g)) {
                return;
            }
            this.f21931g.setVisibility(8);
            return;
        }
        if (!ViewUtils.m27329a(this.f21931g)) {
            this.f21931g = (LinearLayout) this.f21932h.inflate();
        }
        this.f21931g.setVisibility(0);
        ImageUtils.m27529a((ImageView) this.f21931g.findViewById(2131362663), SimManager.m28141b(simId), (ColorFilter) null);
        TextView textView = (TextView) this.f21931g.findViewById(2131362659);
        int i2 = 2131100228;
        textView.setTextColor(ThemeUtils.getColor(2131100228));
        if (!StringUtils.m26045b((CharSequence) str)) {
            return;
        }
        this.f21930f.setVisibility(0);
        this.f21930f.setText(PhoneNumberUtils.m26078f(str));
        TextView textView2 = this.f21930f;
        if (!Prefs.f26429du.get().booleanValue()) {
            i2 = 2131099786;
        }
        textView2.setTextColor(ThemeUtils.getColor(i2));
        textView.setText(str);
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558671;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f21927c = (InCallActionFragmentInterface) context;
        } catch (ClassCastException e) {
            throw new ClassCastException(context.toString() + " must implement OnActionDetected");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f21933i = (DrawingViewWithCallback) onCreateView.findViewById(2131363663);
        this.f21926b = (ImageView) onCreateView.findViewById(2131363041);
        PlayerView playerView = this.f21927c.getPlayerView();
        this.f21936l = playerView;
        playerView.setVisibility(8);
        TextView textView = (TextView) onCreateView.findViewById(2131363500);
        this.f21929e = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100228));
        this.f21930f = (TextView) onCreateView.findViewById(2131363498);
        this.f21942r = onCreateView.findViewById(2131363053);
        this.f21925a = (ImageView) onCreateView.findViewById(2131363043);
        this.f21932h = (ViewStub) onCreateView.findViewById(2131362664);
        ViewGroup viewGroup2 = (ViewGroup) onCreateView.findViewById(2131362016);
        ButtonSet buttonSet = (ButtonSet) Prefs.f26433dy.get();
        this.f21934j = AnsweringMethodViewControllerFactory.m30899a(!buttonSet.isSingleButtonSetResource(), buttonSet, viewGroup2, (DrawingViewWithCallback) onCreateView.findViewById(2131362363), this.f21927c);
        TextView textView2 = (TextView) onCreateView.findViewById(2131363082);
        this.f21935k = textView2;
        textView2.setText(Activities.getString(2131887044));
        TextView textView3 = (TextView) onCreateView.findViewById(2131363502);
        this.f21939o = textView3;
        textView3.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) onCreateView.findViewById(2131364502);
        this.f21940p = linearLayout;
        TextView textView4 = (TextView) linearLayout.findViewById(2131364071);
        this.f21941q = textView4;
        textView4.setText(Activities.getString(2131887045));
        this.f21940p.setVisibility(8);
        ImageView imageView = (ImageView) onCreateView.findViewById(2131363042);
        ImageView imageView2 = (ImageView) onCreateView.findViewById(2131363044);
        TextView textView5 = (TextView) onCreateView.findViewById(2131364468);
        onCreateView.findViewById(2131362870).setOnTouchListener(m30897a(m30896a(this.f21926b), imageView, textView5, getResources().getString(2131886452), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$InCallActionFragment$qFIpVWHQBkUbWF_x_g9cxrGmP_0
            @Override // java.lang.Runnable
            public final void run() {
                InCallActionFragment.this.m30888c();
            }
        }));
        onCreateView.findViewById(2131362871).setOnTouchListener(m30897a(m30896a(this.f21925a), imageView2, textView5, getResources().getString(2131887726), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$InCallActionFragment$R2jDfXAgnNFJbUzsDJSxoBuVDoU
            @Override // java.lang.Runnable
            public final void run() {
                InCallActionFragment.this.m30890b();
            }
        }));
        ((ImageView) onCreateView.findViewById(2131362197)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f21934j.mo30868a();
        this.f21934j = null;
        AbstractC11168m abstractC11168m = this.f21937m;
        if (abstractC11168m != null) {
            abstractC11168m.mo21113w();
        }
        PlayerView playerView = this.f21936l;
        if (playerView != null) {
            if (playerView.f37964a != null) {
                this.f21936l.f37964a.removeAllViews();
            }
            this.f21936l.setVisibility(8);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        new MultiTaskRunner();
        if (getArguments() != null) {
            String string = getArguments().getString(Constants.EXTRA_PHONE_NUMBER);
            this.f21928d = string;
            if (!StringUtils.m26045b((CharSequence) string)) {
                return;
            }
            if (CallLogUtils.m27556b(this.f21928d)) {
                this.f21925a.setVisibility(8);
                this.f21925a.setEnabled(false);
                this.f21926b.setVisibility(8);
                this.f21926b.setEnabled(false);
            }
            this.f21929e.setText(PhoneNumberUtils.m26078f(this.f21928d));
            final Phone m28239a = PhoneManager.get().m28239a(this.f21928d);
            try {
                long m28854a = DeviceIdLoader.m28854a(m28239a, 500);
                if (Prefs.f26429du.get().booleanValue() || Prefs.f26430dv.get().booleanValue() || Prefs.f26340cK.get().booleanValue()) {
                    PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                    this.f21938n = PersonalStoreItemDataManager.Companion.m28912b(Long.toString(m28854a), PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                }
            } catch (DeviceIdLoader.OperationFailedException e) {
            }
            boolean z = StringUtils.m26045b((CharSequence) this.f21938n) && Activities.isNotificationListenerServiceSupportedOnDevice();
            if (z) {
                GlideUtils.GlideRequestBuilder m27026a = new GlideUtils.GlideRequestBuilder(getContext(), this.f21938n, this.f21942r, new GlideUtils.CustomViewListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.1
                    @Override // com.callapp.contacts.util.glide.GlideUtils.CustomViewListener
                    public void onResourceReady(Drawable drawable, AbstractC3595d<? super Drawable> abstractC3595d) {
                        if (!InCallActionFragment.this.f21943s) {
                            InCallActionFragment.this.f21942r.setBackground(drawable);
                        }
                    }
                }).m27026a(GlideUtils.f28216a, GlideUtils.f28217b);
                m27026a.f28251q = true;
                m27026a.m27013d();
                setVideoRingtoneMode(true);
                if (this.f21937m == null) {
                    AbstractC11168m m26899a = CallAppExoPlayerFactory.m26899a();
                    this.f21937m = m26899a;
                    m26899a.mo21167a(new AbstractC10842ac.AbstractC10843a() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.3
                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20311a(ExoPlaybackException exoPlaybackException) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, exoPlaybackException);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20310a(MediaItem mediaItem, int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, mediaItem, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20309a(C10840aa c10840aa) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10840aa);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20308a(AbstractC10842ac.C10844b c10844b) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10844b);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20307a(AbstractC10864al abstractC10864al, int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, abstractC10864al, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public /* synthetic */ void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, trackGroupArray, c11443g);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: a */
                        public final void mo20305a(boolean z2) {
                            InCallActionFragment.this.f21943s = z2;
                            if (z2) {
                                InCallActionFragment.this.f21936l.setVisibility(0);
                                InCallActionFragment.this.f21942r.setBackground(null);
                            }
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: b */
                        public /* synthetic */ void mo20304b(int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: b */
                        public /* synthetic */ void mo20303b(boolean z2) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z2);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: b */
                        public /* synthetic */ void mo20302b(boolean z2, int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z2, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: c */
                        public /* synthetic */ void mo20301c(List list) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: c */
                        public /* synthetic */ void mo20300c(boolean z2) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z2);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: c */
                        public /* synthetic */ void mo20299c(boolean z2, int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z2, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: d */
                        public /* synthetic */ void mo20298d(int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: e */
                        public /* synthetic */ void mo20297e(int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: f */
                        public /* synthetic */ void mo20296f(int i) {
                            AbstractC10842ac.AbstractC10843a._CC.$default$f(this, i);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: p_ */
                        public /* synthetic */ void mo20295p_() {
                            AbstractC10842ac.AbstractC10843a._CC.$default$p_(this);
                        }

                        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                        /* renamed from: q_ */
                        public /* synthetic */ void mo20294q_() {
                            AbstractC10842ac.AbstractC10843a._CC.$default$q_(this);
                        }
                    });
                }
                this.f21936l.setResizeMode(4);
                this.f21936l.setShutterBackgroundColor(0);
                this.f21936l.setPlayer(this.f21937m);
                this.f21936l.setErrorMessageProvider(new AbstractC11609i<ExoPlaybackException>() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.4
                    @Override // com.google.android.exoplayer2.util.AbstractC11609i
                    /* renamed from: a */
                    public final /* synthetic */ Pair mo19893a(ExoPlaybackException exoPlaybackException) {
                        ExoPlaybackException exoPlaybackException2 = exoPlaybackException;
                        CLog.m27599a(exoPlaybackException2);
                        return Pair.create(0, exoPlaybackException2.getMessage());
                    }
                });
                this.f21936l.requestFocus();
                this.f21937m.mo21160a(VideoCacheManager.get().m26892a(this.f21938n));
            } else {
                setVideoRingtoneMode(false);
                this.f21942r.setBackground(null);
            }
            InCallActionFragmentInterface inCallActionFragmentInterface = this.f21927c;
            if (inCallActionFragmentInterface != null) {
                inCallActionFragmentInterface.onInCallActionFragmentCreated(z);
            }
            new Task() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final CallData callForPhone = PhoneStateManager.get().getCallForPhone(m28239a);
                    if (callForPhone != null) {
                        final SimManager.SimId simId = callForPhone.getSimId();
                        if (simId != null) {
                            final String m28151a = SimManager.get().m28151a(simId);
                            if (SimManager.get().getDualSimOperators() != null) {
                                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        InCallActionFragment.this.setSimId(simId.simId, m28151a);
                                    }
                                });
                            }
                        }
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                InCallActionFragment.m30894a(InCallActionFragment.this, callForPhone.getVerificationStatus());
                            }
                        });
                    }
                }
            }.execute();
        }
    }

    public void setVideoRingtoneMode(boolean z) {
        this.f21935k.setTextColor(z ? ThemeUtils.getColor(2131100228) : C0790b.m44492c(CallAppApplication.get(), 2131099786));
        this.f21926b.setColorFilter(new PorterDuffColorFilter(z ? ThemeUtils.getColor(2131100228) : C0790b.m44492c(CallAppApplication.get(), 2131099784), PorterDuff.Mode.SRC_IN));
        this.f21925a.setColorFilter(new PorterDuffColorFilter(z ? ThemeUtils.getColor(2131100228) : C0790b.m44492c(CallAppApplication.get(), 2131099784), PorterDuff.Mode.SRC_IN));
    }
}
