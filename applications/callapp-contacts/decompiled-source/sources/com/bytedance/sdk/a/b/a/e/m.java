package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.e;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/m.class */
public interface m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f8020a = new m() { // from class: com.bytedance.sdk.a.b.a.e.m.1
        @Override // com.bytedance.sdk.a.b.a.e.m
        public final void a(int i, b bVar) {
        }

        @Override // com.bytedance.sdk.a.b.a.e.m
        public final boolean a(int i, e eVar, int i2, boolean z) throws IOException {
            eVar.h(i2);
            return true;
        }

        @Override // com.bytedance.sdk.a.b.a.e.m
        public final boolean a(int i, List<c> list) {
            return true;
        }

        @Override // com.bytedance.sdk.a.b.a.e.m
        public final boolean a(int i, List<c> list, boolean z) {
            return true;
        }
    };

    void a(int i, b bVar);

    boolean a(int i, e eVar, int i2, boolean z) throws IOException;

    boolean a(int i, List<c> list);

    boolean a(int i, List<c> list, boolean z);
}
