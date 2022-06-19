package pl.droidsonroids.gif;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;
import pl.droidsonroids.gif.C9698e;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifImageView.class */
public class GifImageView extends ImageView {

    /* renamed from: d */
    private boolean f40924d;

    public GifImageView(Context context) {
        super(context);
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m117a(C9698e.m46c(this, attributeSet, 0, 0));
    }

    public GifImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m117a(C9698e.m46c(this, attributeSet, i, 0));
    }

    /* renamed from: a */
    private void m117a(C9698e.C9699a c9699a) {
        this.f40924d = c9699a.f40970a;
        int i = c9699a.f40968c;
        if (i > 0) {
            super.setImageResource(i);
        }
        int i2 = c9699a.f40969d;
        if (i2 > 0) {
            super.setBackgroundResource(i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        gifViewSavedState.m71a(getDrawable(), 0);
        gifViewSavedState.m71a(getBackground(), 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Drawable drawable = null;
        Drawable drawable2 = this.f40924d ? getDrawable() : null;
        if (this.f40924d) {
            drawable = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawable2, drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (!C9698e.m44e(this, false, i)) {
            super.setBackgroundResource(i);
        }
    }

    public void setFreezesAnimation(boolean z) {
        this.f40924d = z;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (!C9698e.m44e(this, true, i)) {
            super.setImageResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (!C9698e.m45d(this, uri)) {
            super.setImageURI(uri);
        }
    }
}
