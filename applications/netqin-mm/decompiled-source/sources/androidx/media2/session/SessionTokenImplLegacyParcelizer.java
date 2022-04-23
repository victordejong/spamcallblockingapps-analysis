package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
import p012b.p076s.p116d.C1802n;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacyParcelizer.class */
public final class SessionTokenImplLegacyParcelizer {
    public static C1802n read(VersionedParcel versionedParcel) {
        C1802n nVar = new C1802n();
        nVar.f7245b = versionedParcel.m36998a(nVar.f7245b, 1);
        nVar.f7246c = versionedParcel.m37000a(nVar.f7246c, 2);
        nVar.f7247d = versionedParcel.m37000a(nVar.f7247d, 3);
        nVar.f7248e = (ComponentName) versionedParcel.m36996a((VersionedParcel) nVar.f7248e, 4);
        nVar.f7249f = versionedParcel.m36987a(nVar.f7249f, 5);
        nVar.f7250g = versionedParcel.m36998a(nVar.f7250g, 6);
        nVar.mo32075f();
        return nVar;
    }

    public static void write(C1802n nVar, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        nVar.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36975b(nVar.f7245b, 1);
        versionedParcel.m36977b(nVar.f7246c, 2);
        versionedParcel.m36977b(nVar.f7247d, 3);
        versionedParcel.m36973b(nVar.f7248e, 4);
        versionedParcel.m36968b(nVar.f7249f, 5);
        versionedParcel.m36975b(nVar.f7250g, 6);
    }
}
