package gogolook.callgogolook2.view;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.StringRes;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.util.ProgressWheel;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog.class */
public class SimpleInAppDialog extends Dialog {

    /* renamed from: a */
    public View.OnClickListener f13096a;
    @BindView(2131362136)
    public TextView mContent;
    @BindView(R$id.imgv_image)
    public AdjustableImageView mImgvImage;
    @BindView(R$id.iv_close)
    public ImageView mIvClose;
    @BindView(R$id.copyright)
    public ImageView mIvCopyright;
    @BindView(R$id.line_1)
    public View mLine1;
    @BindView(R$id.line_2)
    public View mLine2;
    @BindView(R$id.line_3)
    public View mLine3;
    @BindView(R$id.pb_loading)
    public ProgressWheel mPbLoading;
    @BindView(R$id.rlyt_image)
    public RelativeLayout mRlytImage;
    @BindView(R$id.srlv_all)
    public ScrollView mSrlvAll;
    @BindView(R$id.text_area)
    public LinearLayout mTextArea;
    @BindView(2131363296)
    public TextView mTitle;
    @BindView(R$id.txv_negative)
    public TextView mTxvNegative;
    @BindView(R$id.txv_neutral)
    public TextView mTxvNeutral;
    @BindView(R$id.txv_positive)
    public TextView mTxvPositive;
    @BindView(R$id.v_bg)
    public View mVBg;

    /* renamed from: gogolook.callgogolook2.view.SimpleInAppDialog$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog$a.class */
    public class View$OnClickListenerC5281a implements View.OnClickListener {
        public View$OnClickListenerC5281a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimpleInAppDialog simpleInAppDialog = SimpleInAppDialog.this;
            View.OnClickListener onClickListener = simpleInAppDialog.f13096a;
            if (onClickListener != null) {
                onClickListener.onClick(simpleInAppDialog.mIvClose);
            }
            C14217x3.m2194a(SimpleInAppDialog.this);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.SimpleInAppDialog$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog$b.class */
    public class View$OnClickListenerC5282b implements View.OnClickListener {
        public View$OnClickListenerC5282b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14217x3.m2194a(SimpleInAppDialog.this);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.SimpleInAppDialog$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog$c.class */
    public class View$OnClickListenerC5283c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f13099a;

        /* renamed from: b */
        public final /* synthetic */ View.OnClickListener f13100b;

        public View$OnClickListenerC5283c(boolean z, View.OnClickListener onClickListener) {
            this.f13099a = z;
            this.f13100b = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f13099a) {
                C14217x3.m2194a(SimpleInAppDialog.this);
            }
            View.OnClickListener onClickListener = this.f13100b;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.SimpleInAppDialog$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog$d.class */
    public class View$OnClickListenerC5284d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f13102a;

        /* renamed from: b */
        public final /* synthetic */ View.OnClickListener f13103b;

        public View$OnClickListenerC5284d(boolean z, View.OnClickListener onClickListener) {
            this.f13102a = z;
            this.f13103b = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f13102a) {
                C14217x3.m2194a(SimpleInAppDialog.this);
            }
            View.OnClickListener onClickListener = this.f13103b;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.SimpleInAppDialog$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog$e.class */
    public enum EnumC5285e {
        Default,
        NoStretchImage
    }

    public SimpleInAppDialog(Context context) {
        super(context, 16973840);
        m25874a(EnumC5285e.Default);
    }

    /* renamed from: a */
    public AdjustableImageView m25879a() {
        return this.mImgvImage;
    }

    /* renamed from: a */
    public void m25878a(int i) {
        this.mIvClose.setImageResource(i);
    }

    /* renamed from: a */
    public void m25877a(@StringRes int i, @ColorInt int i2, View.OnClickListener onClickListener) {
        m25872a(C14206w4.m2225a(i), i2, onClickListener);
    }

    /* renamed from: a */
    public void m25876a(@StringRes int i, View.OnClickListener onClickListener) {
        m25877a(i, getContext().getResources().getColor(2131099785), onClickListener);
    }

    /* renamed from: a */
    public void m25875a(View.OnClickListener onClickListener) {
        this.f13096a = onClickListener;
    }

    /* renamed from: a */
    public final void m25874a(EnumC5285e eVar) {
        getWindow().requestFeature(1);
        setContentView(LayoutInflater.from(getContext()).inflate(R$layout.dialog_simple_in_app_dialog, (ViewGroup) null));
        ButterKnife.bind(this);
        if (eVar == EnumC5285e.NoStretchImage) {
            this.mRlytImage.setGravity(17);
            this.mImgvImage.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            int a = C14217x3.m2201a(20.0f);
            this.mImgvImage.setPadding(a, a, a, 0);
            this.mImgvImage.setAdjustViewBounds(false);
        }
        this.mIvClose.setOnClickListener(new View$OnClickListenerC5281a());
        this.mVBg.setOnClickListener(new View$OnClickListenerC5282b());
    }

    /* renamed from: a */
    public void m25873a(String str) {
        this.mContent.setText(str);
        this.mContent.setVisibility(0);
        this.mTextArea.setVisibility(0);
    }

    /* renamed from: a */
    public void m25872a(String str, @ColorInt int i, View.OnClickListener onClickListener) {
        m25871a(str, i, onClickListener, true);
    }

    /* renamed from: a */
    public void m25871a(String str, @ColorInt int i, View.OnClickListener onClickListener, boolean z) {
        this.mTxvNegative.setText(str);
        this.mTxvNegative.setTextColor(i);
        this.mTxvNegative.setOnClickListener(new View$OnClickListenerC5284d(z, onClickListener));
    }

    /* renamed from: a */
    public void m25870a(String str, View.OnClickListener onClickListener) {
        m25865b(str, getContext().getResources().getColor(2131099787), onClickListener);
    }

    /* renamed from: a */
    public void m25869a(boolean z) {
        int i = 8;
        this.mTxvNegative.setVisibility(z ? 8 : 0);
        View view = this.mLine3;
        if (!z) {
            i = 0;
        }
        view.setVisibility(i);
    }

    /* renamed from: b */
    public void m25868b(int i) {
        this.mImgvImage.setImageResource(i);
    }

    /* renamed from: b */
    public void m25867b(@StringRes int i, @ColorInt int i2, View.OnClickListener onClickListener) {
        m25865b(C14206w4.m2225a(i), i2, onClickListener);
    }

    /* renamed from: b */
    public void mo2915b(@StringRes int i, View.OnClickListener onClickListener) {
        m25867b(i, getContext().getResources().getColor(2131099787), onClickListener);
    }

    /* renamed from: b */
    public void m25866b(String str) {
        this.mTitle.setText(str);
        this.mTitle.setVisibility(0);
        this.mTextArea.setVisibility(0);
    }

    /* renamed from: b */
    public void m25865b(String str, @ColorInt int i, View.OnClickListener onClickListener) {
        m25864b(str, i, onClickListener, true);
    }

    /* renamed from: b */
    public void m25864b(String str, @ColorInt int i, View.OnClickListener onClickListener, boolean z) {
        this.mTxvPositive.setText(str);
        this.mTxvPositive.setTextColor(i);
        this.mTxvPositive.setOnClickListener(new View$OnClickListenerC5283c(z, onClickListener));
    }

    /* renamed from: b */
    public void m25863b(boolean z) {
        int i = 8;
        this.mTxvNeutral.setVisibility(z ? 8 : 0);
        View view = this.mLine2;
        if (!z) {
            i = 0;
        }
        view.setVisibility(i);
    }

    /* renamed from: c */
    public void m25862c(int i) {
        this.mRlytImage.setBackgroundColor(i);
    }

    /* renamed from: c */
    public void m25861c(boolean z) {
        int i = 8;
        this.mTxvPositive.setVisibility(z ? 8 : 0);
        View view = this.mLine1;
        if (!z) {
            i = 0;
        }
        view.setVisibility(i);
    }

    /* renamed from: d */
    public void m25860d(int i) {
        RelativeLayout relativeLayout = this.mRlytImage;
        relativeLayout.setPadding(relativeLayout.getPaddingLeft(), C14217x3.m2201a(i), this.mRlytImage.getPaddingRight(), this.mRlytImage.getPaddingBottom());
    }

    /* renamed from: d */
    public void m25859d(boolean z) {
        this.mIvClose.setVisibility(z ? 0 : 8);
    }

    /* renamed from: e */
    public void m25858e(int i) {
        this.mContent.setText(i);
        this.mContent.setVisibility(0);
        this.mTextArea.setVisibility(0);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        this.mTitle.setText(i);
        this.mTitle.setVisibility(0);
        this.mTextArea.setVisibility(0);
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawableResource(17170445);
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
        } catch (Exception e) {
            e.printStackTrace();
        }
        m25861c(TextUtils.isEmpty(this.mTxvPositive.getText()));
        m25863b(TextUtils.isEmpty(this.mTxvNeutral.getText()));
        m25869a(TextUtils.isEmpty(this.mTxvNegative.getText()));
        super.show();
    }
}
