package androidx.work.impl.model;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/Preference.class */
public class Preference {
    public String mKey;
    public Long mValue;

    public Preference(String str, long j) {
        this.mKey = str;
        this.mValue = Long.valueOf(j);
    }

    public Preference(String str, boolean z) {
        this(str, z ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        if (!this.mKey.equals(preference.mKey)) {
            return false;
        }
        Long l = this.mValue;
        Long l2 = preference.mValue;
        return l != null ? l.equals(l2) : l2 == null;
    }

    public int hashCode() {
        int hashCode = this.mKey.hashCode();
        Long l = this.mValue;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}
