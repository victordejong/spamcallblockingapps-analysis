package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dl.class */
final class dl extends cl {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4398b = h.DATA_LAYER_WRITE.toString();
    private static final String c = i.VALUE.toString();
    private static final String d = i.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final c e;

    public dl(c cVar) {
        super(f4398b, c);
        this.e = cVar;
    }

    @Override // com.google.android.gms.tagmanager.cl
    public final void b(Map<String, k.a> map) {
        String a2;
        k.a aVar = map.get(c);
        if (!(aVar == null || aVar == cn.a())) {
            Object e = cn.e(aVar);
            if (e instanceof List) {
                for (Object obj : (List) e) {
                    if (obj instanceof Map) {
                        this.e.a((Map) obj);
                    }
                }
            }
        }
        k.a aVar2 = map.get(d);
        if (!(aVar2 == null || aVar2 == cn.a() || (a2 = cn.a(aVar2)) == cn.e())) {
            this.e.a(a2);
        }
    }
}
