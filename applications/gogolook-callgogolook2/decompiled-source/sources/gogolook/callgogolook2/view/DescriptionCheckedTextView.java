package gogolook.callgogolook2.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/DescriptionCheckedTextView.class */
public class DescriptionCheckedTextView extends LinearLayout {
    @BindView(2131362065)
    public CheckBox mCheckbox;
    @BindView(R$id.tv_description)
    public TextView mTvDescription;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;

    public DescriptionCheckedTextView(Context context) {
        super(context);
        m25925a(context, null);
    }

    public DescriptionCheckedTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m25925a(context, attributeSet);
    }

    public DescriptionCheckedTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25925a(context, attributeSet);
    }

    public DescriptionCheckedTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m25925a(context, attributeSet);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m25925a(Context context, @Nullable AttributeSet attributeSet) {
        LinearLayout.inflate(context, R$layout.textview_description_checked, this);
        ButterKnife.bind(this, this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.DescriptionCheckedTextView, 0, 0);
            try {
                String string = obtainStyledAttributes.getString(1);
                String string2 = obtainStyledAttributes.getString(0);
                obtainStyledAttributes.recycle();
                if (!C14217x3.m2160b(string)) {
                    this.mTvTitle.setText(string);
                }
                if (!C14217x3.m2160b(string2)) {
                    this.mTvDescription.setText(string2);
                }
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m25924a(boolean z) {
        this.mCheckbox.setChecked(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        setClickable(z);
        this.mTvTitle.setEnabled(z);
        this.mTvDescription.setEnabled(z);
        this.mCheckbox.setEnabled(z);
    }
}
