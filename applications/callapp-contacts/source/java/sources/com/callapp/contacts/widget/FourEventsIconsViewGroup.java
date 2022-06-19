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

    /* renamed from: a */
    private LazyInflatedViews f28706a = new LazyInflatedViews();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews.class */
    public class LazyInflatedViews {

        /* renamed from: c */
        private int[] f28709c = {2131361937, 2131361938, 2131361939, 2131361940};

        /* renamed from: b */
        private SparseArray<LazyView> f28708b = new SparseArray<>();

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews$LazyView.class */
        public class LazyView {

            /* renamed from: a */
            View f28710a;

            /* renamed from: b */
            Object f28711b;

            private LazyView() {
                LazyInflatedViews.this = r4;
            }
        }

        public LazyInflatedViews() {
            FourEventsIconsViewGroup.this = r7;
            this.f28708b.put(this.f28709c[0], new LazyView());
            this.f28708b.put(this.f28709c[1], new LazyView());
            this.f28708b.put(this.f28709c[2], new LazyView());
            this.f28708b.put(this.f28709c[3], new LazyView());
        }

        public View getLazyView(int i) {
            LazyView lazyView = this.f28708b.get(i);
            if (lazyView == null) {
                return null;
            }
            if (lazyView.f28710a == null) {
                lazyView.f28710a = ((ViewStub) FourEventsIconsViewGroup.this.findViewById(i)).inflate();
                if (lazyView.f28711b != null) {
                    lazyView.f28710a.setTag(lazyView.f28711b);
                }
            }
            return lazyView.f28710a;
        }

        public boolean isViewInflated(int i) {
            LazyView lazyView = this.f28708b.get(i);
            return (lazyView == null || lazyView.f28710a == null) ? false : true;
        }

        public void setLazyTag(int i, Object obj) {
            LazyView lazyView = this.f28708b.get(i);
            if (lazyView == null) {
                return;
            }
            lazyView.f28711b = obj;
            if (lazyView.f28710a == null) {
                return;
            }
            lazyView.f28710a.setTag(obj);
        }
    }

    public FourEventsIconsViewGroup(Context context) {
        super(context);
        m26740a();
    }

    public FourEventsIconsViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26740a();
    }

    public FourEventsIconsViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26740a();
    }

    /* renamed from: a */
    private void m26740a() {
        inflate(getContext(), 2131558762, this);
    }

    public void setEventIcon(int i, int i2) {
        setEventIcon(i, i2, 0);
    }

    public void setEventIcon(int i, int i2, int i3) {
        if (i2 == 0) {
            LazyInflatedViews lazyInflatedViews = this.f28706a;
            if (!lazyInflatedViews.isViewInflated(lazyInflatedViews.f28709c[i])) {
                return;
            }
        }
        LazyInflatedViews lazyInflatedViews2 = this.f28706a;
        ImageView imageView = (ImageView) lazyInflatedViews2.getLazyView(lazyInflatedViews2.f28709c[i]);
        ImageUtils.m27529a(imageView, i2, (ColorFilter) null);
        if (i3 != 0) {
            imageView.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
        }
        imageView.setVisibility(i2 != 0 ? 0 : 8);
    }

    public void setIconsToEvents(int[] iArr) {
        if (iArr == null || iArr.length > this.f28706a.f28709c.length) {
            CLog.m27611a(FourEventsIconsViewGroup.class, "Incorrect drawables array size");
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            setEventIcon(i, iArr[i]);
        }
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.f28706a.setLazyTag(2131361937, obj);
        this.f28706a.setLazyTag(2131361938, obj);
        this.f28706a.setLazyTag(2131361939, obj);
        this.f28706a.setLazyTag(2131361940, obj);
    }
}
