package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.widget.C0285R;
/* renamed from: n3.y.e.w */
/* loaded from: classes-dex2jar.jar:n3/y/e/w.class */
public class C27542w extends ViewGroup {

    /* renamed from: a */
    public EnumC27543a f77572a = EnumC27543a.WITHOUT_TITLE;

    /* renamed from: b */
    public View f77573b;

    /* renamed from: c */
    public View f77574c;

    /* renamed from: d */
    public View f77575d;

    /* renamed from: n3.y.e.w$a */
    /* loaded from: classes-dex2jar.jar:n3/y/e/w$a.class */
    public enum EnumC27543a {
        WITH_TITLE_LANDSCAPE,
        WITH_TITLE_PORTRAIT,
        WITHOUT_TITLE
    }

    public C27542w(Context context) {
        super(context);
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f77573b = layoutInflater.inflate(C0285R.layout.media2_widget_music_with_title_landscape, (ViewGroup) null);
        this.f77574c = layoutInflater.inflate(C0285R.layout.media2_widget_music_with_title_portrait, (ViewGroup) null);
        this.f77575d = layoutInflater.inflate(C0285R.layout.media2_widget_music_without_title, (ViewGroup) null);
        addView(this.f77573b);
        addView(this.f77574c);
        addView(this.f77575d);
    }

    /* renamed from: a */
    public static boolean m149a(View view) {
        return ((view.getMeasuredHeightAndState() & 16777216) | (view.getMeasuredWidthAndState() & 16777216)) != 0;
    }

    /* renamed from: b */
    public void m148b(Drawable drawable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ImageView imageView = (ImageView) getChildAt(i).findViewById(C0285R.C0287id.album);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    /* renamed from: c */
    public void m147c(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C0285R.C0287id.artist);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    /* renamed from: d */
    public void m146d(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C0285R.C0287id.title);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        EnumC27543a enumC27543a = this.f77572a;
        View view = enumC27543a == EnumC27543a.WITH_TITLE_LANDSCAPE ? this.f77573b : enumC27543a == EnumC27543a.WITH_TITLE_PORTRAIT ? this.f77574c : this.f77575d;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt == view) {
                childAt.setVisibility(0);
            } else {
                childAt.setVisibility(4);
            }
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = ((i3 - i) - measuredWidth) / 2;
        int i7 = ((i4 - i2) - measuredHeight) / 2;
        view.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        EnumC27543a enumC27543a = EnumC27543a.WITHOUT_TITLE;
        if (View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (size > size2) {
                this.f77572a = EnumC27543a.WITH_TITLE_LANDSCAPE;
                this.f77573b.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                if (m149a(this.f77573b) || this.f77573b.getMeasuredWidth() > size) {
                    this.f77572a = enumC27543a;
                }
            } else {
                this.f77572a = EnumC27543a.WITH_TITLE_PORTRAIT;
                this.f77574c.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (m149a(this.f77574c) || this.f77574c.getMeasuredHeight() > size2) {
                    this.f77572a = enumC27543a;
                }
            }
            if (this.f77572a == enumC27543a) {
                this.f77575d.measure(View.MeasureSpec.makeMeasureSpec(size / 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 / 2, 1073741824));
            }
            setMeasuredDimension(size, size2);
            return;
        }
        throw new AssertionError("MusicView should be measured in MeasureSpec.EXACTLY");
    }
}
