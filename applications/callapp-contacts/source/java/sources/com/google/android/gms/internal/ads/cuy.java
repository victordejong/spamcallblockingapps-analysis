package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.aut;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuy.class */
public final class cuy {

    /* renamed from: d */
    private static volatile aut.C12193a.EnumC12197c f46602d = aut.C12193a.EnumC12197c.UNKNOWN;

    /* renamed from: a */
    private final Context f46603a;

    /* renamed from: b */
    private final Executor f46604b;

    /* renamed from: c */
    private final AbstractC14185h<ehq> f46605c;

    private cuy(Context context, Executor executor, AbstractC14185h<ehq> abstractC14185h) {
        this.f46603a = context;
        this.f46604b = executor;
        this.f46605c = abstractC14185h;
    }

    /* renamed from: a */
    public static cuy m17187a(Context context, Executor executor) {
        return new cuy(context, executor, C14188k.m11462a(executor, new Callable(context) { // from class: com.google.android.gms.internal.ads.cva

            /* renamed from: a */
            private final Context f46610a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46610a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return cuy.m17188a(this.f46610a);
            }
        }));
    }

    /* renamed from: a */
    public static final /* synthetic */ ehq m17188a(Context context) throws Exception {
        return new ehq(context, "GLAS", null);
    }

    /* renamed from: a */
    private final AbstractC14185h<Boolean> m17191a(int i, long j, Exception exc, String str, String str2) {
        aut.C12193a.C12196b m18392a = aut.C12193a.m18402a().m18390a(this.f46603a.getPackageName()).m18392a(j);
        m18392a.m18391a(f46602d);
        if (exc != null) {
            m18392a.m18389b(cyq.m17042c(exc)).m18388c(exc.getClass().getName());
        }
        if (str2 != null) {
            m18392a.m18387d(str2);
        }
        if (str != null) {
            m18392a.m18386e(str);
        }
        return this.f46605c.mo11484a(this.f46604b, new AbstractC14179b(m18392a, i) { // from class: com.google.android.gms.internal.ads.cuz

            /* renamed from: a */
            private final aut.C12193a.C12196b f46606a;

            /* renamed from: b */
            private final int f46607b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46606a = m18392a;
                this.f46607b = i;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h) {
                return cuy.m17186a(this.f46606a, this.f46607b, abstractC14185h);
            }
        });
    }

    /* renamed from: a */
    public static final /* synthetic */ Boolean m17186a(aut.C12193a.C12196b c12196b, int i, AbstractC14185h abstractC14185h) throws Exception {
        if (abstractC14185h.mo11478b()) {
            ehu m15042a = ((ehq) abstractC14185h.mo11475d()).m15042a(c12196b.mo16259f().mo16256g());
            m15042a.f49044b = i;
            m15042a.m14887a();
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* renamed from: a */
    public static void m17185a(aut.C12193a.EnumC12197c enumC12197c) {
        f46602d = enumC12197c;
    }

    /* renamed from: a */
    public final AbstractC14185h<Boolean> m17193a(int i, long j) {
        return m17191a(i, j, null, null, null);
    }

    /* renamed from: a */
    public final AbstractC14185h<Boolean> m17192a(int i, long j, Exception exc) {
        return m17191a(i, j, exc, null, null);
    }

    /* renamed from: a */
    public final AbstractC14185h<Boolean> m17190a(int i, long j, String str) {
        return m17191a(i, j, null, str, null);
    }

    /* renamed from: a */
    public final AbstractC14185h<Boolean> m17189a(int i, String str) {
        return m17191a(i, 0L, null, null, str);
    }

    /* renamed from: b */
    public final AbstractC14185h<Boolean> m17184b(int i, long j, String str) {
        return m17191a(i, j, null, null, str);
    }
}
