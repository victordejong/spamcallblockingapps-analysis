package com.android.vcard;

import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParser_V40.class */
public class VCardParser_V40 extends VCardParser {
    private final VCardParserImpl_V40 mVCardParserImpl;
    static final Set<String> sKnownPropertyNameSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(VCardConstants.PROPERTY_BEGIN, VCardConstants.PROPERTY_END, VCardConstants.PROPERTY_VERSION, "SOURCE", "KIND", VCardConstants.PROPERTY_FN, VCardConstants.PROPERTY_N, VCardConstants.PROPERTY_NICKNAME, VCardConstants.PROPERTY_PHOTO, VCardConstants.PROPERTY_BDAY, VCardConstants.PROPERTY_ANNIVERSARY, VCardConstants.PROPERTY_GENDER, VCardConstants.PROPERTY_ADR, VCardConstants.PROPERTY_TEL, VCardConstants.PROPERTY_EMAIL, VCardConstants.PROPERTY_IMPP, "LANG", "TZ", "GEO", VCardConstants.PROPERTY_TITLE, VCardConstants.PROPERTY_ROLE, VCardConstants.PROPERTY_LOGO, VCardConstants.PROPERTY_ORG, "MEMBER", VCardConstants.PROPERTY_RELATED, VCardConstants.PROPERTY_CATEGORIES, VCardConstants.PROPERTY_NOTE, VCardConstants.PROPERTY_PRODID, VCardConstants.PROPERTY_REV, VCardConstants.PROPERTY_SOUND, "UID", VCardConstants.PROPERTY_CLIENTPIDMAP, "URL", "KEY", VCardConstants.PROPERTY_FBURL, "CALENDRURI", VCardConstants.PROPERTY_CALURI, VCardConstants.PROPERTY_XML)));
    static final Set<String> sAcceptableEncoding = Collections.unmodifiableSet(new HashSet(Arrays.asList(VCardConstants.PARAM_ENCODING_8BIT, VCardConstants.PARAM_ENCODING_B)));

    public VCardParser_V40() {
        this.mVCardParserImpl = new VCardParserImpl_V40();
    }

    public VCardParser_V40(int i) {
        this.mVCardParserImpl = new VCardParserImpl_V40(i);
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
