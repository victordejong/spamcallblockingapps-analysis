package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.widget.l;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/j.class */
final class j extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f5246a = a.f5252c;

    /* renamed from: b  reason: collision with root package name */
    private View f5247b;

    /* renamed from: c  reason: collision with root package name */
    private View f5248c;

    /* renamed from: d  reason: collision with root package name */
    private View f5249d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/j$a.class */
    static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f5250a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f5251b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f5252c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f5253d = {1, 2, 3};

        private a(String str, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context) {
        super(context);
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f5247b = layoutInflater.inflate(l.f.media2_widget_music_with_title_landscape, (ViewGroup) null);
        this.f5248c = layoutInflater.inflate(l.f.media2_widget_music_with_title_portrait, (ViewGroup) null);
        this.f5249d = layoutInflater.inflate(l.f.media2_widget_music_without_title, (ViewGroup) null);
        addView(this.f5247b);
        addView(this.f5248c);
        addView(this.f5249d);
    }

    private static boolean a(View view) {
        return ((view.getMeasuredHeightAndState() & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) | (view.getMeasuredWidthAndState() & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE)) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Drawable drawable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ImageView imageView = (ImageView) getChildAt(i).findViewById(l.e.album);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(l.e.title);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            TextView textView = (TextView) getChildAt(i).findViewById(l.e.artist);
            if (textView != null) {
                textView.setText(str);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.f5246a == a.f5250a ? this.f5247b : this.f5246a == a.f5251b ? this.f5248c : this.f5249d;
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
                this.f5246a = a.f5250a;
                this.f5247b.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
                if (a(this.f5247b) || this.f5247b.getMeasuredWidth() > size) {
                    this.f5246a = a.f5252c;
                }
            } else {
                this.f5246a = a.f5251b;
                this.f5248c.measure(View.MeasureSpec.makeMeasureSpec(size, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (a(this.f5248c) || this.f5248c.getMeasuredHeight() > size2) {
                    this.f5246a = a.f5252c;
                }
            }
            if (this.f5246a == a.f5252c) {
                this.f5249d.measure(View.MeasureSpec.makeMeasureSpec(size / 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 / 2, 1073741824));
            }
            setMeasuredDimension(size, size2);
            return;
        }
        throw new AssertionError("MusicView should be measured in MeasureSpec.EXACTLY");
    }
}
