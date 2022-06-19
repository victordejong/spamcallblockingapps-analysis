package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import java.lang.reflect.Field;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: com.freshchat.consumer.sdk.j.aq */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/aq.class */
public class C1623aq {
    /* renamed from: a */
    public static int m40242a(Context context, int i, int i2) {
        int i3;
        try {
            i3 = C1630aw.m40193fa() ? context.getResources().getColor(i, context.getTheme()) : context.getResources().getColor(i);
        } catch (Resources.NotFoundException e) {
            i3 = i2;
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        if (r14 == null) goto L32;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m40241a(android.content.Context r7, int r8, int r9, boolean r10) {
        /*
            r0 = -1
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r8
            if (r0 != 0) goto L20
            r0 = r7
            android.content.res.Resources$Theme r0 = r0.getTheme()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r1 = 1
            int[] r1 = new int[r1]     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r14 = r0
            goto L2e
        L20:
            r0 = r7
            r1 = r8
            r2 = 1
            int[] r2 = new int[r2]     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r3 = r2
            r4 = 0
            r5 = r9
            r3[r4] = r5     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r14 = r0
        L2e:
            r0 = r14
            if (r0 == 0) goto L59
            r0 = r14
            r13 = r0
            r0 = r14
            r12 = r0
            r0 = r14
            int r0 = r0.getIndexCount()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            if (r0 != 0) goto L46
            goto L59
        L46:
            r0 = r14
            r13 = r0
            r0 = r14
            r12 = r0
            r0 = r14
            r1 = 0
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r8 = r0
            goto L70
        L59:
            r0 = r11
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L70
            r0 = r14
            r13 = r0
            r0 = r14
            r12 = r0
            r0 = r7
            r1 = r9
            m40237k(r0, r1)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L8e
            r0 = r11
            r8 = r0
        L70:
            r0 = r8
            r9 = r0
            r0 = r14
            if (r0 == 0) goto La1
        L77:
            r0 = r14
            r0.recycle()
            r0 = r8
            r9 = r0
            goto La1
        L81:
            r7 = move-exception
            r0 = r13
            if (r0 == 0) goto L8c
            r0 = r13
            r0.recycle()
        L8c:
            r0 = r7
            throw r0
        L8e:
            r7 = move-exception
            r0 = r11
            r9 = r0
            r0 = r12
            if (r0 == 0) goto La1
            r0 = r11
            r8 = r0
            r0 = r12
            r14 = r0
            goto L77
        La1:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1623aq.m40241a(android.content.Context, int, int, boolean):int");
    }

    /* renamed from: a */
    public static int m40240a(Context context, int i, boolean z) {
        return m40241a(context, 0, i, z);
    }

    /* renamed from: a */
    public static TypedValue m40239a(Resources resources, int i) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        return typedValue;
    }

    public static Drawable getDrawable(Context context, int i) {
        if (context == null) {
            return null;
        }
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i);
        if (m1789b != null && C1630aw.m40198eY()) {
            m1789b.setAutoMirrored(true);
        }
        return m1789b;
    }

    /* renamed from: j */
    public static int m40238j(Context context, int i) {
        return m40240a(context, i, true);
    }

    /* renamed from: k */
    private static final void m40237k(Context context, final int i) {
        String m40236l = m40236l(context, i);
        if (!C1626as.isEmpty(m40236l)) {
            C1613ai.m40283e("FRESHCHAT", EnumC1464c.THEME_ATTRIBUTE_MISSING.toString().replace("{{resource_name}}", m40236l));
        } else {
            new Thread(new Runnable() { // from class: com.freshchat.consumer.sdk.j.aq.1
                @Override // java.lang.Runnable
                public void run() {
                    Field[] fields;
                    for (Field field : C1298R.attr.class.getFields()) {
                        try {
                            if (field.getInt(null) == i) {
                                C1613ai.m40283e("FRESHCHAT", EnumC1464c.THEME_ATTRIBUTE_MISSING.toString().replace("{{resource_name}}", field.getName()));
                            }
                        } catch (IllegalAccessException e) {
                        }
                    }
                }
            }).start();
        }
    }

    /* renamed from: l */
    public static String m40236l(Context context, int i) {
        if (context == null || i <= 0 || context.getResources() == null) {
            return "";
        }
        try {
            return context.getResources().getResourceEntryName(i);
        } catch (Resources.NotFoundException e) {
            return "";
        }
    }

    /* renamed from: o */
    public static int m40235o(Context context, int i) {
        return context.getResources().getDimensionPixelSize(i);
    }
}
