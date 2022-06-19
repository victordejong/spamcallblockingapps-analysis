package p293y2;

import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p018b3.AbstractC0721a;
import p218r2.EnumC4186d;
import p293y2.C4980b;
@AutoValue
/* renamed from: y2.e */
/* loaded from: classes-dex2jar.jar:y2/e.class */
public abstract class AbstractC4985e {

    @AutoValue
    /* renamed from: y2.e$a */
    /* loaded from: classes-dex2jar.jar:y2/e$a.class */
    public static abstract class AbstractC4986a {

        @AutoValue.Builder
        /* renamed from: y2.e$a$a */
        /* loaded from: classes-dex2jar.jar:y2/e$a$a.class */
        public static abstract class AbstractC4987a {
            /* renamed from: a */
            public abstract AbstractC4986a mo159a();

            /* renamed from: b */
            public abstract AbstractC4987a mo158b(long j);

            /* renamed from: c */
            public abstract AbstractC4987a mo157c(long j);
        }

        /* renamed from: a */
        public static AbstractC4987a m163a() {
            C4980b.C4982b c4982b = new C4980b.C4982b();
            Set<EnumC4988b> emptySet = Collections.emptySet();
            Objects.requireNonNull(emptySet, "Null flags");
            c4982b.f15185c = emptySet;
            return c4982b;
        }

        /* renamed from: b */
        public abstract long mo162b();

        /* renamed from: c */
        public abstract Set<EnumC4988b> mo161c();

        /* renamed from: d */
        public abstract long mo160d();
    }

    /* renamed from: y2.e$b */
    /* loaded from: classes-dex2jar.jar:y2/e$b.class */
    public enum EnumC4988b {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: a */
    public abstract AbstractC0721a mo166a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: b */
    public long m165b(EnumC4186d enumC4186d, long j, int i) {
        int i2;
        long mo7430a = mo166a().mo7430a();
        AbstractC4986a abstractC4986a = mo164c().get(enumC4186d);
        ?? mo162b = abstractC4986a.mo162b();
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * ((double) mo162b) * Math.max(1.0d, Math.log(10000.0d) / Math.log((((mo162b > 1L ? 1 : (mo162b == 1L ? 0 : -1)) > 0 ? mo162b : true) == true ? 1L : 0L) * i2))), j - mo7430a), abstractC4986a.mo160d());
    }

    /* renamed from: c */
    public abstract Map<EnumC4186d, AbstractC4986a> mo164c();
}
