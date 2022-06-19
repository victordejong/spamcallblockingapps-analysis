package com.google.zxing.client.result;

import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.stats.CodePackage;
import com.google.zxing.Result;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/VEventResultParser.class */
public final class VEventResultParser extends ResultParser {
    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z) {
        List<String> matchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, z, false);
        if (matchSingleVCardPrefixedField == null || matchSingleVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchSingleVCardPrefixedField.get(0);
    }

    private static String[] matchVCardPrefixedField(CharSequence charSequence, String str, boolean z) {
        List<List<String>> matchVCardPrefixedField = VCardResultParser.matchVCardPrefixedField(charSequence, str, z, false);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        int size = matchVCardPrefixedField.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = matchVCardPrefixedField.get(i).get(0);
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r3.startsWith("MAILTO:") != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String stripMailto(java.lang.String r3) {
        /*
            r0 = r3
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L21
            r0 = r3
            java.lang.String r1 = "mailto:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L1a
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = "MAILTO:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L21
        L1a:
            r0 = r3
            r1 = 7
            java.lang.String r0 = r0.substring(r1)
            r4 = r0
        L21:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.VEventResultParser.stripMailto(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        char c;
        String massagedText = getMassagedText(result);
        if (massagedText.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("SUMMARY", massagedText, true);
        String matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("DTSTART", massagedText, true);
        if (matchSingleVCardPrefixedField2 == null) {
            return null;
        }
        String matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("DTEND", massagedText, true);
        String matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("DURATION", massagedText, true);
        String matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(CodePackage.LOCATION, massagedText, true);
        String stripMailto = stripMailto(matchSingleVCardPrefixedField("ORGANIZER", massagedText, true));
        String[] matchVCardPrefixedField = matchVCardPrefixedField("ATTENDEE", massagedText, true);
        if (matchVCardPrefixedField != null) {
            for (int i = 0; i < matchVCardPrefixedField.length; i++) {
                matchVCardPrefixedField[i] = stripMailto(matchVCardPrefixedField[i]);
            }
        }
        String matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField(ShareConstants.DESCRIPTION, massagedText, true);
        String matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText, true);
        char c2 = 0;
        if (matchSingleVCardPrefixedField7 == null) {
            c = 0;
        } else {
            int indexOf = matchSingleVCardPrefixedField7.indexOf(59);
            if (indexOf < 0) {
                return null;
            }
            c2 = Double.parseDouble(matchSingleVCardPrefixedField7.substring(0, indexOf));
            c = Double.parseDouble(matchSingleVCardPrefixedField7.substring(indexOf + 1));
        }
        try {
            return new CalendarParsedResult(matchSingleVCardPrefixedField, matchSingleVCardPrefixedField2, matchSingleVCardPrefixedField3, matchSingleVCardPrefixedField4, matchSingleVCardPrefixedField5, stripMailto, matchVCardPrefixedField, matchSingleVCardPrefixedField6, c2, c);
        } catch (NumberFormatException | IllegalArgumentException e) {
            return null;
        }
    }
}
