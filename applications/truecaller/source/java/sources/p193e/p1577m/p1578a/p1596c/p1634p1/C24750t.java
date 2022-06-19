package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.text.TextUtils;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
/* renamed from: e.m.a.c.p1.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/t.class */
public final class C24750t extends AbstractC24756x {

    /* renamed from: b */
    public final String f69402b;

    /* renamed from: c */
    public final AbstractC24697f0 f69403c;

    /* renamed from: d */
    public final int f69404d;

    /* renamed from: e */
    public final int f69405e;

    public C24750t(String str, AbstractC24697f0 abstractC24697f0) {
        if (!TextUtils.isEmpty(str)) {
            this.f69402b = str;
            this.f69403c = abstractC24697f0;
            this.f69404d = JosStatusCodes.RTN_CODE_COMMON_ERROR;
            this.f69405e = JosStatusCodes.RTN_CODE_COMMON_ERROR;
            return;
        }
        throw new IllegalArgumentException();
    }
}
