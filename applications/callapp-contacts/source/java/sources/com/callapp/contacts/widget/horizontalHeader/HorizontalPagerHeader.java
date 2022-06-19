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
import com.callapp.contacts.C5563R;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader.class */
public class HorizontalPagerHeader extends FrameLayout {

    /* renamed from: a */
    public HorizontalPagerLayoutViewHolder<SinglePageData> f29275a;

    /* renamed from: b */
    private int f29276b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData.class */
    public static class SinglePageData {

        /* renamed from: a */
        private final String f29278a;

        /* renamed from: b */
        private final String f29279b;

        /* renamed from: c */
        private final String f29280c;

        /* renamed from: d */
        private final String f29281d;

        /* renamed from: e */
        private final String f29282e;

        /* renamed from: f */
        private ImageView.ScaleType f29283f;

        /* renamed from: g */
        private final DefaultInterfaceImplUtils.ClickListener f29284g;

        /* renamed from: h */
        private final Task.DoneListener f29285h;

        /* renamed from: i */
        private int f29286i;

        /* renamed from: j */
        private int f29287j;

        /* renamed from: k */
        private int f29288k;

        /* renamed from: l */
        private int f29289l;

        public SinglePageData(String str, String str2, String str3, String str4, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener, ImageView.ScaleType scaleType) {
            this(str, str2, str3, str4, (String) null, clickListener, doneListener, scaleType);
        }

        public SinglePageData(String str, String str2, String str3, String str4, String str5, ImageView.ScaleType scaleType, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener) {
            this.f29278a = str;
            this.f29279b = str2;
            this.f29280c = str3;
            this.f29281d = str4;
            this.f29283f = scaleType;
            this.f29284g = clickListener;
            this.f29282e = str5;
            this.f29285h = doneListener;
        }

        public SinglePageData(String str, String str2, String str3, String str4, String str5, DefaultInterfaceImplUtils.ClickListener clickListener, Task.DoneListener doneListener, ImageView.ScaleType scaleType) {
            this(str, str2, str3, str4, str5, scaleType, clickListener, doneListener);
        }

        public int getBtnBorderColor() {
            return this.f29289l;
        }

        public String getBtnText() {
            return this.f29280c;
        }

        public int getBtnTextColor() {
            return this.f29288k;
        }

        public DefaultInterfaceImplUtils.ClickListener getClickListener() {
            return this.f29284g;
        }

        public Task.DoneListener getImageLoadedListener() {
            return this.f29285h;
        }

        public String getImageUrl() {
            return this.f29281d;
        }

        public ImageView.ScaleType getScaleType() {
            return this.f29283f;
        }

        public String getSubtitle() {
            return this.f29279b;
        }

        public int getSubtitleColor() {
            return this.f29287j;
        }

        public String getTitle() {
            return this.f29278a;
        }

        public int getTitleColor() {
            return this.f29286i;
        }

        public void setBtnBorderColor(int i) {
            this.f29289l = i;
        }

        public void setBtnTextColor(int i) {
            this.f29288k = i;
        }

        public void setSubtitleColor(int i) {
            this.f29287j = i;
        }

        public void setTitleColor(int i) {
            this.f29286i = i;
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
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.HorizontalPagerHeader, i, 0);
            this.f29276b = obtainStyledAttributes.getResourceId(0, 2131558708);
            obtainStyledAttributes.recycle();
        }
        from.inflate(this.f29276b, (ViewGroup) this, true);
        HorizontalPagerAdapter horizontalPagerAdapter = new HorizontalPagerAdapter(((FragmentActivity) context).getSupportFragmentManager(), SinglePageFragment.class);
        HorizontalPagerLayoutViewHolder<SinglePageData> horizontalPagerLayoutViewHolder = new HorizontalPagerLayoutViewHolder<SinglePageData>(this, horizontalPagerAdapter) { // from class: com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader.1
            @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder
            public ViewPager.AbstractC2937f getPageTransformer() {
                return null;
            }
        };
        this.f29275a = horizontalPagerLayoutViewHolder;
        horizontalPagerAdapter.setCancelAnimationOnTouchListener(horizontalPagerLayoutViewHolder.getCancelAnimationOnTouchListener());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f29275a != null && motionEvent.getAction() == 0) {
            this.f29275a.f21446a = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setData(ArrayList<SinglePageData> arrayList) {
        this.f29275a.m31114a(arrayList);
    }

    public void setPageChangedListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f29275a.setPageChangedListener(abstractC2936e);
    }
}
