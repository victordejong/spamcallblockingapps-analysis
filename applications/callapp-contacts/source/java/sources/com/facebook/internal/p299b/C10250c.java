package com.facebook.internal.p299b;

import com.facebook.C10181g;
import com.facebook.internal.C10291l;
import com.facebook.internal.p299b.p300a.C10241a;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.internal.p299b.p302c.C10255b;
import com.facebook.internal.p299b.p303d.C10262a;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m4298d2 = {"Lcom/facebook/internal/instrument/InstrumentManager;", "", "()V", EventConstants.START, "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c.class */
public final class C10250c {

    /* renamed from: a */
    public static final C10250c f33755a = new C10250c();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "enabled", "", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c$a.class */
    public static final class C10251a implements C10291l.AbstractC10292a {

        /* renamed from: a */
        public static final C10251a f33756a = new C10251a();

        C10251a() {
        }

        @Override // com.facebook.internal.C10291l.AbstractC10292a
        /* renamed from: a */
        public final void mo23045a(boolean z) {
            if (z) {
                C10241a.f33738a.m23119a();
                if (C10291l.m23051a(C10291l.EnumC10293b.CrashShield)) {
                    C10239a.m23128a();
                    C10249a.m23110a();
                }
                if (!C10291l.m23051a(C10291l.EnumC10293b.ThreadCheck)) {
                    return;
                }
                C10262a.m23089a();
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "enabled", "", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c$b.class */
    public static final class C10252b implements C10291l.AbstractC10292a {

        /* renamed from: a */
        public static final C10252b f33757a = new C10252b();

        C10252b() {
        }

        @Override // com.facebook.internal.C10291l.AbstractC10292a
        /* renamed from: a */
        public final void mo23045a(boolean z) {
            if (z) {
                C10255b.m23101a();
            }
        }
    }

    private C10250c() {
    }

    /* renamed from: a */
    public static final void m23104a() {
        if (!C10181g.m23283p()) {
            return;
        }
        C10291l.m23050a(C10291l.EnumC10293b.CrashReport, C10251a.f33756a);
        C10291l.m23050a(C10291l.EnumC10293b.ErrorReport, C10252b.f33757a);
    }
}
