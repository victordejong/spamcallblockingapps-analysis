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
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.b;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.e.b.d;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFragment;
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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.util.i;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment.class */
public class InCallActionFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f12184a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f12185b;

    /* renamed from: c  reason: collision with root package name */
    private InCallActionFragmentInterface f12186c;

    /* renamed from: d  reason: collision with root package name */
    private String f12187d;
    private TextView e;
    private TextView f;
    private LinearLayout g;
    private ViewStub h;
    private DrawingViewWithCallback i;
    private BaseAnsweringMethodViewController j;
    private TextView k;
    private PlayerView l;
    private m m;
    private String n;
    private TextView o;
    private LinearLayout p;
    private TextView q;
    private View r;
    private boolean s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$5.class */
    public class AnonymousClass5 extends SingleAndMultiOnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f12198a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bitmap f12199b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f12200c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f12201d;
        final /* synthetic */ Runnable e;
        private final int g;
        private final int h;
        private int i = -1;
        private int j = -1;
        private float k;
        private float l;
        private int m;

        AnonymousClass5(ImageView imageView, Bitmap bitmap, TextView textView, String str, Runnable runnable) {
            this.f12198a = imageView;
            this.f12199b = bitmap;
            this.f12200c = textView;
            this.f12201d = str;
            this.e = runnable;
            this.g = InCallActionFragment.this.getResources().getDimensionPixelOffset(2131165689);
            this.h = InCallActionFragment.this.getResources().getDimensionPixelOffset(2131165692);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(double d2, Bitmap bitmap) {
            InCallActionFragment.this.i.b(this.i, this.j, d2, bitmap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v27, types: [com.callapp.contacts.widget.DrawingViewWithCallback] */
        /* JADX WARN: Type inference failed for: r0v60, types: [com.callapp.contacts.widget.DrawingViewWithCallback] */
        /* JADX WARN: Type inference failed for: r0v64, types: [com.callapp.contacts.widget.DrawingViewWithCallback] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [double] */
        /* JADX WARN: Type inference failed for: r17v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(android.view.View r9, android.view.MotionEvent r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 491
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.AnonymousClass5.a(android.view.View, android.view.MotionEvent, boolean):boolean");
        }

        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        public final boolean a(boolean z) {
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface.class */
    public interface InCallActionFragmentInterface {
        PlayerView getPlayerView();

        void onActionSelected(int i);

        void onInCallActionFragmentCreated(boolean z);
    }

    private static Bitmap a(ImageView imageView) {
        imageView.setDrawingCacheEnabled(true);
        imageView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        imageView.layout(0, 0, imageView.getMeasuredWidth(), imageView.getMeasuredHeight());
        imageView.buildDrawingCache(true);
        Bitmap createBitmap = Bitmap.createBitmap(imageView.getDrawingCache());
        imageView.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    private View.OnTouchListener a(Bitmap bitmap, ImageView imageView, TextView textView, String str, Runnable runnable) {
        return new AnonymousClass5(imageView, bitmap, textView, str, runnable);
    }

    public static Fragment a(String str) {
        InCallActionFragment inCallActionFragment = new InCallActionFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Constants.EXTRA_PHONE_NUMBER, str);
        inCallActionFragment.setArguments(bundle);
        return inCallActionFragment;
    }

    private void a() {
        if ((Prefs.ho.get().intValue() % 2 == 0 && Prefs.ho.get().intValue() < 5) || (Prefs.n.get().booleanValue() && Prefs.q.get().booleanValue())) {
            this.p.setVisibility(0);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            InCallActionFragment.this.p.setVisibility(8);
                        }
                    });
                }
            }, 3000L);
        }
        Prefs.ho.b(1);
    }

    static /* synthetic */ void a(InCallActionFragment inCallActionFragment, int i) {
        if (inCallActionFragment.o == null) {
            return;
        }
        if (i == 2 || (Prefs.n.get().booleanValue() && Prefs.s.get().booleanValue())) {
            inCallActionFragment.a();
            inCallActionFragment.o.setVisibility(0);
            inCallActionFragment.o.setText(Activities.getString(2131887398));
            inCallActionFragment.o.setCompoundDrawablesWithIntrinsicBounds(2131231794, 0, 0, 0);
            inCallActionFragment.o.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        } else if (i == 1 || (Prefs.n.get().booleanValue() && Prefs.r.get().booleanValue())) {
            inCallActionFragment.a();
            inCallActionFragment.o.setVisibility(0);
            inCallActionFragment.o.setText(Activities.getString(2131887400));
            inCallActionFragment.o.setCompoundDrawablesWithIntrinsicBounds(2131231960, 0, 0, 0);
            inCallActionFragment.o.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        } else {
            inCallActionFragment.o.setVisibility(8);
            inCallActionFragment.p.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        PhoneStateManager.get().muteRingerIfNeeded();
        this.f12186c.onActionSelected(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        PhoneStateManager.get().muteRingerIfNeeded();
        this.f12186c.onActionSelected(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimId(int i, String str) {
        SimManager.SimId simId = SimManager.SimId.getSimId(Integer.valueOf(i));
        if (simId != null) {
            if (!ViewUtils.a(this.g)) {
                this.g = (LinearLayout) this.h.inflate();
            }
            this.g.setVisibility(0);
            ImageUtils.a((ImageView) this.g.findViewById(2131362663), SimManager.b(simId), (ColorFilter) null);
            TextView textView = (TextView) this.g.findViewById(2131362659);
            int i2 = 2131100228;
            textView.setTextColor(ThemeUtils.getColor(2131100228));
            if (StringUtils.b((CharSequence) str)) {
                this.f.setVisibility(0);
                this.f.setText(PhoneNumberUtils.f(str));
                TextView textView2 = this.f;
                if (!Prefs.du.get().booleanValue()) {
                    i2 = 2131099786;
                }
                textView2.setTextColor(ThemeUtils.getColor(i2));
                textView.setText(str);
            }
        } else if (ViewUtils.a(this.g)) {
            this.g.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558671;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f12186c = (InCallActionFragmentInterface) context;
        } catch (ClassCastException e) {
            throw new ClassCastException(context.toString() + " must implement OnActionDetected");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.i = (DrawingViewWithCallback) onCreateView.findViewById(2131363663);
        this.f12185b = (ImageView) onCreateView.findViewById(2131363041);
        PlayerView playerView = this.f12186c.getPlayerView();
        this.l = playerView;
        playerView.setVisibility(8);
        TextView textView = (TextView) onCreateView.findViewById(2131363500);
        this.e = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100228));
        this.f = (TextView) onCreateView.findViewById(2131363498);
        this.r = onCreateView.findViewById(2131363053);
        this.f12184a = (ImageView) onCreateView.findViewById(2131363043);
        this.h = (ViewStub) onCreateView.findViewById(2131362664);
        ViewGroup viewGroup2 = (ViewGroup) onCreateView.findViewById(2131362016);
        ButtonSet buttonSet = (ButtonSet) Prefs.dy.get();
        this.j = AnsweringMethodViewControllerFactory.a(!buttonSet.isSingleButtonSetResource(), buttonSet, viewGroup2, (DrawingViewWithCallback) onCreateView.findViewById(2131362363), this.f12186c);
        TextView textView2 = (TextView) onCreateView.findViewById(2131363082);
        this.k = textView2;
        textView2.setText(Activities.getString(2131887044));
        TextView textView3 = (TextView) onCreateView.findViewById(2131363502);
        this.o = textView3;
        textView3.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) onCreateView.findViewById(2131364502);
        this.p = linearLayout;
        TextView textView4 = (TextView) linearLayout.findViewById(2131364071);
        this.q = textView4;
        textView4.setText(Activities.getString(2131887045));
        this.p.setVisibility(8);
        ImageView imageView = (ImageView) onCreateView.findViewById(2131363042);
        ImageView imageView2 = (ImageView) onCreateView.findViewById(2131363044);
        TextView textView5 = (TextView) onCreateView.findViewById(2131364468);
        onCreateView.findViewById(2131362870).setOnTouchListener(a(a(this.f12185b), imageView, textView5, getResources().getString(2131886452), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$InCallActionFragment$qFIpVWHQBkUbWF_x_g9cxrGmP_0
            @Override // java.lang.Runnable
            public final void run() {
                InCallActionFragment.this.c();
            }
        }));
        onCreateView.findViewById(2131362871).setOnTouchListener(a(a(this.f12184a), imageView2, textView5, getResources().getString(2131887726), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$InCallActionFragment$R2jDfXAgnNFJbUzsDJSxoBuVDoU
            @Override // java.lang.Runnable
            public final void run() {
                InCallActionFragment.this.b();
            }
        }));
        ((ImageView) onCreateView.findViewById(2131362197)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.j.a();
        this.j = null;
        m mVar = this.m;
        if (mVar != null) {
            mVar.w();
        }
        PlayerView playerView = this.l;
        if (playerView != null) {
            if (playerView.f21975a != null) {
                this.l.f21975a.removeAllViews();
            }
            this.l.setVisibility(8);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        new MultiTaskRunner();
        if (getArguments() != null) {
            String string = getArguments().getString(Constants.EXTRA_PHONE_NUMBER);
            this.f12187d = string;
            if (StringUtils.b((CharSequence) string)) {
                if (CallLogUtils.b(this.f12187d)) {
                    this.f12184a.setVisibility(8);
                    this.f12184a.setEnabled(false);
                    this.f12185b.setVisibility(8);
                    this.f12185b.setEnabled(false);
                }
                this.e.setText(PhoneNumberUtils.f(this.f12187d));
                final Phone a2 = PhoneManager.get().a(this.f12187d);
                try {
                    long a3 = DeviceIdLoader.a(a2, 500);
                    if (Prefs.du.get().booleanValue() || Prefs.dv.get().booleanValue() || Prefs.cK.get().booleanValue()) {
                        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
                        this.n = PersonalStoreItemDataManager.Companion.b(Long.toString(a3), PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                    }
                } catch (DeviceIdLoader.OperationFailedException e) {
                }
                boolean z = StringUtils.b((CharSequence) this.n) && Activities.isNotificationListenerServiceSupportedOnDevice();
                if (z) {
                    GlideUtils.GlideRequestBuilder a4 = new GlideUtils.GlideRequestBuilder(getContext(), this.n, this.r, new GlideUtils.CustomViewListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.1
                        @Override // com.callapp.contacts.util.glide.GlideUtils.CustomViewListener
                        public void onResourceReady(Drawable drawable, d<? super Drawable> dVar) {
                            if (!InCallActionFragment.this.s) {
                                InCallActionFragment.this.r.setBackground(drawable);
                            }
                        }
                    }).a(GlideUtils.f16193a, GlideUtils.f16194b);
                    a4.q = true;
                    a4.d();
                    setVideoRingtoneMode(true);
                    if (this.m == null) {
                        m a5 = CallAppExoPlayerFactory.a();
                        this.m = a5;
                        a5.a(new ac.a() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.3
                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
                                ac.a._CC.$default$a(this, exoPlaybackException);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(MediaItem mediaItem, int i) {
                                ac.a._CC.$default$a(this, mediaItem, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(aa aaVar) {
                                ac.a._CC.$default$a(this, aaVar);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(ac.b bVar) {
                                ac.a._CC.$default$a(this, bVar);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(al alVar, int i) {
                                ac.a._CC.$default$a(this, alVar, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void a(TrackGroupArray trackGroupArray, g gVar) {
                                ac.a._CC.$default$a(this, trackGroupArray, gVar);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public final void a(boolean z2) {
                                InCallActionFragment.this.s = z2;
                                if (z2) {
                                    InCallActionFragment.this.l.setVisibility(0);
                                    InCallActionFragment.this.r.setBackground(null);
                                }
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void b(int i) {
                                ac.a._CC.$default$b(this, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void b(boolean z2) {
                                ac.a._CC.$default$b(this, z2);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void b(boolean z2, int i) {
                                ac.a._CC.$default$b(this, z2, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void c(List list) {
                                ac.a._CC.$default$c(this, list);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void c(boolean z2) {
                                ac.a._CC.$default$c(this, z2);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void c(boolean z2, int i) {
                                ac.a._CC.$default$c(this, z2, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void d(int i) {
                                ac.a._CC.$default$d(this, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void e(int i) {
                                ac.a._CC.$default$e(this, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void f(int i) {
                                ac.a._CC.$default$f(this, i);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void p_() {
                                ac.a._CC.$default$p_(this);
                            }

                            @Override // com.google.android.exoplayer2.ac.a
                            public /* synthetic */ void q_() {
                                ac.a._CC.$default$q_(this);
                            }
                        });
                    }
                    this.l.setResizeMode(4);
                    this.l.setShutterBackgroundColor(0);
                    this.l.setPlayer(this.m);
                    this.l.setErrorMessageProvider(new i<ExoPlaybackException>() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.4
                        @Override // com.google.android.exoplayer2.util.i
                        public final /* synthetic */ Pair a(ExoPlaybackException exoPlaybackException) {
                            ExoPlaybackException exoPlaybackException2 = exoPlaybackException;
                            CLog.a(exoPlaybackException2);
                            return Pair.create(0, exoPlaybackException2.getMessage());
                        }
                    });
                    this.l.requestFocus();
                    this.m.a(VideoCacheManager.get().a(this.n));
                } else {
                    setVideoRingtoneMode(false);
                    this.r.setBackground(null);
                }
                InCallActionFragmentInterface inCallActionFragmentInterface = this.f12186c;
                if (inCallActionFragmentInterface != null) {
                    inCallActionFragmentInterface.onInCallActionFragmentCreated(z);
                }
                new Task() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        final CallData callForPhone = PhoneStateManager.get().getCallForPhone(a2);
                        if (callForPhone != null) {
                            final SimManager.SimId simId = callForPhone.getSimId();
                            if (simId != null) {
                                final String a6 = SimManager.get().a(simId);
                                if (SimManager.get().getDualSimOperators() != null) {
                                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            InCallActionFragment.this.setSimId(simId.simId, a6);
                                        }
                                    });
                                }
                            }
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.2.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    InCallActionFragment.a(InCallActionFragment.this, callForPhone.getVerificationStatus());
                                }
                            });
                        }
                    }
                }.execute();
            }
        }
    }

    public void setVideoRingtoneMode(boolean z) {
        this.k.setTextColor(z ? ThemeUtils.getColor(2131100228) : b.c(CallAppApplication.get(), 2131099786));
        this.f12185b.setColorFilter(new PorterDuffColorFilter(z ? ThemeUtils.getColor(2131100228) : b.c(CallAppApplication.get(), 2131099784), PorterDuff.Mode.SRC_IN));
        this.f12184a.setColorFilter(new PorterDuffColorFilter(z ? ThemeUtils.getColor(2131100228) : b.c(CallAppApplication.get(), 2131099784), PorterDuff.Mode.SRC_IN));
    }
}
