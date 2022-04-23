package com.callapp.contacts.activity.contact.cards.framework.simple;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.widget.ProfilePictureView;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject.class */
public class SimpleCardListObject extends DefaultListObject {
    private final int A;
    private final View.OnClickListener B;
    private final int C;
    private final int D;
    private final int E;
    private final boolean F;
    private final View.OnClickListener G;
    private final Drawable H;
    private final View.OnClickListener I;
    private final int J;
    private final String K;
    private final String L;
    private final int M;
    private final View.OnClickListener N;
    private final int O;
    private final int P;
    private final boolean Q;
    private final int R;
    private Drawable S;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f11914a;
    private final int g;
    private final Drawable h;
    private final View.OnClickListener i;
    private final View.OnLongClickListener j;
    private final String k;
    private final ProfilePictureView l;
    private final int m;
    private final int n;
    private final int o;
    private final String p;
    private final int q;
    private final int r;
    private int s;
    private final int t;
    private final Integer u;
    private final int v;
    private final PorterDuff.Mode w;
    private final int x;
    private final int y;
    private final boolean z;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder.class */
    public static class Builder {
        public int G;
        public boolean H;
        private Drawable K;
        private Drawable M;
        private Drawable N;

        /* renamed from: a  reason: collision with root package name */
        public Drawable f11915a;

        /* renamed from: b  reason: collision with root package name */
        public View.OnClickListener f11916b;

        /* renamed from: c  reason: collision with root package name */
        public View.OnLongClickListener f11917c;

        /* renamed from: d  reason: collision with root package name */
        public String f11918d;
        public String g;
        public int j;
        public View.OnClickListener k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public String r;
        public String s;
        public View.OnClickListener t;
        public View.OnClickListener u;
        public View.OnClickListener v;
        public Integer x;
        public int y;
        public PorterDuff.Mode z;
        private int J = 16;
        public int e = 2131951863;
        public int f = 2131100140;
        private ProfilePictureView L = new ProfilePictureView(CallAppApplication.get());
        public int h = 2131951897;
        public int i = 2131100108;
        public int w = 0;
        public int A = 0;
        public int B = 8;
        public boolean C = false;
        public boolean D = false;
        public int E = 8;
        public int F = 8;
        public int I = 0;

        public final Builder a(int i) {
            this.M = b.a(CallAppApplication.get(), i);
            return this;
        }

        public final SimpleCardListObject a(it.gmariotti.cardslib.library.a.b bVar) {
            return new SimpleCardListObject(bVar, this);
        }
    }

    protected SimpleCardListObject(it.gmariotti.cardslib.library.a.b bVar, Builder builder) {
        super(bVar);
        this.i = builder.f11916b;
        this.j = builder.f11917c;
        this.k = builder.f11918d;
        this.p = builder.g;
        this.S = builder.M;
        this.s = builder.j;
        this.I = builder.k;
        this.J = builder.l;
        this.x = builder.m;
        this.C = builder.n;
        this.M = builder.o;
        this.A = builder.p;
        this.E = builder.q;
        this.F = builder.D;
        this.K = builder.r;
        this.L = builder.s;
        this.N = builder.t;
        this.B = builder.u;
        this.G = builder.v;
        this.f11914a = builder.f11915a;
        this.n = builder.e;
        this.l = builder.L;
        this.o = builder.f;
        this.q = builder.h;
        this.r = builder.i;
        this.h = builder.K;
        this.t = builder.w;
        this.u = builder.x;
        this.v = builder.y;
        this.w = builder.z;
        this.m = builder.F;
        this.O = builder.A;
        this.y = builder.B;
        this.z = builder.C;
        this.D = builder.E;
        this.g = builder.J;
        this.P = builder.G;
        this.H = builder.N;
        this.Q = builder.H;
        this.R = builder.I;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SimpleCardListObject simpleCardListObject = (SimpleCardListObject) obj;
        return this.g == simpleCardListObject.g && this.n == simpleCardListObject.n && this.q == simpleCardListObject.q && this.s == simpleCardListObject.s && this.J == simpleCardListObject.J && this.M == simpleCardListObject.M && this.t == simpleCardListObject.t && this.u == simpleCardListObject.u && this.v == simpleCardListObject.v && this.O == simpleCardListObject.O && this.P == simpleCardListObject.P && Objects.equals(this.k, simpleCardListObject.k) && Objects.equals(this.p, simpleCardListObject.p);
    }

    public Integer getBackgroundColor() {
        return this.u;
    }

    public Drawable getBackgroundDrawable() {
        return this.f11914a;
    }

    public int getCardContentGravity() {
        return this.g;
    }

    public int getColorFilter() {
        return this.v;
    }

    public PorterDuff.Mode getColorFilterMode() {
        return this.w;
    }

    public View.OnClickListener getEndIconClickListener() {
        return this.G;
    }

    public boolean getEndIconIsEnable() {
        return this.F;
    }

    public int getEndIconResId() {
        return this.C;
    }

    public int getEndIconTintColor() {
        return this.E;
    }

    public int getEndIconVisibility() {
        return this.D;
    }

    public int getFirstItemSubTitleColor() {
        return this.r;
    }

    public int getFirstItemSubTitleStyle() {
        return this.q;
    }

    public int getFirstItemTitleColor() {
        return this.o;
    }

    public int getFirstItemTitleStyle() {
        return this.n;
    }

    public String getImageUrl() {
        return null;
    }

    public View.OnClickListener getLeftIconClickListener() {
        return this.I;
    }

    public Drawable getLeftIconDefaultDrawable() {
        return this.H;
    }

    public Drawable getLeftIconDrawable() {
        return this.S;
    }

    public int getLeftIconTintColor() {
        return this.s;
    }

    public int getLeftIconVisibility() {
        return this.t;
    }

    public String getLoadedImageUrl() {
        return null;
    }

    public View.OnClickListener getMiddleIconClickListener() {
        return this.B;
    }

    public boolean getMiddleIconEnabled() {
        return this.z;
    }

    public int getMiddleIconResId() {
        return this.x;
    }

    public int getMiddleIconTintColor() {
        return this.A;
    }

    public int getMiddleIconVisibility() {
        return this.y;
    }

    public Pair<String, String> getProfilePicturePhotoAndName() {
        return Pair.create(this.K, this.L);
    }

    public int getProfilePictureViewVisibility() {
        return this.m;
    }

    public View.OnClickListener getRightIconClickListener() {
        return this.N;
    }

    public int getRightIconResId() {
        return this.J;
    }

    public int getRightIconTintColor() {
        return this.M;
    }

    public int getRightIconVisibility() {
        return this.O;
    }

    public View.OnClickListener getRowClickListener() {
        return this.i;
    }

    public View.OnLongClickListener getRowLongClickListener() {
        return this.j;
    }

    public int getSubTextIconResId() {
        return this.P;
    }

    public String getSubtitle() {
        return this.p;
    }

    public Drawable getTextBackgroundDrawable() {
        return this.h;
    }

    public String getTitle() {
        return this.k;
    }

    public int getViewHeight() {
        return this.R;
    }

    public int hashCode() {
        int i = this.g;
        String str = this.k;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i3 = this.n;
        String str2 = this.p;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((((((((((((((((((i * 31) + hashCode) * 31) + i3) * 31) + i2) * 31) + this.q) * 31) + this.s) * 31) + this.J) * 31) + this.M) * 31) + this.t) * 31) + this.u.intValue()) * 31) + this.O) * 31) + this.P;
    }

    public boolean isTitleAllCaps() {
        return this.Q;
    }

    public void setLeftIconDrawable(Drawable drawable) {
        this.S = drawable;
    }

    public void setLeftImage(Drawable drawable) {
        setLeftIconDrawable(drawable);
    }

    public void setLoadedImageUrl(String str) {
    }
}
