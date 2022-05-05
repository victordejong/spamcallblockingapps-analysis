package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.StringUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterLocaleConverter.class */
public class HelpCenterLocaleConverter {
    private static final Map<String, String> forwardLookupMap = new HashMap();

    static {
        forwardLookupMap.put("iw", "he");
        forwardLookupMap.put("nb", "no");
        forwardLookupMap.put("in", "id");
        forwardLookupMap.put("ji", "yi");
    }

    @NonNull
    public String toHelpCenterLocaleString(@Nullable Locale locale) {
        if (!(locale != null && StringUtils.hasLength(locale.getLanguage()))) {
            locale = Locale.getDefault();
        }
        String str = forwardLookupMap.get(locale.getLanguage());
        if (!StringUtils.hasLength(str)) {
            str = locale.getLanguage();
        }
        StringBuilder sb = new StringBuilder(str);
        if (StringUtils.hasLength(locale.getCountry())) {
            sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
            sb.append(locale.getCountry());
        }
        return sb.toString().toLowerCase();
    }
}
