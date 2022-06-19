package com.facebook.internal.p304c.p305a;

import android.content.res.Resources;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001a\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001a\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0002¨\u0006\r"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;", "", "()V", "getFallbackIdString", "", "resourceId", "", "getIdString", "r", "Landroid/content/res/Resources;", "getIdStringQuietly", "getResourcePackageId", "id", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.c.a.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/c.class */
public final class C10272c {

    /* renamed from: a */
    public static final C10272c f33789a = new C10272c();

    private C10272c() {
    }

    /* renamed from: a */
    private static String m23077a(int i) {
        return "#" + Integer.toHexString(i);
    }

    /* renamed from: a */
    public static final String m23076a(Resources resources, int i) {
        String str;
        String str2;
        try {
            if (resources == null) {
                str = m23077a(i);
            } else {
                String str3 = "";
                if (((i >>> 24) & 255) != 127) {
                    str3 = resources.getResourcePackageName(i);
                    C18524p.m3843b(str3, "r.getResourcePackageName(resourceId)");
                    str2 = ":";
                } else {
                    str2 = "";
                }
                String resourceTypeName = resources.getResourceTypeName(i);
                String resourceEntryName = resources.getResourceEntryName(i);
                StringBuilder sb = new StringBuilder(str3.length() + 1 + str2.length() + resourceTypeName.length() + 1 + resourceEntryName.length());
                sb.append("@");
                sb.append(str3);
                sb.append(str2);
                sb.append(resourceTypeName);
                sb.append("/");
                sb.append(resourceEntryName);
                str = sb.toString();
                C18524p.m3843b(str, "sb.toString()");
            }
        } catch (Resources.NotFoundException e) {
            str = m23077a(i);
        }
        return str;
    }
}
