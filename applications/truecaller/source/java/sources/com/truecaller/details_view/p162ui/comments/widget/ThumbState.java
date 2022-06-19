package com.truecaller.details_view.p162ui.comments.widget;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.details_view.C3857R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState.class */
public abstract class ThumbState implements Parcelable {

    /* renamed from: a */
    public final int f11764a;

    /* renamed from: b */
    public final String f11765b;

    /* renamed from: c */
    public final int f11766c;

    /* renamed from: d */
    public final int f11767d;

    /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbDownDefault */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault.class */
    public static final class ThumbDownDefault extends ThumbState {
        public static final Parcelable.Creator<ThumbDownDefault> CREATOR = new C3876a();

        /* renamed from: e */
        public final int f11768e;

        /* renamed from: f */
        public final String f11769f;

        /* renamed from: g */
        public final int f11770g;

        /* renamed from: h */
        public final int f11771h;

        /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbDownDefault$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault$a.class */
        public static final class C3876a implements Parcelable.Creator<ThumbDownDefault> {
            @Override // android.os.Parcelable.Creator
            public ThumbDownDefault createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new ThumbDownDefault(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public ThumbDownDefault[] newArray(int i) {
                return new ThumbDownDefault[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThumbDownDefault(int i, String str, int i2, int i3) {
            super(C3857R.C3858drawable.ic_default_thumb_down, i, str, i2, i3, null);
            l.e(str, "countForDisplay");
            this.f11768e = i;
            this.f11769f = str;
            this.f11770g = i2;
            this.f11771h = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof ThumbDownDefault)) {
                    return false;
                }
                ThumbDownDefault thumbDownDefault = (ThumbDownDefault) obj;
                return this.f11768e == thumbDownDefault.f11768e && l.a(this.f11769f, thumbDownDefault.f11769f) && this.f11770g == thumbDownDefault.f11770g && this.f11771h == thumbDownDefault.f11771h;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f11768e;
            String str = this.f11769f;
            return (((((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f11770g) * 31) + this.f11771h;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ThumbDownDefault(count=");
            m8728C.append(this.f11768e);
            m8728C.append(", countForDisplay=");
            m8728C.append(this.f11769f);
            m8728C.append(", color=");
            m8728C.append(this.f11770g);
            m8728C.append(", colorIcon=");
            return C22128a.m8697J2(m8728C, this.f11771h, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f11768e);
            parcel.writeString(this.f11769f);
            parcel.writeInt(this.f11770g);
            parcel.writeInt(this.f11771h);
        }
    }

    /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbDownPressed */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed.class */
    public static final class ThumbDownPressed extends ThumbState {
        public static final Parcelable.Creator<ThumbDownPressed> CREATOR = new C3877a();

        /* renamed from: e */
        public final int f11772e;

        /* renamed from: f */
        public final String f11773f;

        /* renamed from: g */
        public final int f11774g;

        /* renamed from: h */
        public final int f11775h;

        /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbDownPressed$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed$a.class */
        public static final class C3877a implements Parcelable.Creator<ThumbDownPressed> {
            @Override // android.os.Parcelable.Creator
            public ThumbDownPressed createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new ThumbDownPressed(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public ThumbDownPressed[] newArray(int i) {
                return new ThumbDownPressed[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThumbDownPressed(int i, String str, int i2, int i3) {
            super(C3857R.C3858drawable.ic_pressed_thumb_down, i, str, i2, i3, null);
            l.e(str, "countForDisplay");
            this.f11772e = i;
            this.f11773f = str;
            this.f11774g = i2;
            this.f11775h = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof ThumbDownPressed)) {
                    return false;
                }
                ThumbDownPressed thumbDownPressed = (ThumbDownPressed) obj;
                return this.f11772e == thumbDownPressed.f11772e && l.a(this.f11773f, thumbDownPressed.f11773f) && this.f11774g == thumbDownPressed.f11774g && this.f11775h == thumbDownPressed.f11775h;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f11772e;
            String str = this.f11773f;
            return (((((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f11774g) * 31) + this.f11775h;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ThumbDownPressed(count=");
            m8728C.append(this.f11772e);
            m8728C.append(", countForDisplay=");
            m8728C.append(this.f11773f);
            m8728C.append(", color=");
            m8728C.append(this.f11774g);
            m8728C.append(", colorIcon=");
            return C22128a.m8697J2(m8728C, this.f11775h, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f11772e);
            parcel.writeString(this.f11773f);
            parcel.writeInt(this.f11774g);
            parcel.writeInt(this.f11775h);
        }
    }

    /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbUpDefault */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault.class */
    public static final class ThumbUpDefault extends ThumbState {
        public static final Parcelable.Creator<ThumbUpDefault> CREATOR = new C3878a();

        /* renamed from: e */
        public final int f11776e;

        /* renamed from: f */
        public final String f11777f;

        /* renamed from: g */
        public final int f11778g;

        /* renamed from: h */
        public final int f11779h;

        /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbUpDefault$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault$a.class */
        public static final class C3878a implements Parcelable.Creator<ThumbUpDefault> {
            @Override // android.os.Parcelable.Creator
            public ThumbUpDefault createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new ThumbUpDefault(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public ThumbUpDefault[] newArray(int i) {
                return new ThumbUpDefault[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThumbUpDefault(int i, String str, int i2, int i3) {
            super(C3857R.C3858drawable.ic_default_thumb_up, i, str, i2, i3, null);
            l.e(str, "countForDisplay");
            this.f11776e = i;
            this.f11777f = str;
            this.f11778g = i2;
            this.f11779h = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof ThumbUpDefault)) {
                    return false;
                }
                ThumbUpDefault thumbUpDefault = (ThumbUpDefault) obj;
                return this.f11776e == thumbUpDefault.f11776e && l.a(this.f11777f, thumbUpDefault.f11777f) && this.f11778g == thumbUpDefault.f11778g && this.f11779h == thumbUpDefault.f11779h;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f11776e;
            String str = this.f11777f;
            return (((((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f11778g) * 31) + this.f11779h;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ThumbUpDefault(count=");
            m8728C.append(this.f11776e);
            m8728C.append(", countForDisplay=");
            m8728C.append(this.f11777f);
            m8728C.append(", color=");
            m8728C.append(this.f11778g);
            m8728C.append(", colorIcon=");
            return C22128a.m8697J2(m8728C, this.f11779h, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f11776e);
            parcel.writeString(this.f11777f);
            parcel.writeInt(this.f11778g);
            parcel.writeInt(this.f11779h);
        }
    }

    /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbUpPressed */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed.class */
    public static final class ThumbUpPressed extends ThumbState {
        public static final Parcelable.Creator<ThumbUpPressed> CREATOR = new C3879a();

        /* renamed from: e */
        public final int f11780e;

        /* renamed from: f */
        public final String f11781f;

        /* renamed from: g */
        public final int f11782g;

        /* renamed from: h */
        public final int f11783h;

        /* renamed from: com.truecaller.details_view.ui.comments.widget.ThumbState$ThumbUpPressed$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed$a.class */
        public static final class C3879a implements Parcelable.Creator<ThumbUpPressed> {
            @Override // android.os.Parcelable.Creator
            public ThumbUpPressed createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new ThumbUpPressed(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public ThumbUpPressed[] newArray(int i) {
                return new ThumbUpPressed[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThumbUpPressed(int i, String str, int i2, int i3) {
            super(C3857R.C3858drawable.ic_pressed_thumb_up, i, str, i2, i3, null);
            l.e(str, "countForDisplay");
            this.f11780e = i;
            this.f11781f = str;
            this.f11782g = i2;
            this.f11783h = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof ThumbUpPressed)) {
                    return false;
                }
                ThumbUpPressed thumbUpPressed = (ThumbUpPressed) obj;
                return this.f11780e == thumbUpPressed.f11780e && l.a(this.f11781f, thumbUpPressed.f11781f) && this.f11782g == thumbUpPressed.f11782g && this.f11783h == thumbUpPressed.f11783h;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f11780e;
            String str = this.f11781f;
            return (((((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f11782g) * 31) + this.f11783h;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ThumbUpPressed(count=");
            m8728C.append(this.f11780e);
            m8728C.append(", countForDisplay=");
            m8728C.append(this.f11781f);
            m8728C.append(", color=");
            m8728C.append(this.f11782g);
            m8728C.append(", colorIcon=");
            return C22128a.m8697J2(m8728C, this.f11783h, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f11780e);
            parcel.writeString(this.f11781f);
            parcel.writeInt(this.f11782g);
            parcel.writeInt(this.f11783h);
        }
    }

    public ThumbState(int i, int i2, String str, int i3, int i4, f fVar) {
        this.f11764a = i;
        this.f11765b = str;
        this.f11766c = i3;
        this.f11767d = i4;
    }
}
