package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.SubMenuC0202r;
import com.google.android.material.badge.C8004a;
import com.google.android.material.internal.ParcelableSparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public class BottomNavigationPresenter implements AbstractC0193m {

    /* renamed from: d */
    private C0178g f36250d;

    /* renamed from: e */
    private BottomNavigationMenuView f36251e;

    /* renamed from: f */
    private boolean f36252f = false;

    /* renamed from: g */
    private int f36253g;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8026a();

        /* renamed from: d */
        int f36254d;

        /* renamed from: e */
        ParcelableSparseArray f36255e;

        /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationPresenter$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState$a.class */
        static final class C8026a implements Parcelable.Creator<SavedState> {
            C8026a() {
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

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f36254d = parcel.readInt();
            this.f36255e = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f36254d);
            parcel.writeParcelable(this.f36255e, 0);
        }
    }

    /* renamed from: a */
    public void m5481a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f36251e = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        if (this.f36252f) {
            return;
        }
        if (z) {
            this.f36251e.m5489d();
        } else {
            this.f36251e.m5482k();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    public boolean mo4535d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: e */
    public boolean mo4534e(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: f */
    public boolean mo4533f(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    public int getId() {
        return this.f36253g;
    }

    /* renamed from: h */
    public void m5480h(int i) {
        this.f36253g = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
        this.f36250d = c0178g;
        this.f36251e.mo4639b(c0178g);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f36251e.m5483j(savedState.f36254d);
            this.f36251e.setBadgeDrawables(C8004a.m5604b(this.f36251e.getContext(), savedState.f36255e));
        }
    }

    /* renamed from: k */
    public void m5479k(boolean z) {
        this.f36252f = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: m */
    public Parcelable mo4527m() {
        SavedState savedState = new SavedState();
        savedState.f36254d = this.f36251e.getSelectedItemId();
        savedState.f36255e = C8004a.m5603c(this.f36251e.getBadgeDrawables());
        return savedState;
    }
}
