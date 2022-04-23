package androidx.core.location;

import android.location.Location;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0086\n¨\u0006\u0004"}, m815d2 = {"component1", "", "Landroid/location/Location;", "component2", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/location/LocationKt.class */
public final class LocationKt {
    public static final double component1(Location location) {
        C15149k.m377b(location, "$this$component1");
        return location.getLatitude();
    }

    public static final double component2(Location location) {
        C15149k.m377b(location, "$this$component2");
        return location.getLongitude();
    }
}
