package p250u2;

import android.util.Base64;
import com.google.auto.value.AutoValue;
import p218r2.EnumC4186d;
import p250u2.C4456b;
@AutoValue
/* renamed from: u2.i */
/* loaded from: classes-dex2jar.jar:u2/i.class */
public abstract class AbstractC4469i {

    @AutoValue.Builder
    /* renamed from: u2.i$a */
    /* loaded from: classes-dex2jar.jar:u2/i$a.class */
    public static abstract class AbstractC4470a {
        /* renamed from: a */
        public abstract AbstractC4469i mo889a();

        /* renamed from: b */
        public abstract AbstractC4470a mo888b(String str);

        /* renamed from: c */
        public abstract AbstractC4470a mo887c(EnumC4186d enumC4186d);
    }

    /* renamed from: a */
    public static AbstractC4470a m893a() {
        C4456b.C4458b c4458b = new C4456b.C4458b();
        c4458b.mo887c(EnumC4186d.DEFAULT);
        return c4458b;
    }

    /* renamed from: b */
    public abstract String mo892b();

    /* renamed from: c */
    public abstract byte[] mo891c();

    /* renamed from: d */
    public abstract EnumC4186d mo890d();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo892b(), mo890d(), mo891c() == null ? "" : Base64.encodeToString(mo891c(), 2));
    }
}
