package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.C15048bl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.ar */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ar.class */
final /* synthetic */ class C14917ar implements AbstractC14927ba {

    /* renamed from: a */
    private final C14928bb f54464a;

    /* renamed from: b */
    private final Bundle f54465b;

    /* renamed from: c */
    private final /* synthetic */ int f54466c = 0;

    public C14917ar(C14928bb c14928bb, Bundle bundle) {
        this.f54464a = c14928bb;
        this.f54465b = bundle;
    }

    public C14917ar(C14928bb c14928bb, Bundle bundle, byte[] bArr) {
        this.f54464a = c14928bb;
        this.f54465b = bundle;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14927ba
    /* renamed from: a */
    public final Object mo9764a() {
        Bundle bundle;
        C14924ay c14924ay;
        if (this.f54466c == 0) {
            C14928bb c14928bb = this.f54464a;
            int i = this.f54465b.getInt("session_id");
            if (i == 0) {
                return Boolean.TRUE;
            }
            Map<Integer, C14924ay> map = c14928bb.f54498e;
            Integer valueOf = Integer.valueOf(i);
            if (!map.containsKey(valueOf)) {
                return Boolean.TRUE;
            }
            return c14928bb.f54498e.get(valueOf).f54487c.f54482c == 6 ? Boolean.FALSE : Boolean.valueOf(!C14936bj.m9748a(c14924ay.f54487c.f54482c, bundle.getInt(C15048bl.m9565a("status", C14928bb.m9762a(bundle)))));
        }
        C14928bb c14928bb2 = this.f54464a;
        Bundle bundle2 = this.f54465b;
        int i2 = bundle2.getInt("session_id");
        if (i2 == 0) {
            return Boolean.FALSE;
        }
        Map<Integer, C14924ay> map2 = c14928bb2.f54498e;
        Integer valueOf2 = Integer.valueOf(i2);
        if (map2.containsKey(valueOf2)) {
            C14924ay m9759b = c14928bb2.m9759b(i2);
            int i3 = bundle2.getInt(C15048bl.m9565a("status", m9759b.f54487c.f54480a));
            if (C14936bj.m9748a(m9759b.f54487c.f54482c, i3)) {
                C14928bb.f54494a.m9511a("Found stale update for session %s with status %d.", valueOf2, Integer.valueOf(m9759b.f54487c.f54482c));
                C14923ax c14923ax = m9759b.f54487c;
                String str = c14923ax.f54480a;
                int i4 = c14923ax.f54482c;
                if (i4 == 4) {
                    c14928bb2.f54496c.mo9335a().mo9694a(i2, str);
                } else if (i4 == 5) {
                    c14928bb2.f54496c.mo9335a().mo9695a(i2);
                } else if (i4 == 6) {
                    c14928bb2.f54496c.mo9335a().mo9687a(Arrays.asList(str));
                }
            } else {
                m9759b.f54487c.f54482c = i3;
                if (C14936bj.m9744b(i3)) {
                    c14928bb2.m9763a(i2);
                    c14928bb2.f54497d.m9778a(m9759b.f54487c.f54480a);
                } else {
                    for (C14925az c14925az : m9759b.f54487c.f54484e) {
                        ArrayList parcelableArrayList = bundle2.getParcelableArrayList(C15048bl.m9564a("chunk_intents", m9759b.f54487c.f54480a, c14925az.f54488a));
                        if (parcelableArrayList != null) {
                            for (int i5 = 0; i5 < parcelableArrayList.size(); i5++) {
                                if (parcelableArrayList.get(i5) != null && ((Intent) parcelableArrayList.get(i5)).getData() != null) {
                                    c14925az.f54491d.get(i5).f54479a = true;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            String m9762a = C14928bb.m9762a(bundle2);
            long j = bundle2.getLong(C15048bl.m9565a("pack_version", m9762a));
            int i6 = bundle2.getInt(C15048bl.m9565a("status", m9762a));
            long j2 = bundle2.getLong(C15048bl.m9565a("total_bytes_to_download", m9762a));
            ArrayList<String> stringArrayList = bundle2.getStringArrayList(C15048bl.m9565a("slice_ids", m9762a));
            ArrayList arrayList = new ArrayList();
            for (String str2 : C14928bb.m9758b(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle2.getParcelableArrayList(C15048bl.m9564a("chunk_intents", m9762a, str2));
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = C14928bb.m9758b(parcelableArrayList2).iterator();
                while (true) {
                    boolean z = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (((Intent) it2.next()) == null) {
                        z = false;
                    }
                    arrayList2.add(new C14922aw(z));
                }
                String string = bundle2.getString(C15048bl.m9564a("uncompressed_hash_sha256", m9762a, str2));
                long j3 = bundle2.getLong(C15048bl.m9564a("uncompressed_size", m9762a, str2));
                int i7 = bundle2.getInt(C15048bl.m9564a("patch_format", m9762a, str2), 0);
                arrayList.add(i7 != 0 ? new C14925az(str2, string, j3, arrayList2, 0, i7) : new C14925az(str2, string, j3, arrayList2, bundle2.getInt(C15048bl.m9564a("compression_format", m9762a, str2), 0), 0));
            }
            c14928bb2.f54498e.put(Integer.valueOf(i2), new C14924ay(i2, bundle2.getInt("app_version_code"), new C14923ax(m9762a, j, i6, j2, arrayList)));
        }
        return Boolean.TRUE;
    }
}
