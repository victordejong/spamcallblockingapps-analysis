package gogolook.callgogolook2.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$style;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToastDialog.class */
public class ToastDialog extends Dialog {

    /* renamed from: a */
    public View f13118a = getLayoutInflater().inflate(R$layout.toast_dialog, (ViewGroup) null);

    /* renamed from: b */
    public Dialog f13119b = this;
    @BindView(R$id.iv_icon)
    public ImageView ivIcon;
    @BindView(R$id.tv_message)
    public TextView mTvMessage;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;
    @BindView(R$id.v_outside)
    public LinearLayout vOutside;

    /* renamed from: gogolook.callgogolook2.view.ToastDialog$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToastDialog$a.class */
    public class RunnableC5289a implements Runnable {
        public RunnableC5289a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C14217x3.m2194a(ToastDialog.this.f13119b);
        }
    }

    public ToastDialog(Context context) {
        super(context, R$style.ToastDialogStyle);
        ButterKnife.bind(this, this.f13118a);
    }

    /* renamed from: a */
    public void m25842a(int i) {
        this.ivIcon.setImageResource(i);
    }

    /* renamed from: a */
    public void m25841a(String str) {
        this.mTvTitle.setText(str);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        m25841a(C14206w4.m2225a(i));
    }

    @Override // android.app.Dialog
    public void show() {
        requestWindowFeature(1);
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            setContentView(this.f13118a);
            if (TextUtils.isEmpty(this.mTvMessage.getText())) {
                this.mTvMessage.setVisibility(8);
            }
            if (TextUtils.isEmpty(this.mTvTitle.getText())) {
                this.mTvTitle.setVisibility(8);
            }
            if (getWindow().getDecorView() != null) {
                getWindow().getDecorView().setPadding(0, 0, 0, 0);
            }
            try {
                super.show();
                new Handler().postDelayed(new RunnableC5289a(), 1800L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
