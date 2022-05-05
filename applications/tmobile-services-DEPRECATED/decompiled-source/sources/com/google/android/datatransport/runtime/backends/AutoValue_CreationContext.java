package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.datatransport.runtime.time.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_CreationContext.class */
final class AutoValue_CreationContext extends CreationContext {

    /* renamed from: a */
    private final Context f6667a;

    /* renamed from: b */
    private final Clock f6668b;

    /* renamed from: c */
    private final Clock f6669c;

    /* renamed from: d */
    private final String f6670d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_CreationContext(Context context, Clock clock, Clock clock2, String str) {
        if (context != null) {
            this.f6667a = context;
            if (clock != null) {
                this.f6668b = clock;
                if (clock2 != null) {
                    this.f6669c = clock2;
                    if (str != null) {
                        this.f6670d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    /* renamed from: b */
    public Context mo15391b() {
        return this.f6667a;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    @NonNull
    /* renamed from: c */
    public String mo15390c() {
        return this.f6670d;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    /* renamed from: d */
    public Clock mo15389d() {
        return this.f6669c;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    /* renamed from: e */
    public Clock mo15388e() {
        return this.f6668b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CreationContext)) {
            return false;
        }
        CreationContext creationContext = (CreationContext) obj;
        if (!this.f6667a.equals(creationContext.mo15391b()) || !this.f6668b.equals(creationContext.mo15388e()) || !this.f6669c.equals(creationContext.mo15389d()) || !this.f6670d.equals(creationContext.mo15390c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f6667a.hashCode() ^ 1000003) * 1000003) ^ this.f6668b.hashCode()) * 1000003) ^ this.f6669c.hashCode()) * 1000003) ^ this.f6670d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f6667a + ", wallClock=" + this.f6668b + ", monotonicClock=" + this.f6669c + ", backendName=" + this.f6670d + "}";
    }
}
