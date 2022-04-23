package hani.momanii.supernova_emoji_library.emoji;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/emoji/Emojicon.class */
public class Emojicon implements Parcelable {
    public static final Parcelable.Creator<Emojicon> CREATOR = new C3158a();

    /* renamed from: b */
    private int f13020b;

    /* renamed from: c */
    private char f13021c;

    /* renamed from: d */
    private String f13022d;

    /* renamed from: hani.momanii.supernova_emoji_library.emoji.Emojicon$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/emoji/Emojicon$a.class */
    static final class C3158a implements Parcelable.Creator<Emojicon> {
        C3158a() {
        }

        /* renamed from: a */
        public Emojicon createFromParcel(Parcel parcel) {
            return new Emojicon(parcel);
        }

        /* renamed from: b */
        public Emojicon[] newArray(int i) {
            return new Emojicon[i];
        }
    }

    private Emojicon() {
    }

    public Emojicon(Parcel parcel) {
        this.f13020b = parcel.readInt();
        this.f13021c = (char) parcel.readInt();
        this.f13022d = parcel.readString();
    }

    public Emojicon(String str) {
        this.f13022d = str;
    }

    /* renamed from: a */
    public static Emojicon m12a(char c) {
        Emojicon emojicon = new Emojicon();
        emojicon.f13022d = Character.toString(c);
        return emojicon;
    }

    /* renamed from: b */
    public static Emojicon m11b(String str) {
        Emojicon emojicon = new Emojicon();
        emojicon.f13022d = str;
        return emojicon;
    }

    /* renamed from: c */
    public static Emojicon m10c(int i) {
        Emojicon emojicon = new Emojicon();
        emojicon.f13022d = m8e(i);
        return emojicon;
    }

    /* renamed from: e */
    public static final String m8e(int i) {
        return Character.charCount(i) == 1 ? String.valueOf(i) : new String(Character.toChars(i));
    }

    /* renamed from: d */
    public String m9d() {
        return this.f13022d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Emojicon) && this.f13022d.equals(((Emojicon) obj).f13022d);
    }

    public int hashCode() {
        return this.f13022d.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13020b);
        parcel.writeInt(this.f13021c);
        parcel.writeString(this.f13022d);
    }
}
