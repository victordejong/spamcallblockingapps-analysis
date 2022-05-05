package gogolook.callgogolook2.phone.call.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/QuestionDialogView.class */
public class QuestionDialogView extends RelativeLayout {
    @BindViews({R$id.question_btn1, R$id.question_btn2})
    public TextView[] mAnswerButtons;
    @BindView(R$id.iv_metaphor)
    public RecycleSafeImageView mMetaphor;
    @BindView(R$id.iv_card_spam_icon)
    public ImageView mMetaphorBadge;
    @BindView(2131363467)
    public TextView mTvPrimary;
    @BindView(2131363555)
    public TextView mTvSecondary;
    @BindView(R$id.call_btn_close)
    public View mViewClose;

    public QuestionDialogView(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(R$layout.callenddialog_standard_body_question, (ViewGroup) this, true);
        ButterKnife.bind(this);
    }

    /* renamed from: a */
    public ImageView m26521a() {
        return this.mMetaphorBadge;
    }

    /* renamed from: a */
    public void m26520a(int i) {
        TextView textView = this.mTvPrimary;
        if (textView != null) {
            textView.setVisibility(i);
        }
    }

    /* renamed from: a */
    public void m26519a(int i, int i2) {
        TextView[] textViewArr = this.mAnswerButtons;
        if (textViewArr != null && i < textViewArr.length) {
            textViewArr[i].setTextColor(i2);
        }
    }

    /* renamed from: a */
    public void m26518a(int i, View.OnClickListener onClickListener) {
        TextView[] textViewArr = this.mAnswerButtons;
        if (textViewArr != null && i < textViewArr.length) {
            textViewArr[i].setOnClickListener(onClickListener);
        }
    }

    /* renamed from: a */
    public void m26517a(int i, String str) {
        TextView[] textViewArr = this.mAnswerButtons;
        if (textViewArr != null && i < textViewArr.length) {
            textViewArr[i].setText(str);
        }
    }

    /* renamed from: a */
    public void m26516a(View.OnClickListener onClickListener) {
        View view = this.mViewClose;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: a */
    public void m26515a(String str) {
        TextView textView = this.mTvPrimary;
        if (textView != null) {
            textView.setText(str);
        }
    }

    /* renamed from: b */
    public RecycleSafeImageView m26514b() {
        return this.mMetaphor;
    }

    /* renamed from: b */
    public void m26513b(String str) {
        TextView textView = this.mTvSecondary;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
