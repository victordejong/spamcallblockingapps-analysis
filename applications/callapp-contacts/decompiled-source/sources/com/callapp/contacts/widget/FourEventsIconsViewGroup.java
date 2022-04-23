package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/FourEventsIconsViewGroup.class */
public class FourEventsIconsViewGroup extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private LazyInflatedViews f16494a = new LazyInflatedViews();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews.class */
    public class LazyInflatedViews {

        /* renamed from: c  reason: collision with root package name */
        private int[] f16497c = {2131361937, 2131361938, 2131361939, 2131361940};

        /* renamed from: b  reason: collision with root package name */
        private SparseArray<LazyView> f16496b = new SparseArray<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView.class */
        public class LazyView {

            /* renamed from: a  reason: collision with root package name */
            View f16498a;

            /* renamed from: b  reason: collision with root package name */
            Object f16499b;

            private LazyView() {
            }
        }

        public LazyInflatedViews() {
            this.f16496b.put(this.f16497c[0], new LazyView());
            this.f16496b.put(this.f16497c[1], new LazyView());
            this.f16496b.put(this.f16497c[2], new LazyView());
            this.f16496b.put(this.f16497c[3], new LazyView());
        }

        public View getLazyView(int i) {
            LazyView lazyView = this.f16496b.get(i);
            if (lazyView == null) {
                return null;
            }
            if (lazyView.f16498a == null) {
                lazyView.f16498a = ((ViewStub) FourEventsIconsViewGroup.this.findViewById(i)).inflate();
                if (lazyView.f16499b != null) {
                    lazyView.f16498a.setTag(lazyView.f16499b);
                }
            }
            return lazyView.f16498a;
        }

        public boolean isViewInflated(int i) {
            LazyView lazyView = this.f16496b.get(i);
            return (lazyView == null || lazyView.f16498a == null) ? false : true;
        }

        public void setLazyTag(int i, Object obj) {
            LazyView lazyView = this.f16496b.get(i);
            if (lazyView != null) {
                lazyView.f16499b = obj;
                if (lazyView.f16498a != null) {
                    lazyView.f16498a.setTag(obj);
                }
            }
        }
    }

    public FourEventsIconsViewGroup(Context context) {
        super(context);
        a();
    }

    public FourEventsIconsViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public FourEventsIconsViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        inflate(getContext(), 2131558762, this);
    }

    public void setEventIcon(int i, int i2) {
        setEventIcon(i, i2, 0);
    }

    public void setEventIcon(int i, int i2, int i3) {
        if (i2 == 0) {
            LazyInflatedViews lazyInflatedViews = this.f16494a;
            if (!lazyInflatedViews.isViewInflated(lazyInflatedViews.f16497c[i])) {
                return;
            }
        }
        LazyInflatedViews lazyInflatedViews2 = this.f16494a;
        ImageView imageView = (ImageView) lazyInflatedViews2.getLazyView(lazyInflatedViews2.f16497c[i]);
        ImageUtils.a(imageView, i2, (ColorFilter) null);
        if (i3 != 0) {
            imageView.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
        }
        imageView.setVisibility(i2 != 0 ? 0 : 8);
    }

    public void setIconsToEvents(int[] iArr) {
        if (iArr == null || iArr.length > this.f16494a.f16497c.length) {
            CLog.a(FourEventsIconsViewGroup.class, "Incorrect drawables array size");
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            setEventIcon(i, iArr[i]);
        }
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.f16494a.setLazyTag(2131361937, obj);
        this.f16494a.setLazyTag(2131361938, obj);
        this.f16494a.setLazyTag(2131361939, obj);
        this.f16494a.setLazyTag(2131361940, obj);
    }
}
