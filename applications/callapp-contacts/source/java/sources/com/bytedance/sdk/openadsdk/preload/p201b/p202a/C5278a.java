package com.bytedance.sdk.openadsdk.preload.p201b.p202a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/a/a.class */
public class C5278a extends Exception {

    /* renamed from: a */
    private List<Throwable> f18706a;

    public C5278a(List<Throwable> list) {
        this.f18706a = list;
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Throwable th : list) {
            m32674a(th, arrayList);
        }
        setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }

    /* renamed from: a */
    private void m32674a(Throwable th, List<StackTraceElement> list) {
        while (th != null) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                StackTraceElement stackTraceElement = stackTrace[i];
                if (i == 0) {
                    String message = th.getMessage();
                    StringBuilder sb = new StringBuilder("\b\b\b\nCaused by:");
                    String str = message;
                    if (message == null) {
                        str = "";
                    }
                    sb.append(str);
                    sb.append("\n\t");
                    sb.append(stackTraceElement.getClassName());
                    list.add(new StackTraceElement(sb.toString(), stackTraceElement.getMethodName(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber()));
                } else {
                    list.add(stackTraceElement);
                }
            }
            th = th.getCause();
        }
    }
}
