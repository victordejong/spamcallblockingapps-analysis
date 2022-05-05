package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
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
/* loaded from: classes-dex2jar.jar:android/support/v13/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f9a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f10b;
    private Context c;
    private FragmentManager d;
    private int e;
    private TabHost.OnTabChangeListener f;
    private a g;
    private boolean h;

    /* loaded from: classes-dex2jar.jar:android/support/v13/app/FragmentTabHost$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v13.app.FragmentTabHost.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        String f11a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f11a = parcel.readString();
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f11a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f11a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v13/app/FragmentTabHost$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f12a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f13b;
        final Bundle c;
        Fragment d;
    }

    public FragmentTabHost(Context context) {
        super(context, null);
        a(context, (AttributeSet) null);
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    private FragmentTransaction a(String str, FragmentTransaction fragmentTransaction) {
        a aVar = null;
        for (int i = 0; i < this.f9a.size(); i++) {
            a aVar2 = this.f9a.get(i);
            if (aVar2.f12a.equals(str)) {
                aVar = aVar2;
            }
        }
        if (aVar == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        FragmentTransaction fragmentTransaction2 = fragmentTransaction;
        if (this.g != aVar) {
            fragmentTransaction2 = fragmentTransaction;
            if (fragmentTransaction == null) {
                fragmentTransaction2 = this.d.beginTransaction();
            }
            if (!(this.g == null || this.g.d == null)) {
                fragmentTransaction2.detach(this.g.d);
            }
            if (aVar != null) {
                if (aVar.d == null) {
                    aVar.d = Fragment.instantiate(this.c, aVar.f13b.getName(), aVar.c);
                    fragmentTransaction2.add(this.e, aVar.d, aVar.f12a);
                } else {
                    fragmentTransaction2.attach(aVar.d);
                }
            }
            this.g = aVar;
        }
        return fragmentTransaction2;
    }

    private void a() {
        if (this.f10b == null) {
            this.f10b = (FrameLayout) findViewById(this.e);
            if (this.f10b == null) {
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
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f10b = frameLayout2;
            this.f10b.setId(this.e);
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
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < this.f9a.size(); i++) {
            a aVar = this.f9a.get(i);
            aVar.d = this.d.findFragmentByTag(aVar.f12a);
            fragmentTransaction = fragmentTransaction;
            if (aVar.d != null) {
                fragmentTransaction = fragmentTransaction;
                if (!aVar.d.isDetached()) {
                    if (aVar.f12a.equals(currentTabTag)) {
                        this.g = aVar;
                        fragmentTransaction = fragmentTransaction;
                    } else {
                        fragmentTransaction = fragmentTransaction;
                        if (fragmentTransaction == null) {
                            fragmentTransaction = this.d.beginTransaction();
                        }
                        fragmentTransaction.detach(aVar.d);
                    }
                }
            }
        }
        this.h = true;
        FragmentTransaction a2 = a(currentTabTag, fragmentTransaction);
        if (a2 != null) {
            a2.commit();
            this.d.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f11a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        FragmentTransaction a2;
        if (this.h && (a2 = a(str, (FragmentTransaction) null)) != null) {
            a2.commit();
        }
        if (this.f != null) {
            this.f.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setup(Context context, FragmentManager fragmentManager) {
        a(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        a();
    }

    public void setup(Context context, FragmentManager fragmentManager, int i) {
        a(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        this.e = i;
        a();
        this.f10b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
