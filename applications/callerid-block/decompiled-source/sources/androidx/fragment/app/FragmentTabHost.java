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

    /* renamed from: b */
    private final ArrayList<C0312a> f1854b = new ArrayList<>();

    /* renamed from: c */
    private FrameLayout f1855c;

    /* renamed from: d */
    private Context f1856d;

    /* renamed from: e */
    private AbstractC0325j f1857e;

    /* renamed from: f */
    private int f1858f;

    /* renamed from: g */
    private TabHost.OnTabChangeListener f1859g;

    /* renamed from: h */
    private C0312a f1860h;

    /* renamed from: i */
    private boolean f1861i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0311a();

        /* renamed from: b */
        String f1862b;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState$a.class */
        static final class C0311a implements Parcelable.Creator<SavedState> {
            C0311a() {
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
            this.f1862b = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f1862b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1862b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C0312a {

        /* renamed from: a */
        final String f1863a;

        /* renamed from: b */
        final Class<?> f1864b;

        /* renamed from: c */
        final Bundle f1865c;

        /* renamed from: d */
        Fragment f1866d;
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        m13305e(context, null);
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13305e(context, attributeSet);
    }

    /* renamed from: a */
    private AbstractC0334p m13309a(String str, AbstractC0334p pVar) {
        Fragment fragment;
        C0312a d = m13306d(str);
        AbstractC0334p pVar2 = pVar;
        if (this.f1860h != d) {
            pVar2 = pVar;
            if (pVar == null) {
                pVar2 = this.f1857e.m13186i();
            }
            C0312a aVar = this.f1860h;
            if (!(aVar == null || (fragment = aVar.f1866d) == null)) {
                pVar2.m13087j(fragment);
            }
            if (d != null) {
                Fragment fragment2 = d.f1866d;
                if (fragment2 == null) {
                    Fragment a = this.f1857e.m13191f0().m13271a(this.f1856d.getClassLoader(), d.f1864b.getName());
                    d.f1866d = a;
                    a.r1(d.f1865c);
                    pVar2.m13095b(this.f1858f, d.f1866d, d.f1863a);
                } else {
                    pVar2.m13091f(fragment2);
                }
            }
            this.f1860h = d;
        }
        return pVar2;
    }

    /* renamed from: b */
    private void m13308b() {
        if (this.f1855c == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f1858f);
            this.f1855c = frameLayout;
            if (frameLayout == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.f1858f);
            }
        }
    }

    /* renamed from: c */
    private void m13307c(Context context) {
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
            this.f1855c = frameLayout2;
            frameLayout2.setId(this.f1858f);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    /* renamed from: d */
    private C0312a m13306d(String str) {
        int size = this.f1854b.size();
        for (int i = 0; i < size; i++) {
            C0312a aVar = this.f1854b.get(i);
            if (aVar.f1863a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: e */
    private void m13305e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f1858f = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f1854b.size();
        AbstractC0334p pVar = null;
        for (int i = 0; i < size; i++) {
            C0312a aVar = this.f1854b.get(i);
            Fragment Y = this.f1857e.m13205Y(aVar.f1863a);
            aVar.f1866d = Y;
            pVar = pVar;
            if (Y != null) {
                pVar = pVar;
                if (!Y.X()) {
                    if (aVar.f1863a.equals(currentTabTag)) {
                        this.f1860h = aVar;
                        pVar = pVar;
                    } else {
                        pVar = pVar;
                        if (pVar == null) {
                            pVar = this.f1857e.m13186i();
                        }
                        pVar.m13087j(aVar.f1866d);
                    }
                }
            }
        }
        this.f1861i = true;
        AbstractC0334p a = m13309a(currentTabTag, pVar);
        if (a != null) {
            a.m13090g();
            this.f1857e.m13213U();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1861i = false;
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
        setCurrentTabByTag(savedState.f1862b);
    }

    @Override // android.view.View
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1862b = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        AbstractC0334p a;
        if (this.f1861i && (a = m13309a(str, null)) != null) {
            a.m13090g();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f1859g;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f1859g = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, AbstractC0325j jVar) {
        m13307c(context);
        super.setup();
        this.f1856d = context;
        this.f1857e = jVar;
        m13308b();
    }

    @Deprecated
    public void setup(Context context, AbstractC0325j jVar, int i) {
        m13307c(context);
        super.setup();
        this.f1856d = context;
        this.f1857e = jVar;
        this.f1858f = i;
        m13308b();
        this.f1855c.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
