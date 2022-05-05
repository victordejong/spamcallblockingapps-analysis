package android.support.v4.app;

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
/* loaded from: classes-dex2jar.jar:android/support/v4/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f36a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f37b;
    private Context c;
    private m d;
    private int e;
    private TabHost.OnTabChangeListener f;
    private a g;
    private boolean h;

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/FragmentTabHost$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.app.FragmentTabHost.SavedState.1
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
        String f38a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f38a = parcel.readString();
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f38a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f38a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/FragmentTabHost$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f39a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f40b;
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

    private q a(String str, q qVar) {
        a aVar = null;
        for (int i = 0; i < this.f36a.size(); i++) {
            a aVar2 = this.f36a.get(i);
            if (aVar2.f39a.equals(str)) {
                aVar = aVar2;
            }
        }
        if (aVar == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        q qVar2 = qVar;
        if (this.g != aVar) {
            qVar2 = qVar;
            if (qVar == null) {
                qVar2 = this.d.a();
            }
            if (!(this.g == null || this.g.d == null)) {
                qVar2.b(this.g.d);
            }
            if (aVar != null) {
                if (aVar.d == null) {
                    aVar.d = Fragment.instantiate(this.c, aVar.f40b.getName(), aVar.c);
                    qVar2.a(this.e, aVar.d, aVar.f39a);
                } else {
                    qVar2.c(aVar.d);
                }
            }
            this.g = aVar;
        }
        return qVar2;
    }

    private void a() {
        if (this.f37b == null) {
            this.f37b = (FrameLayout) findViewById(this.e);
            if (this.f37b == null) {
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
            this.f37b = frameLayout2;
            this.f37b.setId(this.e);
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
        q qVar = null;
        for (int i = 0; i < this.f36a.size(); i++) {
            a aVar = this.f36a.get(i);
            aVar.d = this.d.a(aVar.f39a);
            qVar = qVar;
            if (aVar.d != null) {
                qVar = qVar;
                if (!aVar.d.isDetached()) {
                    if (aVar.f39a.equals(currentTabTag)) {
                        this.g = aVar;
                        qVar = qVar;
                    } else {
                        qVar = qVar;
                        if (qVar == null) {
                            qVar = this.d.a();
                        }
                        qVar.b(aVar.d);
                    }
                }
            }
        }
        this.h = true;
        q a2 = a(currentTabTag, qVar);
        if (a2 != null) {
            a2.a();
            this.d.b();
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
        setCurrentTabByTag(savedState.f38a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f38a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        q a2;
        if (this.h && (a2 = a(str, (q) null)) != null) {
            a2.a();
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

    public void setup(Context context, m mVar) {
        a(context);
        super.setup();
        this.c = context;
        this.d = mVar;
        a();
    }

    public void setup(Context context, m mVar, int i) {
        a(context);
        super.setup();
        this.c = context;
        this.d = mVar;
        this.e = i;
        a();
        this.f37b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
