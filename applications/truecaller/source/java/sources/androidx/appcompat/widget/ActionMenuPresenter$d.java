package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionMenuView;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25488p;
import p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d.class */
public class ActionMenuPresenter$d extends AppCompatImageView implements ActionMenuView.AbstractC0046a {

    /* renamed from: c */
    public final /* synthetic */ ActionMenuPresenter f229c;

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuPresenter$d$a.class */
    public class C0045a extends AbstractView$OnTouchListenerC25561z {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0045a(View view, ActionMenuPresenter actionMenuPresenter) {
            super(view);
            ActionMenuPresenter$d.this = r4;
        }

        @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
        /* renamed from: b */
        public AbstractC25488p mo3240b() {
            ActionMenuPresenter$e actionMenuPresenter$e = ActionMenuPresenter$d.this.f229c.u;
            if (actionMenuPresenter$e == null) {
                return null;
            }
            return actionMenuPresenter$e.m3431a();
        }

        @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
        /* renamed from: c */
        public boolean mo3239c() {
            ActionMenuPresenter$d.this.f229c.p();
            return true;
        }

        @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
        /* renamed from: d */
        public boolean mo3238d() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter$d.this.f229c;
            if (actionMenuPresenter.w != null) {
                return false;
            }
            actionMenuPresenter.m();
            return true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$d(ActionMenuPresenter actionMenuPresenter, Context context) {
        super(context, null, C0032R.attr.actionOverflowButtonStyle);
        this.f229c = actionMenuPresenter;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        MediaSessionCompat.m43179z1(this, getContentDescription());
        setOnTouchListener(new C0045a(this, actionMenuPresenter));
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0046a
    /* renamed from: b */
    public boolean mo43151b() {
        return false;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0046a
    /* renamed from: c */
    public boolean mo43150c() {
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f229c.p();
        return true;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
