package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9137e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p364t.C9873e0;
import p081h.p203i.p325c.p367v.AbstractC9941h;
import p081h.p203i.p325c.p372x.C10006y;
import p081h.p203i.p325c.p372x.C9985g;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {
    @Nullable
    @SuppressLint({"FirebaseUnknownNullness"})
    @VisibleForTesting

    /* renamed from: d */
    public static AbstractC6498g f7767d;

    /* renamed from: a */
    public final Context f7768a;

    /* renamed from: b */
    public final FirebaseInstanceId f7769b;

    /* renamed from: c */
    public final AbstractC9143h<C10006y> f7770c;

    public FirebaseMessaging(C9435c cVar, FirebaseInstanceId firebaseInstanceId, AbstractC9393i iVar, AbstractC9861d dVar, AbstractC9941h hVar, @Nullable AbstractC6498g gVar) {
        f7767d = gVar;
        this.f7769b = firebaseInstanceId;
        this.f7768a = cVar.m15173b();
        this.f7770c = C10006y.m13661a(cVar, firebaseInstanceId, new C9873e0(this.f7768a), iVar, dVar, hVar, this.f7768a, C9985g.m13758c());
        this.f7770c.mo16016a(C9985g.m13757d(), new AbstractC9137e(this) { // from class: h.i.c.x.h

            /* renamed from: a */
            public final FirebaseMessaging f22589a;

            {
                this.f22589a = this;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9137e
            /* renamed from: a */
            public final void mo3758a(Object obj) {
                this.f22589a.m31067a((C10006y) obj);
            }
        });
    }

    @NonNull
    /* renamed from: b */
    public static FirebaseMessaging m31064b() {
        FirebaseMessaging instance;
        synchronized (FirebaseMessaging.class) {
            try {
                instance = getInstance(C9435c.m15163j());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    @Nullable
    /* renamed from: c */
    public static AbstractC6498g m31061c() {
        return f7767d;
    }

    @NonNull
    @Keep
    public static FirebaseMessaging getInstance(@NonNull C9435c cVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = (FirebaseMessaging) cVar.m15176a(FirebaseMessaging.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> m31066a(@NonNull final String str) {
        return this.f7770c.mo16022a(new AbstractC9141g(str) { // from class: h.i.c.x.i

            /* renamed from: a */
            public final String f22590a;

            {
                this.f22590a = str;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9141g
            /* renamed from: a */
            public final AbstractC9143h mo13756a(Object obj) {
                AbstractC9143h c;
                c = ((C10006y) obj).m13650c(this.f22590a);
                return c;
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m31067a(C10006y yVar) {
        if (m31068a()) {
            yVar.m13649d();
        }
    }

    /* renamed from: a */
    public boolean m31068a() {
        return this.f7769b.isFcmAutoInitEnabled();
    }

    @NonNull
    /* renamed from: b */
    public AbstractC9143h<Void> m31063b(@NonNull final String str) {
        return this.f7770c.mo16022a(new AbstractC9141g(str) { // from class: h.i.c.x.j

            /* renamed from: a */
            public final String f22591a;

            {
                this.f22591a = str;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9141g
            /* renamed from: a */
            public final AbstractC9143h mo13756a(Object obj) {
                AbstractC9143h d;
                d = ((C10006y) obj).m13648d(this.f22591a);
                return d;
            }
        });
    }
}
