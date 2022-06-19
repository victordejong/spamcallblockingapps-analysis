package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: d */
    private final ArrayList<C0700a> f3376d = new ArrayList<>();

    /* renamed from: e */
    private FrameLayout f3377e;

    /* renamed from: f */
    private Context f3378f;

    /* renamed from: g */
    private FragmentManager f3379g;

    /* renamed from: h */
    private int f3380h;

    /* renamed from: i */
    private TabHost.OnTabChangeListener f3381i;

    /* renamed from: j */
    private C0700a f3382j;

    /* renamed from: k */
    private boolean f3383k;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0699a();

        /* renamed from: d */
        String f3384d;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState$a.class */
        class C0699a implements Parcelable.Creator<SavedState> {
            C0699a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f3384d = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f3384d + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f3384d);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C0700a {

        /* renamed from: a */
        final String f3385a;

        /* renamed from: b */
        final Class<?> f3386b;

        /* renamed from: c */
        final Bundle f3387c;

        /* renamed from: d */
        Fragment f3388d;
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        m32714e(context, null);
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m32714e(context, attributeSet);
    }

    /* renamed from: a */
    private AbstractC0754s m32718a(String str, AbstractC0754s abstractC0754s) {
        Fragment fragment;
        C0700a m32715d = m32715d(str);
        AbstractC0754s abstractC0754s2 = abstractC0754s;
        if (this.f3382j != m32715d) {
            abstractC0754s2 = abstractC0754s;
            if (abstractC0754s == null) {
                abstractC0754s2 = this.f3379g.m32776l();
            }
            C0700a c0700a = this.f3382j;
            if (c0700a != null && (fragment = c0700a.f3388d) != null) {
                abstractC0754s2.mo32499l(fragment);
            }
            if (m32715d != null) {
                Fragment fragment2 = m32715d.f3388d;
                if (fragment2 == null) {
                    Fragment mo32600a = this.f3379g.m32757r0().mo32600a(this.f3378f.getClassLoader(), m32715d.f3386b.getName());
                    m32715d.f3388d = mo32600a;
                    mo32600a.m32971L1(m32715d.f3387c);
                    abstractC0754s2.m32508c(this.f3380h, m32715d.f3388d, m32715d.f3385a);
                } else {
                    abstractC0754s2.m32504g(fragment2);
                }
            }
            this.f3382j = m32715d;
        }
        return abstractC0754s2;
    }

    /* renamed from: b */
    private void m32717b() {
        if (this.f3377e == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f3380h);
            this.f3377e = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f3380h);
        }
    }

    /* renamed from: c */
    private void m32716c(Context context) {
        if (findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f3377e = frameLayout2;
            frameLayout2.setId(this.f3380h);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    /* renamed from: d */
    private C0700a m32715d(String str) {
        int size = this.f3376d.size();
        for (int i = 0; i < size; i++) {
            C0700a c0700a = this.f3376d.get(i);
            if (c0700a.f3385a.equals(str)) {
                return c0700a;
            }
        }
        return null;
    }

    /* renamed from: e */
    private void m32714e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f3380h = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f3376d.size();
        AbstractC0754s abstractC0754s = null;
        int i = 0;
        while (i < size) {
            C0700a c0700a = this.f3376d.get(i);
            Fragment m32784i0 = this.f3379g.m32784i0(c0700a.f3385a);
            c0700a.f3388d = m32784i0;
            AbstractC0754s abstractC0754s2 = abstractC0754s;
            if (m32784i0 != null) {
                abstractC0754s2 = abstractC0754s;
                if (!m32784i0.m32916l0()) {
                    if (c0700a.f3385a.equals(currentTabTag)) {
                        this.f3382j = c0700a;
                        abstractC0754s2 = abstractC0754s;
                    } else {
                        abstractC0754s2 = abstractC0754s;
                        if (abstractC0754s == null) {
                            abstractC0754s2 = this.f3379g.m32776l();
                        }
                        abstractC0754s2.mo32499l(c0700a.f3388d);
                    }
                }
            }
            i++;
            abstractC0754s = abstractC0754s2;
        }
        this.f3383k = true;
        AbstractC0754s m32718a = m32718a(currentTabTag, abstractC0754s);
        if (m32718a != null) {
            m32718a.mo32503h();
            this.f3379g.m32796e0();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3383k = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f3384d);
    }

    @Override // android.view.View
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3384d = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        AbstractC0754s m32718a;
        if (this.f3383k && (m32718a = m32718a(str, null)) != null) {
            m32718a.mo32503h();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f3381i;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f3381i = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager) {
        m32716c(context);
        super.setup();
        this.f3378f = context;
        this.f3379g = fragmentManager;
        m32717b();
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager, int i) {
        m32716c(context);
        super.setup();
        this.f3378f = context;
        this.f3379g = fragmentManager;
        this.f3380h = i;
        m32717b();
        this.f3377e.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
