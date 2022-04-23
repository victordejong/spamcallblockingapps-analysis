package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.abt.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/component/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, b> f32178a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Context f32179b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.analytics.connector.a f32180c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Context context, com.google.firebase.analytics.connector.a aVar) {
        this.f32179b = context;
        this.f32180c = aVar;
    }

    public final b a(String str) {
        b bVar;
        synchronized (this) {
            if (!this.f32178a.containsKey(str)) {
                this.f32178a.put(str, new b(this.f32179b, this.f32180c, str));
            }
            bVar = this.f32178a.get(str);
        }
        return bVar;
    }
}
