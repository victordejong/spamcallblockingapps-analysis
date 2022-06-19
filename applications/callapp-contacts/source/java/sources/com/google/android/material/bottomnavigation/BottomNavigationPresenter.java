package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.SubMenuC0292r;
import androidx.transition.C2908u;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C14419a;
import com.google.android.material.internal.ParcelableSparseArray;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public final class BottomNavigationPresenter implements AbstractC0283m {

    /* renamed from: a */
    BottomNavigationMenuView f52630a;

    /* renamed from: b */
    boolean f52631b = false;

    /* renamed from: c */
    int f52632c;

    /* renamed from: d */
    private C0268g f52633d;

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

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10549a(Context context, C0268g c0268g) {
        this.f52633d = c0268g;
        this.f52630a.f52614j = c0268g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
        BottomNavigationItemView[] bottomNavigationItemViewArr;
        if (parcelable instanceof SavedState) {
            BottomNavigationMenuView bottomNavigationMenuView = this.f52630a;
            SavedState savedState = (SavedState) parcelable;
            int i = savedState.selectedItemId;
            int size = bottomNavigationMenuView.f52614j.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem item = bottomNavigationMenuView.f52614j.getItem(i2);
                if (i == item.getItemId()) {
                    bottomNavigationMenuView.f52609e = i;
                    bottomNavigationMenuView.f52610f = i2;
                    item.setChecked(true);
                    break;
                }
                i2++;
            }
            SparseArray<BadgeDrawable> m11228a = C14419a.m11228a(this.f52630a.getContext(), savedState.badgeSavedStates);
            BottomNavigationMenuView bottomNavigationMenuView2 = this.f52630a;
            bottomNavigationMenuView2.f52612h = m11228a;
            if (bottomNavigationMenuView2.f52608d == null) {
                return;
            }
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationMenuView2.f52608d) {
                bottomNavigationItemView.m11151a(m11228a.get(bottomNavigationItemView.getId()));
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        if (this.f52631b) {
            return;
        }
        if (z) {
            this.f52630a.m11143b();
            return;
        }
        BottomNavigationMenuView bottomNavigationMenuView = this.f52630a;
        if (bottomNavigationMenuView.f52614j == null || bottomNavigationMenuView.f52608d == null) {
            return;
        }
        int size = bottomNavigationMenuView.f52614j.size();
        if (size != bottomNavigationMenuView.f52608d.length) {
            bottomNavigationMenuView.m11143b();
            return;
        }
        int i = bottomNavigationMenuView.f52609e;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = bottomNavigationMenuView.f52614j.getItem(i2);
            if (item.isChecked()) {
                bottomNavigationMenuView.f52609e = item.getItemId();
                bottomNavigationMenuView.f52610f = i2;
            }
        }
        if (i != bottomNavigationMenuView.f52609e) {
            C2908u.m39680a(bottomNavigationMenuView, bottomNavigationMenuView.f52605a);
        }
        boolean m11145a = BottomNavigationMenuView.m11145a(bottomNavigationMenuView.f52607c, bottomNavigationMenuView.f52614j.m46084i().size());
        for (int i3 = 0; i3 < size; i3++) {
            bottomNavigationMenuView.f52613i.f52631b = true;
            bottomNavigationMenuView.f52608d[i3].setLabelVisibilityMode(bottomNavigationMenuView.f52607c);
            bottomNavigationMenuView.f52608d[i3].setShifting(m11145a);
            bottomNavigationMenuView.f52608d[i3].mo10612a((C0272i) bottomNavigationMenuView.f52614j.getItem(i3));
            bottomNavigationMenuView.f52613i.f52631b = false;
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10551a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final int mo10540b() {
        return this.f52632c;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final boolean mo10537b(C0272i c0272i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: c */
    public final boolean mo10533c(C0272i c0272i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.f52630a.f52609e;
        savedState.badgeSavedStates = C14419a.m11226a(this.f52630a.f52612h);
        return savedState;
    }
}
