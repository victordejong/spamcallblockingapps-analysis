package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.view.menu.SubMenuC0223r;
import com.google.android.material.internal.C4692e;
import com.google.android.material.p143b.C4532b;
/* renamed from: com.google.android.material.bottomnavigation.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/d.class */
public class C4559d implements AbstractC0214m {

    /* renamed from: a */
    private C0199g f19795a;

    /* renamed from: b */
    private C4557c f19796b;

    /* renamed from: c */
    private boolean f19797c = false;

    /* renamed from: d */
    private int f19798d;

    /* renamed from: com.google.android.material.bottomnavigation.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/d$a.class */
    public static class C4560a implements Parcelable {
        public static final Parcelable.Creator<C4560a> CREATOR = new Parcelable.Creator<C4560a>() { // from class: com.google.android.material.bottomnavigation.d.a.1
            /* renamed from: a */
            public C4560a createFromParcel(Parcel parcel) {
                return new C4560a(parcel);
            }

            /* renamed from: a */
            public C4560a[] newArray(int i) {
                return new C4560a[i];
            }
        };

        /* renamed from: a */
        int f19799a;

        /* renamed from: b */
        C4692e f19800b;

        C4560a() {
        }

        C4560a(Parcel parcel) {
            this.f19799a = parcel.readInt();
            this.f19800b = (C4692e) parcel.readParcelable(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f19799a);
            parcel.writeParcelable(this.f19800b, 0);
        }
    }

    /* renamed from: a */
    public void m3590a(int i) {
        this.f19798d = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3589a(Context context, C0199g c0199g) {
        this.f19795a = c0199g;
        this.f19796b.mo2905a(this.f19795a);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3588a(Parcelable parcelable) {
        if (parcelable instanceof C4560a) {
            this.f19796b.m3595b(((C4560a) parcelable).f19799a);
            this.f19796b.setBadgeDrawables(C4532b.m3697a(this.f19796b.getContext(), ((C4560a) parcelable).f19800b));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
    }

    /* renamed from: a */
    public void m3583a(C4557c c4557c) {
        this.f19796b = c4557c;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        if (this.f19797c) {
            return;
        }
        if (z) {
            this.f19796b.m3596b();
        } else {
            this.f19796b.m3593c();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3587a(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        return false;
    }

    /* renamed from: b */
    public void m3579b(boolean z) {
        this.f19797c = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3581b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3580b(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: c */
    public int mo3578c() {
        return this.f19798d;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: f */
    public Parcelable mo3577f() {
        C4560a c4560a = new C4560a();
        c4560a.f19799a = this.f19796b.getSelectedItemId();
        c4560a.f19800b = C4532b.m3695a(this.f19796b.getBadgeDrawables());
        return c4560a;
    }
}
