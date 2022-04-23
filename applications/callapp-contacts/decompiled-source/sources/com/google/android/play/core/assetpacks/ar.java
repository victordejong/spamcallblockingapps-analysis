package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.bl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ar.class */
final /* synthetic */ class ar implements ba {

    /* renamed from: a  reason: collision with root package name */
    private final bb f31127a;

    /* renamed from: b  reason: collision with root package name */
    private final Bundle f31128b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f31129c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(bb bbVar, Bundle bundle) {
        this.f31127a = bbVar;
        this.f31128b = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(bb bbVar, Bundle bundle, byte[] bArr) {
        this.f31127a = bbVar;
        this.f31128b = bundle;
    }

    @Override // com.google.android.play.core.assetpacks.ba
    public final Object a() {
        if (this.f31129c != 0) {
            bb bbVar = this.f31127a;
            Bundle bundle = this.f31128b;
            int i = bundle.getInt("session_id");
            if (i == 0) {
                return Boolean.FALSE;
            }
            Map<Integer, ay> map = bbVar.e;
            Integer valueOf = Integer.valueOf(i);
            if (map.containsKey(valueOf)) {
                ay b2 = bbVar.b(i);
                int i2 = bundle.getInt(bl.a("status", b2.f31149c.f31143a));
                if (bj.a(b2.f31149c.f31145c, i2)) {
                    bb.f31154a.a("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(b2.f31149c.f31145c));
                    ax axVar = b2.f31149c;
                    String str = axVar.f31143a;
                    int i3 = axVar.f31145c;
                    if (i3 == 4) {
                        bbVar.f31156c.a().a(i, str);
                    } else if (i3 == 5) {
                        bbVar.f31156c.a().a(i);
                    } else if (i3 == 6) {
                        bbVar.f31156c.a().a(Arrays.asList(str));
                    }
                } else {
                    b2.f31149c.f31145c = i2;
                    if (bj.b(i2)) {
                        bbVar.a(i);
                        bbVar.f31157d.a(b2.f31149c.f31143a);
                    } else {
                        for (az azVar : b2.f31149c.e) {
                            ArrayList parcelableArrayList = bundle.getParcelableArrayList(bl.a("chunk_intents", b2.f31149c.f31143a, azVar.f31150a));
                            if (parcelableArrayList != null) {
                                for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                                    if (!(parcelableArrayList.get(i4) == null || ((Intent) parcelableArrayList.get(i4)).getData() == null)) {
                                        azVar.f31153d.get(i4).f31142a = true;
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                String a2 = bb.a(bundle);
                long j = bundle.getLong(bl.a("pack_version", a2));
                int i5 = bundle.getInt(bl.a("status", a2));
                long j2 = bundle.getLong(bl.a("total_bytes_to_download", a2));
                ArrayList<String> stringArrayList = bundle.getStringArrayList(bl.a("slice_ids", a2));
                ArrayList arrayList = new ArrayList();
                for (String str2 : bb.b(stringArrayList)) {
                    ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(bl.a("chunk_intents", a2, str2));
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = bb.b(parcelableArrayList2).iterator();
                    while (true) {
                        boolean z = true;
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (((Intent) it2.next()) == null) {
                            z = false;
                        }
                        arrayList2.add(new aw(z));
                    }
                    String string = bundle.getString(bl.a("uncompressed_hash_sha256", a2, str2));
                    long j3 = bundle.getLong(bl.a("uncompressed_size", a2, str2));
                    int i6 = bundle.getInt(bl.a("patch_format", a2, str2), 0);
                    arrayList.add(i6 != 0 ? new az(str2, string, j3, arrayList2, 0, i6) : new az(str2, string, j3, arrayList2, bundle.getInt(bl.a("compression_format", a2, str2), 0), 0));
                }
                bbVar.e.put(Integer.valueOf(i), new ay(i, bundle.getInt("app_version_code"), new ax(a2, j, i5, j2, arrayList)));
            }
            return Boolean.TRUE;
        }
        bb bbVar2 = this.f31127a;
        Bundle bundle2 = this.f31128b;
        int i7 = bundle2.getInt("session_id");
        if (i7 == 0) {
            return Boolean.TRUE;
        }
        Map<Integer, ay> map2 = bbVar2.e;
        Integer valueOf2 = Integer.valueOf(i7);
        if (!map2.containsKey(valueOf2)) {
            return Boolean.TRUE;
        }
        ay ayVar = bbVar2.e.get(valueOf2);
        return ayVar.f31149c.f31145c == 6 ? Boolean.FALSE : Boolean.valueOf(!bj.a(ayVar.f31149c.f31145c, bundle2.getInt(bl.a("status", bb.a(bundle2)))));
    }
}
