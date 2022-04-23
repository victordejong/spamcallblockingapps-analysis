package com.facebook.internal.b;

import com.facebook.g;
import com.facebook.internal.l;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentManager;", "", "()V", EventConstants.START, "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f19883a = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "enabled", "", "onCompleted"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c$a.class */
    public static final class a implements l.a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f19888a = new a();

        a() {
        }

        @Override // com.facebook.internal.l.a
        public final void a(boolean z) {
            if (z) {
                com.facebook.internal.b.a.a.f19864a.a();
                if (l.a(l.b.CrashShield)) {
                    com.facebook.internal.b.a.a();
                    com.facebook.internal.b.b.a.a();
                }
                if (l.a(l.b.ThreadCheck)) {
                    com.facebook.internal.b.d.a.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "enabled", "", "onCompleted"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c$b.class */
    public static final class b implements l.a {

        /* renamed from: a  reason: collision with root package name */
        public static final b f19890a = new b();

        b() {
        }

        @Override // com.facebook.internal.l.a
        public final void a(boolean z) {
            if (z) {
                com.facebook.internal.b.c.b.a();
            }
        }
    }

    private c() {
    }

    public static final void a() {
        if (g.p()) {
            l.a(l.b.CrashReport, a.f19888a);
            l.a(l.b.ErrorReport, b.f19890a);
        }
    }
}
