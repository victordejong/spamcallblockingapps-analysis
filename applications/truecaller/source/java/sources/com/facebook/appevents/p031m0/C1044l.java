package com.facebook.appevents.p031m0;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b��\u0018�� &2\u00020\u0001:\u0001&B%\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$R \u0010\b\u001a\u0004\u0018\u00010\u00038FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\fR\u0011\u0010\u0019\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u001c\u0010\nR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/facebook/appevents/internal/SessionInfo;", "", "sessionStartTime", "", "sessionLastEventTime", "sessionId", "Ljava/util/UUID;", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V", "diskRestoreTime", "getDiskRestoreTime", "()Ljava/lang/Long;", "setDiskRestoreTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "<set-?>", "", "interruptionCount", "getInterruptionCount", "()I", "getSessionId", "()Ljava/util/UUID;", "setSessionId", "(Ljava/util/UUID;)V", "getSessionLastEventTime", "setSessionLastEventTime", "sessionLength", "getSessionLength", "()J", "getSessionStartTime", "sourceApplicationInfo", "Lcom/facebook/appevents/internal/SourceApplicationInfo;", "getSourceApplicationInfo", "()Lcom/facebook/appevents/internal/SourceApplicationInfo;", "setSourceApplicationInfo", "(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V", "incrementInterruptionCount", "", "writeSessionToDisk", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/l.class */
public final class C1044l {

    /* renamed from: a */
    public final Long f2878a;

    /* renamed from: b */
    public Long f2879b;

    /* renamed from: c */
    public UUID f2880c;

    /* renamed from: d */
    public int f2881d;

    /* renamed from: e */
    public Long f2882e;

    /* renamed from: f */
    public C1046n f2883f;

    public C1044l(Long l, Long l2, UUID uuid, int i) {
        UUID uuid2;
        if ((i & 4) != 0) {
            uuid2 = UUID.randomUUID();
            l.d(uuid2, "randomUUID()");
        } else {
            uuid2 = null;
        }
        l.e(uuid2, "sessionId");
        this.f2878a = l;
        this.f2879b = l2;
        this.f2880c = uuid2;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: a */
    public final void m41859a() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).edit();
        Long l = this.f2878a;
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", l == null ? (char) 0 : l.longValue());
        Long l2 = this.f2879b;
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", l2 == null ? (char) 0 : l2.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f2881d);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f2880c.toString());
        edit.apply();
        C1046n c1046n = this.f2883f;
        if (c1046n == null || c1046n == null) {
            return;
        }
        SharedPreferences.Editor edit2 = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).edit();
        edit2.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", c1046n.f2887a);
        edit2.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", c1046n.f2888b);
        edit2.apply();
    }
}
