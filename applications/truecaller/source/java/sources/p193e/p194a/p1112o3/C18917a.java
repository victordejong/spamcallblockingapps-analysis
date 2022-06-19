package p193e.p194a.p1112o3;

import com.airbnb.deeplinkdispatch.DeepLinkEntry;
import com.airbnb.deeplinkdispatch.Parser;
import com.truecaller.ads.leadgen.LeadgenDeeplink;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.o3.a */
/* loaded from: classes8-dex2jar.jar:e/a/o3/a.class */
public final class C18917a implements Parser {

    /* renamed from: a */
    public static final List<DeepLinkEntry> f53050a;

    static {
        DeepLinkEntry.Type type = DeepLinkEntry.Type.METHOD;
        f53050a = Collections.unmodifiableList(Arrays.asList(new DeepLinkEntry("http://truecaller.com/d/home/{view}/{subview}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("http://www.truecaller.com/d/home/{view}/{subview}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("https://truecaller.com/d/home/{view}/{subview}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("https://www.truecaller.com/d/home/{view}/{subview}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("http://truecaller.com/d/home/{view}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("http://www.truecaller.com/d/home/{view}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("https://truecaller.com/d/home/{view}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("https://www.truecaller.com/d/home/{view}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("truecaller://home/{view}/{subview}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("truecaller://balance_check", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("truecaller://voicelauncher", DeepLinkEntry.Type.CLASS, VoipContactsActivity.class, null), new DeepLinkEntry("truecaller://home/{view}", type, TruecallerInit.class, "buildDeepLinkIntent"), new DeepLinkEntry("truecaller://leadgen/{leadgenId}", type, LeadgenDeeplink.class, "createDeeplink")));
    }

    @Override // com.airbnb.deeplinkdispatch.Parser
    public DeepLinkEntry parseUri(String str) {
        for (DeepLinkEntry deepLinkEntry : f53050a) {
            if (deepLinkEntry.matches(str)) {
                return deepLinkEntry;
            }
        }
        return null;
    }
}
