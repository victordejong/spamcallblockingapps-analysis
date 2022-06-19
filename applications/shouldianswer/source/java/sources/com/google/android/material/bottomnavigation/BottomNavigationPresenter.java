package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.SubMenuC0206r;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public class BottomNavigationPresenter implements AbstractC0197m {

    /* renamed from: id */
    private int f3842id;
    private C0182g menu;
    private BottomNavigationMenuView menuView;
    private boolean updateSuspended = false;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int selectedItemId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.selectedItemId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.selectedItemId);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public int getId() {
        return this.f3842id;
    }

    public AbstractC0199n getMenuView(ViewGroup viewGroup) {
        return this.menuView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
        this.menu = c0182g;
        this.menuView.initialize(this.menu);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.menuView.tryRestoreSelectedItemId(((SavedState) parcelable).selectedItemId);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.menuView.getSelectedItemId();
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        return false;
    }

    public void setBottomNavigationMenuView(BottomNavigationMenuView bottomNavigationMenuView) {
        this.menuView = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
    }

    public void setId(int i) {
        this.f3842id = i;
    }

    public void setUpdateSuspended(boolean z) {
        this.updateSuspended = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        if (this.updateSuspended) {
            return;
        }
        if (z) {
            this.menuView.buildMenuView();
        } else {
            this.menuView.updateMenuView();
        }
    }
}
