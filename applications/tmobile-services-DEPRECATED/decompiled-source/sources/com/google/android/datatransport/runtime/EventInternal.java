package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.AutoValue_EventInternal;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/EventInternal.class */
public abstract class EventInternal {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/EventInternal$Builder.class */
    public static abstract class Builder {
        /* renamed from: a */
        public final Builder m15455a(String str, int i) {
            mo15451e().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: b */
        public final Builder m15454b(String str, long j) {
            mo15451e().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: c */
        public final Builder m15453c(String str, String str2) {
            mo15451e().put(str, str2);
            return this;
        }

        /* renamed from: d */
        public abstract EventInternal mo15452d();

        /* renamed from: e */
        protected abstract Map<String, String> mo15451e();

        /* renamed from: f */
        protected abstract Builder mo15450f(Map<String, String> map);

        /* renamed from: g */
        public abstract Builder mo15449g(Integer num);

        /* renamed from: h */
        public abstract Builder mo15448h(EncodedPayload encodedPayload);

        /* renamed from: i */
        public abstract Builder mo15447i(long j);

        /* renamed from: j */
        public abstract Builder mo15446j(String str);

        /* renamed from: k */
        public abstract Builder mo15445k(long j);
    }

    /* renamed from: a */
    public static Builder m15467a() {
        AutoValue_EventInternal.Builder builder = new AutoValue_EventInternal.Builder();
        builder.mo15450f(new HashMap());
        return builder;
    }

    /* renamed from: b */
    public final String m15466b(String str) {
        String str2 = mo15465c().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract Map<String, String> mo15465c();

    @Nullable
    /* renamed from: d */
    public abstract Integer mo15464d();

    /* renamed from: e */
    public abstract EncodedPayload mo15463e();

    /* renamed from: f */
    public abstract long mo15462f();

    /* renamed from: g */
    public final int m15461g(String str) {
        String str2 = mo15465c().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* renamed from: h */
    public final long m15460h(String str) {
        String str2 = mo15465c().get(str);
        return str2 == null ? 0L : Long.valueOf(str2).longValue();
    }

    /* renamed from: i */
    public final Map<String, String> m15459i() {
        return Collections.unmodifiableMap(mo15465c());
    }

    /* renamed from: j */
    public abstract String mo15458j();

    /* renamed from: k */
    public abstract long mo15457k();

    /* renamed from: l */
    public Builder m15456l() {
        AutoValue_EventInternal.Builder builder = new AutoValue_EventInternal.Builder();
        builder.mo15446j(mo15458j());
        builder.mo15449g(mo15464d());
        builder.mo15448h(mo15463e());
        builder.mo15447i(mo15462f());
        builder.mo15445k(mo15457k());
        builder.mo15450f(new HashMap(mo15465c()));
        return builder;
    }
}
