package gogolook.callgogolook2.rating;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.facebook.ads.AdError;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14128q1;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/rating/RatingDialog.class */
public class RatingDialog extends Dialog implements DialogInterface.OnShowListener, DialogInterface.OnDismissListener {

    /* renamed from: a */
    public Subscription f12501a;

    /* renamed from: b */
    public AlphaAnimation f12502b;

    /* renamed from: c */
    public boolean f12503c;

    /* renamed from: d */
    public boolean f12504d;

    /* renamed from: e */
    public int f12505e;

    /* renamed from: f */
    public int f12506f;

    /* renamed from: g */
    public int f12507g = 3;
    @BindView(R$id.btn_action_rating)
    public Button mBtnActionRating;
    @BindView(R$id.btn_action_send_mail)
    public Button mBtnActionSendMail;
    @BindView(R$id.iv_rating_dialog)
    public ImageView mIvBackground;
    @BindViews({R$id.iv_star1, R$id.iv_star2, R$id.iv_star3, R$id.iv_star4, R$id.iv_star5})
    public ImageButton[] mIvStarArray;
    @BindView(R$id.ll_stars)
    public LinearLayout mLlStars;
    @BindView(R$id.tv_rating_dialog_comment)
    public TextView mTvComment;
    @BindView(R$id.tv_rating_dialog_title)
    public TextView mTvDialogTitle;

    /* renamed from: gogolook.callgogolook2.rating.RatingDialog$a  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/rating/RatingDialog$a.class */
    public class animationAnimation$AnimationListenerC5054a implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC5054a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            RatingDialog.this.m26403e();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: gogolook.callgogolook2.rating.RatingDialog$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/rating/RatingDialog$b.class */
    public class C5055b implements Action1<Object> {
        public C5055b() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14128q1) {
                RatingDialog.this.dismiss();
            }
        }
    }

    public RatingDialog(@NonNull Context context) {
        super(context, 2131952154);
        m26409a();
        m26405c();
    }

    /* renamed from: a */
    public final void m26409a() {
        this.f12503c = false;
        this.f12504d = false;
        requestWindowFeature(1);
        setContentView(LayoutInflater.from(getContext()).inflate(R$layout.dialog_rating, (ViewGroup) null));
        ButterKnife.bind(this);
        Window window = getWindow();
        if (window != null) {
            window.setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            window.setLayout(C14217x3.m2201a(300.0f), -2);
            window.getDecorView().setBackgroundColor(0);
            window.getDecorView().setPadding(0, 0, 0, 0);
        }
        setOnShowListener(this);
        setOnDismissListener(this);
        this.f12502b = new AlphaAnimation(1.0f, 0.0f);
        this.f12502b.setDuration(200L);
        this.f12502b.setRepeatCount(1);
        this.f12502b.setRepeatMode(2);
        this.f12502b.setAnimationListener(new animationAnimation$AnimationListenerC5054a());
    }

    /* renamed from: a */
    public final void m26408a(int i) {
        this.f12505e = i;
        int length = this.mIvStarArray.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 <= i) {
                this.mIvStarArray[i2].setImageResource(R$drawable.star_on);
            } else {
                this.mIvStarArray[i2].setImageResource(R$drawable.star_normal);
            }
        }
        if (!this.f12504d) {
            this.f12504d = true;
            this.mBtnActionRating.startAnimation(this.f12502b);
            this.mBtnActionSendMail.startAnimation(this.f12502b);
        }
    }

    @OnClick({R$id.iv_star1, R$id.iv_star2, R$id.iv_star3, R$id.iv_star4, R$id.iv_star5})
    public void actionStarClick(ImageView imageView) {
        int i = 0;
        switch (imageView.getId()) {
            case R$id.iv_star1 /* 2131362541 */:
                break;
            case R$id.iv_star2 /* 2131362542 */:
                i = 1;
                break;
            case R$id.iv_star3 /* 2131362543 */:
                i = 2;
                break;
            case R$id.iv_star4 /* 2131362544 */:
                i = 3;
                break;
            case R$id.iv_star5 /* 2131362545 */:
                i = 4;
                break;
            default:
                i = 0;
                break;
        }
        m26408a(i);
    }

    /* renamed from: b */
    public final void m26406b() {
        this.f12501a = C14037j3.m2731a().mo2703a((Action1) new C5055b());
    }

    /* renamed from: c */
    public final void m26405c() {
        int i = 0;
        boolean z = C13915b3.m3066a("prefs_ninfo_identified_call_number", 0) == 5;
        boolean z2 = true;
        if (CallUtils.m26527q()) {
            z2 = !z;
        }
        this.f12503c = z2;
        this.mLlStars.setVisibility(this.f12503c ? 8 : 0);
        TextView textView = this.mTvComment;
        if (this.f12503c) {
            i = 8;
        }
        textView.setVisibility(i);
        this.mTvDialogTitle.setText(this.f12503c ? R$string.rate_star_callend_dialog_general : R$string.rate_star_callend_dialog_incallscreen);
        this.mBtnActionRating.setText(this.f12503c ? R$string.rate_callend_dialog_encourage : R$string.rate_callend_dialog_leave_comments);
        this.mBtnActionRating.setTextColor(ContextCompat.getColor(getContext(), this.f12503c ? 2131099880 : 2131099785));
        this.mBtnActionSendMail.setText(this.f12503c ? R$string.rate_drawer_dialog_positive_mail : R$string.rate_callend_dialog_btn_no);
        this.mIvBackground.setImageResource(this.f12503c ? R$drawable.img_dialog_rating : R$drawable.img_dialog_rating_incall);
        this.mBtnActionRating.setEnabled(this.f12503c);
    }

    /* renamed from: d */
    public final void m26404d() {
        Subscription subscription = this.f12501a;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12501a.unsubscribe();
        }
    }

    /* renamed from: e */
    public final void m26403e() {
        this.mBtnActionRating.setEnabled(true);
        this.mBtnActionRating.setText(R$string.rate_callend_dialog_encourage);
        this.mBtnActionRating.setTextColor(ContextCompat.getColor(getContext(), 2131099880));
        this.mBtnActionSendMail.setText(R$string.rate_drawer_dialog_positive_mail);
    }

    @OnClick({R$id.iv_close})
    public void onActionCancel(View view) {
        this.f12507g = 1;
        dismiss();
    }

    @OnClick({R$id.btn_action_rating})
    public void onActionRating(View view) {
        this.f12507g = 4;
        C13915b3.m3055b("pref_have_rated", true);
        C14217x3.m2127k(getContext(), getContext().getPackageName());
        dismiss();
    }

    @OnClick({R$id.btn_action_send_mail})
    public void onActionSendMail(View view) {
        if (this.f12503c || this.f12504d) {
            this.f12507g = 6;
            C13915b3.m3055b("pref_have_rated", true);
            String str = this.f12503c ? "customer_service" : "advanced_notify_dialog";
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("whoscall://goto?action=" + str + PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR + "step=3"));
            intent.setFlags(335544320);
            getContext().startActivity(intent);
        } else {
            this.f12507g = 2;
        }
        dismiss();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        m26404d();
        CallStats.Call c = CallStats.m28534h().m28539c();
        C14289m.m1906a(1, C14108o4.m2492b(), Integer.valueOf((int) c.m28489n()), Integer.valueOf((int) c.m28488o()), this.f12503c ? 1 : 2, this.f12507g, this.f12505e);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        m26406b();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.f12506f = C13915b3.m3066a("prefs_ninfo_rating_dia_show_count", 0) + 1;
        C13915b3.m3048d("prefs_ninfo_rating_dia_show_count", this.f12506f);
    }
}
