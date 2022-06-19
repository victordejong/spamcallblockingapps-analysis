package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0097m;
import androidx.appcompat.view.menu.AbstractC0099n;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.g;
import d.a.a;
import d.a.i;
import d.a.j;
import d.a.o.d;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
protected final class AppCompatDelegateImpl$PanelFeatureState {

    /* renamed from: a */
    int f240a;

    /* renamed from: b */
    int f241b;

    /* renamed from: c */
    int f242c;

    /* renamed from: d */
    int f243d;

    /* renamed from: e */
    int f244e;

    /* renamed from: f */
    int f245f;

    /* renamed from: g */
    ViewGroup f246g;

    /* renamed from: h */
    View f247h;

    /* renamed from: i */
    View f248i;

    /* renamed from: j */
    g f249j;

    /* renamed from: k */
    e f250k;

    /* renamed from: l */
    Context f251l;

    /* renamed from: m */
    boolean f252m;

    /* renamed from: n */
    boolean f253n;

    /* renamed from: o */
    boolean f254o;

    /* renamed from: p */
    public boolean f255p;

    /* renamed from: q */
    boolean f256q = false;

    /* renamed from: r */
    boolean f257r;

    /* renamed from: s */
    Bundle f258s;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0083a();

        /* renamed from: b */
        int f259b;

        /* renamed from: c */
        boolean f260c;

        /* renamed from: d */
        Bundle f261d;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$a.class */
        class C0083a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0083a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return SavedState.m14948a(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return SavedState.m14948a(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState() {
        }

        /* renamed from: a */
        static SavedState m14948a(Parcel parcel, ClassLoader classLoader) {
            SavedState savedState = new SavedState();
            savedState.f259b = parcel.readInt();
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            savedState.f260c = z;
            if (z) {
                savedState.f261d = parcel.readBundle(classLoader);
            }
            return savedState;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f259b);
            parcel.writeInt(this.f260c ? 1 : 0);
            if (this.f260c) {
                parcel.writeBundle(this.f261d);
            }
        }
    }

    AppCompatDelegateImpl$PanelFeatureState(int i) {
        this.f240a = i;
    }

    /* renamed from: a */
    AbstractC0099n m14952a(AbstractC0097m.AbstractC0098a abstractC0098a) {
        if (this.f249j == null) {
            return null;
        }
        if (this.f250k == null) {
            e eVar = new e(this.f251l, d.a.g.abc_list_menu_item_layout);
            this.f250k = eVar;
            eVar.O(abstractC0098a);
            this.f249j.b(this.f250k);
        }
        return this.f250k.c(this.f246g);
    }

    /* renamed from: b */
    public boolean m14951b() {
        boolean z = false;
        if (this.f247h == null) {
            return false;
        }
        if (this.f248i != null) {
            return true;
        }
        if (this.f250k.b().getCount() > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    void m14950c(g gVar) {
        e eVar;
        g gVar2 = this.f249j;
        if (gVar == gVar2) {
            return;
        }
        if (gVar2 != null) {
            gVar2.Q(this.f250k);
        }
        this.f249j = gVar;
        if (gVar == null || (eVar = this.f250k) == null) {
            return;
        }
        gVar.b(eVar);
    }

    /* renamed from: d */
    void m14949d(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme newTheme = context.getResources().newTheme();
        newTheme.setTo(context.getTheme());
        newTheme.resolveAttribute(a.actionBarPopupTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i != 0) {
            newTheme.applyStyle(i, true);
        }
        newTheme.resolveAttribute(a.panelMenuListTheme, typedValue, true);
        int i2 = typedValue.resourceId;
        if (i2 == 0) {
            i2 = i.Theme_AppCompat_CompactMenu;
        }
        newTheme.applyStyle(i2, true);
        d dVar = new d(context, 0);
        dVar.getTheme().setTo(newTheme);
        this.f251l = dVar;
        TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(j.AppCompatTheme);
        this.f241b = obtainStyledAttributes.getResourceId(j.AppCompatTheme_panelBackground, 0);
        this.f245f = obtainStyledAttributes.getResourceId(j.AppCompatTheme_android_windowAnimationStyle, 0);
        obtainStyledAttributes.recycle();
    }
}
