package com.google.android.gms.clearcut;

import android.os.Parcel;
import com.google.android.gms.clearcut.a;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.z;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/LogEventParcelable.class */
public class LogEventParcelable extends AbstractSafeParcelable {
    public static final c CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final int f3918a;

    /* renamed from: b  reason: collision with root package name */
    public PlayLoggerContext f3919b;
    public byte[] c;
    public int[] d;
    public final z.d e = null;
    public final a.AbstractC0109a f = null;
    public final a.AbstractC0109a g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LogEventParcelable(int i, PlayLoggerContext playLoggerContext, byte[] bArr, int[] iArr) {
        this.f3918a = i;
        this.f3919b = playLoggerContext;
        this.c = bArr;
        this.d = iArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj instanceof LogEventParcelable) {
                LogEventParcelable logEventParcelable = (LogEventParcelable) obj;
                if (this.f3918a != logEventParcelable.f3918a || !ae.a(this.f3919b, logEventParcelable.f3919b) || !Arrays.equals(this.c, logEventParcelable.c) || !Arrays.equals(this.d, logEventParcelable.d) || !ae.a(this.e, logEventParcelable.e) || !ae.a(this.f, logEventParcelable.f) || !ae.a(this.g, logEventParcelable.g)) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3918a), this.f3919b, this.c, this.d, this.e, this.f, this.g});
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [int[], java.lang.Object[]] */
    public String toString() {
        String sb = null;
        StringBuilder append = new StringBuilder("LogEventParcelable[").append(this.f3918a).append(", ").append(this.f3919b).append(", LogEventBytes: ").append(this.c == null ? null : new String(this.c)).append(", TestCodes: ");
        if (this.d != null) {
            sb = new ac(", ").a(new StringBuilder(), Arrays.asList(new int[]{this.d})).toString();
        }
        return append.append(sb).append(", LogEvent: ").append(this.e).append(", ExtensionProducer: ").append(this.f).append(", VeProducer: ").append(this.g).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
