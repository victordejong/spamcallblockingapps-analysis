package io.realm.internal.sync;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/SubscriptionAction.class */
public class SubscriptionAction {

    /* renamed from: d */
    public static final SubscriptionAction f20247d = new SubscriptionAction(null, 0, false);

    /* renamed from: e */
    public static final SubscriptionAction f20248e = new SubscriptionAction("", Long.MAX_VALUE, false);

    /* renamed from: a */
    private final String f20249a;

    /* renamed from: b */
    private final long f20250b;

    /* renamed from: c */
    private final boolean f20251c;

    public SubscriptionAction(String str, long j, boolean z) {
        this.f20249a = str;
        this.f20250b = j;
        this.f20251c = z;
    }

    /* renamed from: a */
    public String m2541a() {
        return this.f20249a;
    }

    /* renamed from: b */
    public long m2540b() {
        return this.f20250b;
    }

    /* renamed from: c */
    public boolean m2539c() {
        return this.f20251c;
    }

    /* renamed from: d */
    public boolean m2538d() {
        return this.f20249a != null;
    }
}
