package p193e.p194a.p1315v4;

import com.airbnb.deeplinkdispatch.DeepLinkEntry;
import com.airbnb.deeplinkdispatch.Parser;
import com.truecaller.sdk.BottomSheetConfirmProfileActivityKt;
import com.truecaller.sdk.ConfirmProfileActivity;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.v4.w */
/* loaded from: classes12-dex2jar.jar:e/a/v4/w.class */
public final class C21157w implements Parser {

    /* renamed from: a */
    public static final List<DeepLinkEntry> f59331a;

    static {
        DeepLinkEntry.Type type = DeepLinkEntry.Type.METHOD;
        f59331a = Collections.unmodifiableList(Arrays.asList(new DeepLinkEntry("truecallersdk://truesdk/mweb_verify_btmsheet", type, BottomSheetConfirmProfileActivityKt.class, "getLaunchIntent"), new DeepLinkEntry("truecallersdk://truesdk/mweb_verify", type, ConfirmProfileActivity.class, "getLaunchIntent")));
    }

    @Override // com.airbnb.deeplinkdispatch.Parser
    public DeepLinkEntry parseUri(String str) {
        for (DeepLinkEntry deepLinkEntry : f59331a) {
            if (deepLinkEntry.matches(str)) {
                return deepLinkEntry;
            }
        }
        return null;
    }
}
