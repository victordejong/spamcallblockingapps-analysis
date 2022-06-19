package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwd.class */
public final class zzdwd {
    private final String className;
    private final zzdwg zzhvu;
    private zzdwg zzhvv;
    private boolean zzhvw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdwd(String str) {
        zzdwg zzdwgVar = new zzdwg();
        this.zzhvu = zzdwgVar;
        this.zzhvv = zzdwgVar;
        this.zzhvw = false;
        this.className = (String) zzdwl.checkNotNull(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.className);
        sb.append('{');
        zzdwg zzdwgVar = this.zzhvu.zzhvx;
        String str = "";
        while (true) {
            String str2 = str;
            if (zzdwgVar == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = zzdwgVar.value;
            sb.append(str2);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzdwgVar = zzdwgVar.zzhvx;
            str = ", ";
        }
    }

    public final zzdwd zzy(@NullableDecl Object obj) {
        zzdwg zzdwgVar = new zzdwg();
        this.zzhvv.zzhvx = zzdwgVar;
        this.zzhvv = zzdwgVar;
        zzdwgVar.value = obj;
        return this;
    }
}
