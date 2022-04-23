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

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f2214a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f2215b;

    /* renamed from: c  reason: collision with root package name */
    private Context f2216c;

    /* renamed from: d  reason: collision with root package name */
    private FragmentManager f2217d;
    private int e;
    private TabHost.OnTabChangeListener f;
    private a g;
    private boolean h;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f2218a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f2219b;

        /* renamed from: c  reason: collision with root package name */
        final Bundle f2220c;

        /* renamed from: d  reason: collision with root package name */
        Fragment f2221d;

        a(String str, Class<?> cls, Bundle bundle) {
            this.f2218a = str;
            this.f2219b = cls;
            this.f2220c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        a(context, (AttributeSet) null);
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    private a a(String str) {
        int size = this.f2214a.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f2214a.get(i);
            if (aVar.f2218a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    private s a(String str, s sVar) {
        a a2 = a(str);
        s sVar2 = sVar;
        if (this.g != a2) {
            sVar2 = sVar;
            if (sVar == null) {
                sVar2 = this.f2217d.a();
            }
            a aVar = this.g;
            if (!(aVar == null || aVar.f2221d == null)) {
                sVar2.b(this.g.f2221d);
            }
            if (a2 != null) {
                if (a2.f2221d == null) {
                    a2.f2221d = this.f2217d.q().c(this.f2216c.getClassLoader(), a2.f2219b.getName());
                    a2.f2221d.setArguments(a2.f2220c);
                    sVar2.a(this.e, a2.f2221d, a2.f2218a);
                } else {
                    sVar2.c(a2.f2221d);
                }
            }
            this.g = a2;
        }
        return sVar2;
    }

    private void a() {
        if (this.f2215b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.e);
            this.f2215b = frameLayout;
            if (frameLayout == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
            }
        }
    }

    private void a(Context context) {
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
            this.f2215b = frameLayout2;
            frameLayout2.setId(this.e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.e = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f2214a.size();
        s sVar = null;
        for (int i = 0; i < size; i++) {
            a aVar = this.f2214a.get(i);
            aVar.f2221d = this.f2217d.a(aVar.f2218a);
            sVar = sVar;
            if (aVar.f2221d != null) {
                sVar = sVar;
                if (!aVar.f2221d.isDetached()) {
                    if (aVar.f2218a.equals(currentTabTag)) {
                        this.g = aVar;
                        sVar = sVar;
                    } else {
                        sVar = sVar;
                        if (sVar == null) {
                            sVar = this.f2217d.a();
                        }
                        sVar.b(aVar.f2221d);
                    }
                }
            }
        }
        this.h = true;
        s a2 = a(currentTabTag, sVar);
        if (a2 != null) {
            a2.b();
            this.f2217d.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
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
        s a2;
        if (this.h && (a2 = a(str, (s) null)) != null) {
            a2.b();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager) {
        a(context);
        super.setup();
        this.f2216c = context;
        this.f2217d = fragmentManager;
        a();
    }

    @Deprecated
    public void setup(Context context, FragmentManager fragmentManager, int i) {
        a(context);
        super.setup();
        this.f2216c = context;
        this.f2217d = fragmentManager;
        this.e = i;
        a();
        this.f2215b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
