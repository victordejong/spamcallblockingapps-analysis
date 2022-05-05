package com.android.vcard;

import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParserImpl_V40.class */
public class VCardParserImpl_V40 extends VCardParserImpl_V30 {
    public VCardParserImpl_V40() {
    }

    public VCardParserImpl_V40(int i) {
        super(i);
    }

    public static String unescapeCharacter(char c) {
        return (c == 'n' || c == 'N') ? "\n" : String.valueOf(c);
    }

    public static String unescapeText(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '\\' || i >= length - 1) {
                sb.append(charAt);
            } else {
                i++;
                char charAt2 = str.charAt(i);
                if (charAt2 == 'n' || charAt2 == 'N') {
                    sb.append("\n");
                } else {
                    sb.append(charAt2);
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // com.android.vcard.VCardParserImpl_V30, com.android.vcard.VCardParserImpl_V21
    protected Set<String> getKnownPropertyNameSet() {
        return VCardParser_V40.sKnownPropertyNameSet;
    }

    @Override // com.android.vcard.VCardParserImpl_V30, com.android.vcard.VCardParserImpl_V21
    protected int getVersion() {
        return 2;
    }

    @Override // com.android.vcard.VCardParserImpl_V30, com.android.vcard.VCardParserImpl_V21
    protected String getVersionString() {
        return VCardConstants.VERSION_V40;
    }

    @Override // com.android.vcard.VCardParserImpl_V30, com.android.vcard.VCardParserImpl_V21
    protected String maybeUnescapeText(String str) {
        return unescapeText(str);
    }
}
