package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.flurry.sdk.C3340ji;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskLocaleConverter.class */
public class ZendeskLocaleConverter {
    public static final Map<String, String> forwardLookupMap = new HashMap();

    static {
        forwardLookupMap.put("iw", "he");
        forwardLookupMap.put("nb", "no");
        forwardLookupMap.put("in", "id");
        forwardLookupMap.put(C3340ji.f5710a, "yi");
    }

    @NonNull
    public String toHelpCenterLocaleString(@Nullable Locale locale) {
        if (!(locale != null && C10862d.m10390b(locale.getLanguage()))) {
            locale = Locale.getDefault();
        }
        String str = forwardLookupMap.get(locale.getLanguage());
        if (!C10862d.m10390b(str)) {
            str = locale.getLanguage();
        }
        StringBuilder sb = new StringBuilder(str);
        if (C10862d.m10390b(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        return sb.toString().toLowerCase();
    }
}
