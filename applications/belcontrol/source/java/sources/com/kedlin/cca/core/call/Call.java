package com.kedlin.cca.core.call;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import p000.fa1;
import p000.m91;
import p000.q71;
import p000.r71;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/call/Call.class */
public final class Call implements Parcelable {
    public static final Parcelable.Creator<Call> CREATOR = new C0637a();

    /* renamed from: a */
    public i91 f3705a;

    /* renamed from: b */
    public int f3706b;

    /* renamed from: c */
    public boolean f3707c;

    /* renamed from: d */
    public boolean f3708d;

    /* renamed from: com.kedlin.cca.core.call.Call$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/call/Call$a.class */
    public static final class C0637a implements Parcelable.Creator<Call> {
        /* renamed from: a */
        public Call createFromParcel(Parcel parcel) {
            return new Call(parcel, (C0637a) null);
        }

        /* renamed from: b */
        public Call[] newArray(int i) {
            return new Call[i];
        }
    }

    /* renamed from: com.kedlin.cca.core.call.Call$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/call/Call$b.class */
    public static /* synthetic */ class C0638b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3709a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[q71.EnumC1614a.values().length];
            f3709a = iArr;
            try {
                iArr[q71.EnumC1614a.PICKUP_HANGUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3709a[q71.EnumC1614a.VOICE_MAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3709a[q71.EnumC1614a.IGNORE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public Call(Parcel parcel) {
        this.f3707c = false;
        this.f3708d = false;
        this.f3708d = parcel.readInt() == 1;
        this.f3705a = (i91) parcel.readSerializable();
        this.f3706b = parcel.readInt();
        this.f3707c = parcel.readInt() == 1;
    }

    public /* synthetic */ Call(Parcel parcel, C0637a c0637a) {
        this(parcel);
    }

    public Call(String str, int i) {
        this.f3707c = false;
        this.f3708d = false;
        this.f3706b = i;
        this.f3705a = new i91(str, i);
    }

    /* renamed from: a */
    public void m4385a(q71.EnumC1614a enumC1614a) {
        q71.EnumC1614a m912d = enumC1614a.m912d();
        if (!r71.EnumC1638a.f7932Y.m695a()) {
            m912d = q71.EnumC1614a.IGNORE;
        }
        int i = C0638b.f3709a[m912d.ordinal()];
        if (i != 1) {
            if (i == 2) {
                p71.m943c().mo1223c(this);
                return;
            } else if (i != 3) {
                return;
            } else {
                p71.m943c().mo1224b(this);
                return;
            }
        }
        int m1809f = fa1.C1420e.m1809f();
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Thread.sleep(2000L);
            } catch (Throwable th) {
            }
        }
        if (m1809f != fa1.C1420e.m1809f() && fa1.C1420e.m1805j() == 0) {
            this.f3707c = false;
            return;
        }
        p71.m943c().mo1221e(this);
        this.f3707c = true;
    }

    /* renamed from: b */
    public i91 m4384b() {
        return this.f3705a;
    }

    /* renamed from: c */
    public int m4383c() {
        return this.f3706b;
    }

    /* renamed from: d */
    public void m4382d() {
        if (Build.VERSION.SDK_INT >= 21) {
            m91.m1281a(this, m91.EnumC1470c.LOLLIPOP_HANGUP_COMPLETE, null);
        }
        if (this.f3707c) {
            p71.m943c().mo1223c(this);
        }
        this.f3707c = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public boolean m4381e() {
        return this.f3708d;
    }

    /* renamed from: f */
    public void m4380f(boolean z) {
        this.f3708d = z;
    }

    public String toString() {
        return this.f3705a + "@" + this.f3706b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3708d ? 1 : 0);
        parcel.writeSerializable(this.f3705a);
        parcel.writeInt(this.f3706b);
        parcel.writeInt(this.f3707c ? 1 : 0);
    }
}
