package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.widget.C2576l;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import okhttp3.internal.http2.Http2Connection;
/* renamed from: androidx.media2.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/j.class */
final class C2570j extends ViewGroup {

    /* renamed from: a */
    private int f9760a = EnumC2571a.f9766c;

    /* renamed from: b */
    private View f9761b;

    /* renamed from: c */
    private View f9762c;

    /* renamed from: d */
    private View f9763d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/j$a.class */
    public static final class EnumC2571a extends Enum<EnumC2571a> {

        /* renamed from: a */
        public static final int f9764a = 1;

        /* renamed from: b */
        public static final int f9765b = 2;

        /* renamed from: c */
        public static final int f9766c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f9767d = {1, 2, 3};

        private EnumC2571a(String str, int i) {
            super(str, i);
        }
    }

    public C2570j(Context context) {
        super(context);
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f9761b = layoutInflater.inflate(C2576l.C2582f.media2_widget_music_with_title_landscape, (ViewGroup) null);
        this.f9762c = layoutInflater.inflate(C2576l.C2582f.media2_widget_music_with_title_portrait, (ViewGroup) null);
        this.f9763d = layoutInflater.inflate(C2576l.C2582f.media2_widget_music_without_title, (ViewGroup) null);
        addView(this.f9761b);
        addView(this.f9762c);
        addView(this.f9763d);
    }

    /* renamed from: a */
    private static boolean m40659a(View view) {
        return ((view.getMeasuredHeightAndState() & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) | (view.getMeasuredWidthAndState() & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE)) != 0;
    }

    /* renamed from: a */
    public final void m40660a(Drawable drawable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ImageView imageView = (ImageView) getChildAt(i).findViewById(C2576l.C2581e.album);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    /* renamed from: a */
    public final void m40658a(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C2576l.C2581e.title);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    /* renamed from: b */
    public final void m40657b(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(C2576l.C2581e.artist);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.f9760a == EnumC2571a.f9764a ? this.f9761b : this.f9760a == EnumC2571a.f9765b ? this.f9762c : this.f9763d;
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
    protected final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (size > size2) {
                this.f9760a = EnumC2571a.f9764a;
                this.f9761b.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
                if (m40659a(this.f9761b) || this.f9761b.getMeasuredWidth() > size) {
                    this.f9760a = EnumC2571a.f9766c;
                }
            } else {
                this.f9760a = EnumC2571a.f9765b;
                this.f9762c.measure(View.MeasureSpec.makeMeasureSpec(size, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (m40659a(this.f9762c) || this.f9762c.getMeasuredHeight() > size2) {
                    this.f9760a = EnumC2571a.f9766c;
                }
            }
            if (this.f9760a == EnumC2571a.f9766c) {
                this.f9763d.measure(View.MeasureSpec.makeMeasureSpec(size / 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 / 2, 1073741824));
            }
            setMeasuredDimension(size, size2);
            return;
        }
        throw new AssertionError("MusicView should be measured in MeasureSpec.EXACTLY");
    }
}
