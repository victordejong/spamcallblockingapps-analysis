package androidx.fragment.app;

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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a */
    private final ArrayList<C1070a> f4259a = new ArrayList<>();

    /* renamed from: b */
    private FrameLayout f4260b;

    /* renamed from: c */
    private Context f4261c;

    /* renamed from: d */
    private FragmentManager f4262d;

    /* renamed from: e */
    private int f4263e;

    /* renamed from: f */
    private TabHost.OnTabChangeListener f4264f;

    /* renamed from: g */
    private C1070a f4265g;

    /* renamed from: h */
    private boolean f4266h;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.fragment.app.FragmentTabHost.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        String curTab;

        SavedState(Parcel parcel) {
            super(parcel);
            this.curTab = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.curTab);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C1070a {

        /* renamed from: a */
        final String f4267a;

        /* renamed from: b */
        final Class<?> f4268b;

        /* renamed from: c */
        final Bundle f4269c;

        /* renamed from: d */
        Fragment f4270d;

        C1070a(String str, Class<?> cls, Bundle bundle) {
            this.f4267a = str;
            this.f4268b = cls;
            this.f4269c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        m43658a(context, (AttributeSet) null);
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m43658a(context, attributeSet);
    }

    /* renamed from: a */
    private C1070a m43657a(String str) {
        int size = this.f4259a.size();
        for (int i = 0; i < size; i++) {
            C1070a c1070a = this.f4259a.get(i);
            if (c1070a.f4267a.equals(str)) {
                return c1070a;
            }
        }
        return null;
    }

    /* renamed from: a */
    private AbstractC1121s m43656a(String str, AbstractC1121s abstractC1121s) {
        C1070a m43657a = m43657a(str);
        AbstractC1121s abstractC1121s2 = abstractC1121s;
        if (this.f4265g != m43657a) {
            abstractC1121s2 = abstractC1121s;
            if (abstractC1121s == null) {
                abstractC1121s2 = this.f4262d.m43765a();
            }
            C1070a c1070a = this.f4265g;
            if (c1070a != null && c1070a.f4270d != null) {
                abstractC1121s2.mo43534b(this.f4265g.f4270d);
            }
            if (m43657a != null) {
                if (m43657a.f4270d == null) {
                    m43657a.f4270d = this.f4262d.m43685q().mo43616c(this.f4261c.getClassLoader(), m43657a.f4268b.getName());
                    m43657a.f4270d.setArguments(m43657a.f4269c);
                    abstractC1121s2.m43541a(this.f4263e, m43657a.f4270d, m43657a.f4267a);
                } else {
                    abstractC1121s2.m43531c(m43657a.f4270d);
                }
            }
            this.f4265g = m43657a;
        }
        return abstractC1121s2;
    }

    /* renamed from: a */
    private void m43660a() {
        if (this.f4260b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f4263e);
            this.f4260b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f4263e);
        }
    }

    /* renamed from: a */
    private void m43659a(Context context) {
        if (findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, BitmapDescriptorFactory.HUE_RED));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, BitmapDescriptorFactory.HUE_RED));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f4260b = frameLayout2;
            frameLayout2.setId(this.f4263e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    /* renamed from: a */
    private void m43658a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f4263e = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f4259a.size();
        AbstractC1121s abstractC1121s = null;
        int i = 0;
        while (i < size) {
            C1070a c1070a = this.f4259a.get(i);
            c1070a.f4270d = this.f4262d.m43740a(c1070a.f4267a);
            AbstractC1121s abstractC1121s2 = abstractC1121s;
            if (c1070a.f4270d != null) {
                abstractC1121s2 = abstractC1121s;
                if (!c1070a.f4270d.isDetached()) {
                    if (c1070a.f4267a.equals(currentTabTag)) {
                        this.f4265g = c1070a;
                        abstractC1121s2 = abstractC1121s;
                    } else {
                        abstractC1121s2 = abstractC1121s;
                        if (abstractC1121s == null) {
                            abstractC1121s2 = this.f4262d.m43765a();
                        }
                        abstractC1121s2.mo43534b(c1070a.f4270d);
                    }
                }
            }
            i++;
            abstractC1121s = abstractC1121s2;
        }
        this.f4266h = true;
        AbstractC1121s m43656a = m43656a(currentTabTag, abstractC1121s);
        if (m43656a != null) {
            m43656a.mo43536b();
            this.f4262d.m43732b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f4266h = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.curTab);
    }

    @Override // android.view.View
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.curTab = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        AbstractC1121s m43656a;
        if (this.f4266h && (m43656a = m43656a(str, (AbstractC1121s) null)) != null) {
            m43656a.mo43536b();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f4264f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f4264f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager) {
        m43659a(context);
        super.setup();
        this.f4261c = context;
        this.f4262d = fragmentManager;
        m43660a();
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager, int i) {
        m43659a(context);
        super.setup();
        this.f4261c = context;
        this.f4262d = fragmentManager;
        this.f4263e = i;
        m43660a();
        this.f4260b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
