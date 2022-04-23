package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p063m.p064a.AbstractC1079j;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a */
    public final ArrayList<C0230a> f1362a = new ArrayList<>();

    /* renamed from: b */
    public Context f1363b;

    /* renamed from: c */
    public AbstractC1059g f1364c;

    /* renamed from: d */
    public int f1365d;

    /* renamed from: e */
    public TabHost.OnTabChangeListener f1366e;

    /* renamed from: f */
    public C0230a f1367f;

    /* renamed from: g */
    public boolean f1368g;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0229a();

        /* renamed from: a */
        public String f1369a;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState$a.class */
        public static final class C0229a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1369a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f1369a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1369a);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C0230a {

        /* renamed from: a */
        public final String f1370a;

        /* renamed from: b */
        public final Class<?> f1371b;

        /* renamed from: c */
        public final Bundle f1372c;

        /* renamed from: d */
        public Fragment f1373d;
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m38329a(context, attributeSet);
    }

    /* renamed from: a */
    public final C0230a m38328a(String str) {
        int size = this.f1362a.size();
        for (int i = 0; i < size; i++) {
            C0230a aVar = this.f1362a.get(i);
            if (aVar.f1370a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final AbstractC1079j m38327a(String str, AbstractC1079j jVar) {
        Fragment fragment;
        C0230a a = m38328a(str);
        AbstractC1079j jVar2 = jVar;
        if (this.f1367f != a) {
            jVar2 = jVar;
            if (jVar == null) {
                jVar2 = this.f1364c.mo34878a();
            }
            C0230a aVar = this.f1367f;
            if (!(aVar == null || (fragment = aVar.f1373d) == null)) {
                jVar2.mo34743b(fragment);
            }
            if (a != null) {
                Fragment fragment2 = a.f1373d;
                if (fragment2 == null) {
                    Fragment a2 = this.f1364c.mo34825c().mo34766a(this.f1363b.getClassLoader(), a.f1371b.getName());
                    a.f1373d = a2;
                    a2.m38367m(a.f1372c);
                    jVar2.m34749a(this.f1365d, a.f1373d, a.f1370a);
                } else {
                    jVar2.m34747a(fragment2);
                }
            }
            this.f1367f = a;
        }
        return jVar2;
    }

    /* renamed from: a */
    public final void m38329a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f1365d = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f1362a.size();
        AbstractC1079j jVar = null;
        for (int i = 0; i < size; i++) {
            C0230a aVar = this.f1362a.get(i);
            Fragment a = this.f1364c.mo34849a(aVar.f1370a);
            aVar.f1373d = a;
            jVar = jVar;
            if (a != null) {
                jVar = jVar;
                if (!a.m38446P()) {
                    if (aVar.f1370a.equals(currentTabTag)) {
                        this.f1367f = aVar;
                        jVar = jVar;
                    } else {
                        jVar = jVar;
                        if (jVar == null) {
                            jVar = this.f1364c.mo34878a();
                        }
                        jVar.mo34743b(aVar.f1373d);
                    }
                }
            }
        }
        this.f1368g = true;
        AbstractC1079j a2 = m38327a(currentTabTag, jVar);
        if (a2 != null) {
            a2.mo34750a();
            this.f1364c.mo34841b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1368g = false;
    }

    @Override // android.view.View
    @Deprecated
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f1369a);
    }

    @Override // android.view.View
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1369a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        AbstractC1079j a;
        if (this.f1368g && (a = m38327a(str, (AbstractC1079j) null)) != null) {
            a.mo34750a();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f1366e;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f1366e = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
