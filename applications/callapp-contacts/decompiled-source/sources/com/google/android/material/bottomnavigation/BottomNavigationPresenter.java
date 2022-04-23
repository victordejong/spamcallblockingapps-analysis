package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.transition.u;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.a;
import com.google.android.material.internal.ParcelableSparseArray;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public final class BottomNavigationPresenter implements m {

    /* renamed from: a  reason: collision with root package name */
    BottomNavigationMenuView f30301a;

    /* renamed from: b  reason: collision with root package name */
    boolean f30302b = false;

    /* renamed from: c  reason: collision with root package name */
    int f30303c;

    /* renamed from: d  reason: collision with root package name */
    private g f30304d;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        ParcelableSparseArray badgeSavedStates;
        int selectedItemId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.selectedItemId = parcel.readInt();
            this.badgeSavedStates = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.selectedItemId);
            parcel.writeParcelable(this.badgeSavedStates, 0);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Context context, g gVar) {
        this.f30304d = gVar;
        this.f30301a.j = gVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
        BottomNavigationItemView[] bottomNavigationItemViewArr;
        if (parcelable instanceof SavedState) {
            BottomNavigationMenuView bottomNavigationMenuView = this.f30301a;
            SavedState savedState = (SavedState) parcelable;
            int i = savedState.selectedItemId;
            int size = bottomNavigationMenuView.j.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem item = bottomNavigationMenuView.j.getItem(i2);
                if (i == item.getItemId()) {
                    bottomNavigationMenuView.e = i;
                    bottomNavigationMenuView.f = i2;
                    item.setChecked(true);
                    break;
                }
                i2++;
            }
            SparseArray<BadgeDrawable> a2 = a.a(this.f30301a.getContext(), savedState.badgeSavedStates);
            BottomNavigationMenuView bottomNavigationMenuView2 = this.f30301a;
            bottomNavigationMenuView2.h = a2;
            if (bottomNavigationMenuView2.f30299d != null) {
                for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationMenuView2.f30299d) {
                    bottomNavigationItemView.a(a2.get(bottomNavigationItemView.getId()));
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(g gVar, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        if (!this.f30302b) {
            if (z) {
                this.f30301a.b();
                return;
            }
            BottomNavigationMenuView bottomNavigationMenuView = this.f30301a;
            if (!(bottomNavigationMenuView.j == null || bottomNavigationMenuView.f30299d == null)) {
                int size = bottomNavigationMenuView.j.size();
                if (size != bottomNavigationMenuView.f30299d.length) {
                    bottomNavigationMenuView.b();
                    return;
                }
                int i = bottomNavigationMenuView.e;
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItem item = bottomNavigationMenuView.j.getItem(i2);
                    if (item.isChecked()) {
                        bottomNavigationMenuView.e = item.getItemId();
                        bottomNavigationMenuView.f = i2;
                    }
                }
                if (i != bottomNavigationMenuView.e) {
                    u.a(bottomNavigationMenuView, bottomNavigationMenuView.f30296a);
                }
                boolean a2 = BottomNavigationMenuView.a(bottomNavigationMenuView.f30298c, bottomNavigationMenuView.j.i().size());
                for (int i3 = 0; i3 < size; i3++) {
                    bottomNavigationMenuView.i.f30302b = true;
                    bottomNavigationMenuView.f30299d[i3].setLabelVisibilityMode(bottomNavigationMenuView.f30298c);
                    bottomNavigationMenuView.f30299d[i3].setShifting(a2);
                    bottomNavigationMenuView.f30299d[i3].a((i) bottomNavigationMenuView.j.getItem(i3));
                    bottomNavigationMenuView.i.f30302b = false;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final int b() {
        return this.f30303c;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean b(i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean c(i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.f30301a.e;
        savedState.badgeSavedStates = a.a(this.f30301a.h);
        return savedState;
    }
}
