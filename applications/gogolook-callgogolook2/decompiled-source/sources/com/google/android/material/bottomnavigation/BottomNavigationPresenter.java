package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public class BottomNavigationPresenter implements MenuPresenter {

    /* renamed from: a */
    public MenuBuilder f7377a;

    /* renamed from: b */
    public BottomNavigationMenuView f7378b;

    /* renamed from: c */
    public boolean f7379c = false;

    /* renamed from: d */
    public int f7380d;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3610a();

        /* renamed from: a */
        public int f7381a;

        /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationPresenter$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState$a.class */
        public static final class C3610a implements Parcelable.Creator<SavedState> {
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

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f7381a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f7381a);
        }
    }

    /* renamed from: a */
    public void m31463a(int i) {
        this.f7380d = i;
    }

    /* renamed from: a */
    public void m31462a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f7378b = bottomNavigationMenuView;
    }

    /* renamed from: a */
    public void m31461a(boolean z) {
        this.f7379c = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f7380d;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        return this.f7378b;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.f7377a = menuBuilder;
        this.f7378b.initialize(this.f7377a);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f7378b.m31464g(((SavedState) parcelable).f7381a);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f7381a = this.f7378b.m31470d();
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        if (!this.f7379c) {
            if (z) {
                this.f7378b.m31483a();
            } else {
                this.f7378b.m31466f();
            }
        }
    }
}
