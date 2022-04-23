package com.callapp.contacts.widget.horizontalHeader;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.R;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader.class */
public class HorizontalPagerHeader extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public HorizontalPagerLayoutViewHolder<SinglePageData> f16811a;

    /* renamed from: b  reason: collision with root package name */
    private int f16812b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData.class */
    public static class SinglePageData {

        /* renamed from: a  reason: collision with root package name */
        private final String f16814a;

        /* renamed from: b  reason: collision with root package name */
        private final String f16815b;

        /* renamed from: c  reason: collision with root package name */
        private final String f16816c;

        /* renamed from: d  reason: collision with root package name */
        private final String f16817d;
        private final String e;
        private ImageView.ScaleType f;
        private final DefaultInterfaceImplUtils.ClickListener g;
        private final Task.DoneListener h;
        private int i;
        private int j;
        private int k;
        private int l;

        public SinglePageData(String str, String str2, String str3, String str4, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener, ImageView.ScaleType scaleType) {
            this(str, str2, str3, str4, (String) null, clickListener, doneListener, scaleType);
        }

        public SinglePageData(String str, String str2, String str3, String str4, String str5, ImageView.ScaleType scaleType, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener) {
            this.f16814a = str;
            this.f16815b = str2;
            this.f16816c = str3;
            this.f16817d = str4;
            this.f = scaleType;
            this.g = clickListener;
            this.e = str5;
            this.h = doneListener;
        }

        public SinglePageData(String str, String str2, String str3, String str4, String str5, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener, ImageView.ScaleType scaleType) {
            this(str, str2, str3, str4, str5, scaleType, clickListener, doneListener);
        }

        public int getBtnBorderColor() {
            return this.l;
        }

        public String getBtnText() {
            return this.f16816c;
        }

        public int getBtnTextColor() {
            return this.k;
        }

        public DefaultInterfaceImplUtils.ClickListener getClickListener() {
            return this.g;
        }

        public Task.DoneListener getImageLoadedListener() {
            return this.h;
        }

        public String getImageUrl() {
            return this.f16817d;
        }

        public ImageView.ScaleType getScaleType() {
            return this.f;
        }

        public String getSubtitle() {
            return this.f16815b;
        }

        public int getSubtitleColor() {
            return this.j;
        }

        public String getTitle() {
            return this.f16814a;
        }

        public int getTitleColor() {
            return this.i;
        }

        public void setBtnBorderColor(int i) {
            this.l = i;
        }

        public void setBtnTextColor(int i) {
            this.k = i;
        }

        public void setSubtitleColor(int i) {
            this.j = i;
        }

        public void setTitleColor(int i) {
            this.i = i;
        }
    }

    public HorizontalPagerHeader(Context context) {
        this(context, null);
    }

    public HorizontalPagerHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalPagerHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater from = LayoutInflater.from(context);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HorizontalPagerHeader, i, 0);
            this.f16812b = obtainStyledAttributes.getResourceId(0, 2131558708);
            obtainStyledAttributes.recycle();
        }
        from.inflate(this.f16812b, (ViewGroup) this, true);
        HorizontalPagerAdapter horizontalPagerAdapter = new HorizontalPagerAdapter(((FragmentActivity) context).getSupportFragmentManager(), SinglePageFragment.class);
        HorizontalPagerLayoutViewHolder<SinglePageData> horizontalPagerLayoutViewHolder = new HorizontalPagerLayoutViewHolder<SinglePageData>(this, horizontalPagerAdapter) { // from class: com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader.1
            @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder
            public ViewPager.f getPageTransformer() {
                return null;
            }
        };
        this.f16811a = horizontalPagerLayoutViewHolder;
        horizontalPagerAdapter.setCancelAnimationOnTouchListener(horizontalPagerLayoutViewHolder.getCancelAnimationOnTouchListener());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f16811a != null && motionEvent.getAction() == 0) {
            this.f16811a.f11902a = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setData(ArrayList<SinglePageData> arrayList) {
        this.f16811a.a(arrayList);
    }

    public void setPageChangedListener(ViewPager.e eVar) {
        this.f16811a.setPageChangedListener(eVar);
    }
}
