package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ParcelableSparseArray;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public class BottomNavigationPresenter implements MenuPresenter {

    /* renamed from: f */
    private MenuBuilder f10187f;

    /* renamed from: g */
    private BottomNavigationMenuView f10188g;

    /* renamed from: h */
    private boolean f10189h = false;

    /* renamed from: i */
    private int f10190i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationPresenter.SavedState.1
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @NonNull
            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        int f10191f;
        @Nullable

        /* renamed from: g */
        ParcelableSparseArray f10192g;

        SavedState() {
        }

        SavedState(@NonNull Parcel parcel) {
            this.f10191f = parcel.readInt();
            this.f10192g = (ParcelableSparseArray) parcel.readParcelable(SavedState.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f10191f);
            parcel.writeParcelable(this.f10192g, 0);
        }
    }

    /* renamed from: a */
    public void m10460a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f10188g = bottomNavigationMenuView;
    }

    /* renamed from: b */
    public void m10459b(int i) {
        this.f10190i = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        if (!this.f10189h) {
            if (z) {
                this.f10188g.m10468d();
            } else {
                this.f10188g.m10461k();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    public boolean mo9522e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: f */
    public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: g */
    public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f10190i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: h */
    public void mo9519h(MenuPresenter.Callback callback) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(Context context, MenuBuilder menuBuilder) {
        this.f10187f = menuBuilder;
        this.f10188g.mo9485b(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f10188g.m10462j(savedState.f10191f);
            this.f10188g.setBadgeDrawables(BadgeUtils.m10575b(this.f10188g.getContext(), savedState.f10192g));
        }
    }

    /* renamed from: k */
    public void m10458k(boolean z) {
        this.f10189h = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    /* renamed from: m */
    public Parcelable mo9514m() {
        SavedState savedState = new SavedState();
        savedState.f10191f = this.f10188g.getSelectedItemId();
        savedState.f10192g = BadgeUtils.m10574c(this.f10188g.getBadgeDrawables());
        return savedState;
    }
}
