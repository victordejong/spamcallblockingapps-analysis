package com.google.zxing.client.result;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/SMSMMSResultParser.class */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
            return;
        }
        collection.add(str.substring(0, indexOf));
        String substring = str.substring(indexOf + 1);
        String str2 = null;
        if (substring.startsWith("via=")) {
            str2 = substring.substring(4);
        }
        collection2.add(str2);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String massagedText = getMassagedText(result);
        String str2 = null;
        if (massagedText.startsWith("sms:") || massagedText.startsWith("SMS:") || massagedText.startsWith("mms:") || massagedText.startsWith("MMS:")) {
            Map<String, String> parseNameValuePairs = parseNameValuePairs(massagedText);
            boolean z = false;
            if (parseNameValuePairs == null || parseNameValuePairs.isEmpty()) {
                str = null;
            } else {
                str2 = parseNameValuePairs.get("subject");
                str = parseNameValuePairs.get(SDKConstants.PARAM_A2U_BODY);
                z = true;
            }
            int indexOf = massagedText.indexOf(63, 4);
            String substring = (indexOf < 0 || !z) ? massagedText.substring(4) : massagedText.substring(4, indexOf);
            int i = -1;
            ArrayList arrayList = new ArrayList(1);
            ArrayList arrayList2 = new ArrayList(1);
            while (true) {
                int i2 = i + 1;
                int indexOf2 = substring.indexOf(44, i2);
                if (indexOf2 <= i) {
                    addNumberVia(arrayList, arrayList2, substring.substring(i2));
                    return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
                }
                addNumberVia(arrayList, arrayList2, substring.substring(i2, indexOf2));
                i = indexOf2;
            }
        } else {
            return null;
        }
    }
}
