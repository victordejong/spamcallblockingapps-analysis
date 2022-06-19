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

    /* renamed from: a */
    public final ArrayList<C0114a> f907a = new ArrayList<>();

    /* renamed from: b */
    public FrameLayout f908b;

    /* renamed from: c */
    public Context f909c;

    /* renamed from: d */
    public nd f910d;

    /* renamed from: f */
    public int f911f;

    /* renamed from: g */
    public TabHost.OnTabChangeListener f912g;

    /* renamed from: h */
    public C0114a f913h;

    /* renamed from: j */
    public boolean f914j;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0113a();

        /* renamed from: a */
        public String f915a;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState$a.class */
        public static final class C0113a implements Parcelable.Creator<SavedState> {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f915a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f915a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f915a);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C0114a {

        /* renamed from: a */
        public final String f916a;

        /* renamed from: b */
        public final Class<?> f917b;

        /* renamed from: c */
        public final Bundle f918c;

        /* renamed from: d */
        public Fragment f919d;
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        m6708e(context, null);
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6708e(context, attributeSet);
    }

    /* renamed from: a */
    public final td m6712a(String str, td tdVar) {
        Fragment fragment;
        C0114a m6709d = m6709d(str);
        td tdVar2 = tdVar;
        if (this.f913h != m6709d) {
            tdVar2 = tdVar;
            if (tdVar == null) {
                tdVar2 = this.f910d.j();
            }
            C0114a c0114a = this.f913h;
            if (c0114a != null && (fragment = c0114a.f919d) != null) {
                tdVar2.l(fragment);
            }
            if (m6709d != null) {
                Fragment fragment2 = m6709d.f919d;
                if (fragment2 == null) {
                    Fragment a = this.f910d.h0().a(this.f909c.getClassLoader(), m6709d.f917b.getName());
                    m6709d.f919d = a;
                    a.setArguments(m6709d.f918c);
                    tdVar2.b(this.f911f, m6709d.f919d, m6709d.f916a);
                } else {
                    tdVar2.g(fragment2);
                }
            }
            this.f913h = m6709d;
        }
        return tdVar2;
    }

    /* renamed from: b */
    public final void m6711b() {
        if (this.f908b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f911f);
            this.f908b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f911f);
        }
    }

    /* renamed from: c */
    public final void m6710c(Context context) {
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
            this.f908b = frameLayout2;
            frameLayout2.setId(this.f911f);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    /* renamed from: d */
    public final C0114a m6709d(String str) {
        int size = this.f907a.size();
        for (int i = 0; i < size; i++) {
            C0114a c0114a = this.f907a.get(i);
            if (c0114a.f916a.equals(str)) {
                return c0114a;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final void m6708e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f911f = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f907a.size();
        td tdVar = null;
        int i = 0;
        while (i < size) {
            C0114a c0114a = this.f907a.get(i);
            Fragment Z = this.f910d.Z(c0114a.f916a);
            c0114a.f919d = Z;
            td tdVar2 = tdVar;
            if (Z != null) {
                tdVar2 = tdVar;
                if (!Z.isDetached()) {
                    if (c0114a.f916a.equals(currentTabTag)) {
                        this.f913h = c0114a;
                        tdVar2 = tdVar;
                    } else {
                        tdVar2 = tdVar;
                        if (tdVar == null) {
                            tdVar2 = this.f910d.j();
                        }
                        tdVar2.l(c0114a.f919d);
                    }
                }
            }
            i++;
            tdVar = tdVar2;
        }
        this.f914j = true;
        td m6712a = m6712a(currentTabTag, tdVar);
        if (m6712a != null) {
            m6712a.h();
            this.f910d.V();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f914j = false;
    }

    @Override // android.view.View
    @Deprecated
    public void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f915a);
    }

    @Override // android.view.View
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f915a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        td m6712a;
        if (this.f914j && (m6712a = m6712a(str, null)) != null) {
            m6712a.h();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f912g;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f912g = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, nd ndVar) {
        m6710c(context);
        super.setup();
        this.f909c = context;
        this.f910d = ndVar;
        m6711b();
    }

    @Deprecated
    public void setup(Context context, nd ndVar, int i) {
        m6710c(context);
        super.setup();
        this.f909c = context;
        this.f910d = ndVar;
        this.f911f = i;
        m6711b();
        this.f908b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
