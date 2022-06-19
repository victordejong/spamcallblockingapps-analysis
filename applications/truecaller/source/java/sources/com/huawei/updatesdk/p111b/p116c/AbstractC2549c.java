package com.huawei.updatesdk.p111b.p116c;

import android.os.Build;
import android.text.TextUtils;
import java.util.List;
/* renamed from: com.huawei.updatesdk.b.c.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/c/c.class */
public abstract class AbstractC2549c {

    /* renamed from: a */
    private String f8253a;

    /* renamed from: b */
    private String f8254b;

    /* renamed from: a */
    public abstract String m36670a();

    /* renamed from: b */
    public abstract String m36669b();

    /* renamed from: c */
    public abstract String m36668c();

    /* renamed from: d */
    public String m36667d() {
        if (!TextUtils.isEmpty(this.f8254b)) {
            return this.f8254b;
        }
        String m36668c = m36668c();
        this.f8254b = m36668c;
        if (TextUtils.isEmpty(m36668c)) {
            this.f8254b = Build.MANUFACTURER;
        }
        return this.f8254b;
    }

    /* renamed from: e */
    public String m36666e() {
        if (!TextUtils.isEmpty(this.f8253a)) {
            return this.f8253a;
        }
        String m36670a = m36670a();
        this.f8253a = m36670a;
        if (TextUtils.isEmpty(m36670a)) {
            this.f8253a = Build.MODEL;
        }
        return this.f8253a;
    }

    /* renamed from: f */
    public abstract List<String> m36665f();
}
