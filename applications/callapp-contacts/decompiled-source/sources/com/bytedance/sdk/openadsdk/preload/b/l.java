package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.preload.b.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l.class */
public abstract class l<IN, OUT> extends d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private Map<String, a> f10119d;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        List<h> f10120a = new ArrayList();

        public final a a(h hVar) {
            this.f10120a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.f10120a.addAll(list);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, a> f10121a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private com.bytedance.sdk.openadsdk.preload.b.b.a f10122b;

        public final h a(Class<? extends l> cls) {
            return h.a.a().a(cls).a(this.f10121a).a(this.f10122b).b();
        }

        public final a a(String str) {
            if (!this.f10121a.containsKey(str)) {
                a aVar = new a();
                this.f10121a.put(str, aVar);
                return aVar;
            }
            throw new IllegalArgumentException("duplicated branch name");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, a> a() {
        return this.f10119d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        if (objArr == null || objArr.length != 1 || objArr[0] == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.f10119d = (Map) objArr[0];
        } catch (ClassCastException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f10107a == f.class;
    }
}
