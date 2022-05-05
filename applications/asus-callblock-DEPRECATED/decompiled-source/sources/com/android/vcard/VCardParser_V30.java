package com.android.vcard;

import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParser_V30.class */
public class VCardParser_V30 extends VCardParser {
    private final VCardParserImpl_V30 mVCardParserImpl;
    static final Set<String> sKnownPropertyNameSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(VCardConstants.PROPERTY_BEGIN, VCardConstants.PROPERTY_END, VCardConstants.PROPERTY_LOGO, VCardConstants.PROPERTY_PHOTO, "LABEL", VCardConstants.PROPERTY_FN, VCardConstants.PROPERTY_TITLE, VCardConstants.PROPERTY_SOUND, VCardConstants.PROPERTY_VERSION, VCardConstants.PROPERTY_TEL, VCardConstants.PROPERTY_EMAIL, "TZ", "GEO", VCardConstants.PROPERTY_NOTE, "URL", VCardConstants.PROPERTY_BDAY, VCardConstants.PROPERTY_ROLE, VCardConstants.PROPERTY_REV, "UID", "KEY", "MAILER", VCardConstants.PROPERTY_NAME, "PROFILE", "SOURCE", VCardConstants.PROPERTY_NICKNAME, "CLASS", VCardConstants.PROPERTY_SORT_STRING, VCardConstants.PROPERTY_CATEGORIES, VCardConstants.PROPERTY_PRODID, VCardConstants.PROPERTY_IMPP)));
    static final Set<String> sAcceptableEncoding = Collections.unmodifiableSet(new HashSet(Arrays.asList(VCardConstants.PARAM_ENCODING_7BIT, VCardConstants.PARAM_ENCODING_8BIT, VCardConstants.PARAM_ENCODING_BASE64, VCardConstants.PARAM_ENCODING_B)));

    public VCardParser_V30() {
        this.mVCardParserImpl = new VCardParserImpl_V30();
    }

    public VCardParser_V30(int i) {
        this.mVCardParserImpl = new VCardParserImpl_V30(i);
    }

    @Override // com.android.vcard.VCardParser
    public void addInterpreter(VCardInterpreter vCardInterpreter) {
        this.mVCardParserImpl.addInterpreter(vCardInterpreter);
    }

    @Override // com.android.vcard.VCardParser
    public void cancel() {
        this.mVCardParserImpl.cancel();
    }

    @Override // com.android.vcard.VCardParser
    public void parse(InputStream inputStream) {
        this.mVCardParserImpl.parse(inputStream);
    }

    @Override // com.android.vcard.VCardParser
    public void parseOne(InputStream inputStream) {
        this.mVCardParserImpl.parseOne(inputStream);
    }
}
