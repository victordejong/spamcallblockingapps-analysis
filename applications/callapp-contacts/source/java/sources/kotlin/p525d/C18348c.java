package kotlin.p525d;

import com.appsflyer.share.Constants;
import com.google.api.client.googleapis.notifications.C15291b;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u001a \u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a \u0010��\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0001\u001a \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0001\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0002¨\u0006\u000b"}, m4298d2 = {"differenceModulo", "", "a", C15291b.f55271a, Constants.URL_CAMPAIGN, "", "getProgressionLastElement", EventConstants.START, "end", "step", "mod", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.d.c */
/* loaded from: classes5-dex2jar.jar:kotlin/d/c.class */
public final class C18348c {
    /* renamed from: a */
    private static final int m4069a(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    /* renamed from: a */
    public static final int m4068a(int i, int i2, int i3) {
        if (i3 > 0) {
            return i >= i2 ? i2 : i2 - m4067b(i2, i, i3);
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            return i <= i2 ? i2 : i2 + m4067b(i, i2, -i3);
        }
    }

    /* renamed from: b */
    private static final int m4067b(int i, int i2, int i3) {
        return m4069a(m4069a(i, i3) - m4069a(i2, i3), i3);
    }
}
