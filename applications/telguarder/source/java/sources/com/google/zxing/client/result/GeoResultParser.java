package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/GeoResultParser.class */
public final class GeoResultParser extends ResultParser {
    private static final Pattern GEO_URL_PATTERN = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    @Override // com.google.zxing.client.result.ResultParser
    public GeoParsedResult parse(Result result) {
        Matcher matcher = GEO_URL_PATTERN.matcher(getMassagedText(result));
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(4);
        try {
            double parseDouble = Double.parseDouble(matcher.group(1));
            if (parseDouble > 90.0d || parseDouble < -90.0d) {
                return null;
            }
            double parseDouble2 = Double.parseDouble(matcher.group(2));
            if (parseDouble2 > 180.0d || parseDouble2 < -180.0d) {
                return null;
            }
            char c = 0;
            if (matcher.group(3) != null) {
                c = Double.parseDouble(matcher.group(3));
                if (c < 0.0d) {
                    return null;
                }
            }
            return new GeoParsedResult(parseDouble, parseDouble2, c, group);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
