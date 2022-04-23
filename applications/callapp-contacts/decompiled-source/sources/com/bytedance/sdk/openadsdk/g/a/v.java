package com.bytedance.sdk.openadsdk.g.a;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/v.class */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private final Collection<String> f9571a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, u> f9572b;

    /* renamed from: c  reason: collision with root package name */
    private final k f9573c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<a> f9574d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/v$a.class */
    public interface a {
    }

    private u a(String str, JSONObject jSONObject) {
        u uVar;
        u uVar2 = this.f9572b.get(str);
        if (uVar2 == null) {
            u uVar3 = new u(str, this.f9573c.c(), this.f9573c.a(), this.f9573c.b(), jSONObject);
            this.f9572b.put(str, uVar3);
            uVar = uVar3;
        } else {
            uVar = uVar2;
            if (jSONObject != null) {
                uVar2.a(jSONObject);
                uVar = uVar2;
            }
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u a(String str) {
        if (this.f9571a.contains(str) || TextUtils.equals(str, "host")) {
            return a(str, null);
        }
        throw new IllegalArgumentException("Namespace: " + str + " not registered.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f9574d.add(aVar);
    }
}
