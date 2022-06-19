package com.appsflyer.internal;

import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.util.ArrayList;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.l */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/l.class */
public final class C0824l {
    public final String[] valueOf;

    /* renamed from: com.appsflyer.internal.l$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/l$c.class */
    public interface AbstractC0826c {
        void AFKeystoreWrapper(String str);

        void values(@Nullable String str, @Nullable String str2, @Nullable String str3);
    }

    public C0824l() {
    }

    public C0824l(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            this.valueOf = null;
            return;
        }
        Pattern compile = Pattern.compile("[\\w]{1,45}");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str == null || !compile.matcher(str).matches()) {
                AFLogger.values("Invalid partner name: ".concat(String.valueOf(str)));
            } else {
                arrayList.add(str.toLowerCase());
            }
        }
        if (arrayList.contains("all")) {
            this.valueOf = new String[]{"all"};
        } else if (!arrayList.isEmpty()) {
            this.valueOf = (String[]) arrayList.toArray(new String[0]);
        } else {
            this.valueOf = null;
        }
    }
}
