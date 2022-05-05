package kotlin;

import com.apptentive.android.sdk.Apptentive;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0007\u0018�� \u001f2\u00020\u0001:\u0001\u001fB\u0019\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u001c\u0010\u001dB\u001f\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0004\b\u001c\u0010\u001eJ\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0002\u001a\u0004\u0018\u00010\u0006H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0015\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0019\u0010\f\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\u000bR\u0019\u0010\r\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0019\u0010\u000bR\u0019\u0010\u0010\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0017\u001a\u0004\b\u001a\u0010\u000bR\u0016\u0010\u001b\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017¨\u0006 "}, d2 = {"Lkotlin/KotlinVersion;", "Ljava/lang/Comparable;", "other", "", "compareTo", "(Lkotlin/KotlinVersion;)I", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "major", "minor", "isAtLeast", "(II)Z", "patch", "(III)Z", "", "toString", "()Ljava/lang/String;", "versionOf", "(III)I", "I", "getMajor", "getMinor", "getPatch", Apptentive.Version.TYPE, "<init>", "(II)V", "(III)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/KotlinVersion.class */
public final class KotlinVersion implements Comparable<KotlinVersion> {
    @JvmField
    @NotNull

    /* renamed from: j */
    public static final KotlinVersion f20410j = new KotlinVersion(1, 4, 10);

    /* renamed from: f */
    private final int f20411f;

    /* renamed from: g */
    private final int f20412g;

    /* renamed from: h */
    private final int f20413h;

    /* renamed from: i */
    private final int f20414i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/KotlinVersion$Companion;", "Lkotlin/KotlinVersion;", "CURRENT", "Lkotlin/KotlinVersion;", "", "MAX_COMPONENT_VALUE", "I", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/KotlinVersion$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    public KotlinVersion(int i, int i2, int i3) {
        this.f20412g = i;
        this.f20413h = i2;
        this.f20414i = i3;
        this.f20411f = m2489b(i, i2, i3);
    }

    /* renamed from: b */
    private final int m2489b(int i, int i2, int i3) {
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    /* renamed from: a */
    public int compareTo(@NotNull KotlinVersion other) {
        Intrinsics.m1830e(other, "other");
        return this.f20411f - other.f20411f;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof KotlinVersion)) {
            obj2 = null;
        }
        KotlinVersion kotlinVersion = (KotlinVersion) obj2;
        if (kotlinVersion == null) {
            return false;
        }
        if (this.f20411f != kotlinVersion.f20411f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f20411f;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20412g);
        sb.append('.');
        sb.append(this.f20413h);
        sb.append('.');
        sb.append(this.f20414i);
        return sb.toString();
    }
}
