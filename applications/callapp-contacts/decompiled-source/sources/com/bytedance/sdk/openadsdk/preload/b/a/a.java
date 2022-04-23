package com.bytedance.sdk.openadsdk.preload.b.a;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/a/a.class */
public class a extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f10096a;

    public a(List<Throwable> list) {
        this.f10096a = list;
        if (!(list == null || list.isEmpty())) {
            ArrayList arrayList = new ArrayList();
            for (Throwable th : list) {
                a(th, arrayList);
            }
            setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
        }
    }

    private void a(Throwable th, List<StackTraceElement> list) {
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
