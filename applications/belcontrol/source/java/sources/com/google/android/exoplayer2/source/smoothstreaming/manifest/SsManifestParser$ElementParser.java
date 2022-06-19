package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import java.util.LinkedList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser.class */
public abstract class SsManifestParser$ElementParser {
    private final String baseUri;
    private final List<Pair<String, Object>> normalizedAttributes = new LinkedList();
    private final SsManifestParser$ElementParser parent;
    private final String tag;

    public SsManifestParser$ElementParser(SsManifestParser$ElementParser ssManifestParser$ElementParser, String str, String str2) {
        this.parent = ssManifestParser$ElementParser;
        this.baseUri = str;
        this.tag = str2;
    }

    private SsManifestParser$ElementParser newChildParser(SsManifestParser$ElementParser ssManifestParser$ElementParser, String str, String str2) {
        if ("QualityLevel".equals(str)) {
            return new SsManifestParser.QualityLevelParser(ssManifestParser$ElementParser, str2);
        }
        if ("Protection".equals(str)) {
            return new SsManifestParser.ProtectionParser(ssManifestParser$ElementParser, str2);
        }
        if (!"StreamIndex".equals(str)) {
            return null;
        }
        return new SsManifestParser.StreamIndexParser(ssManifestParser$ElementParser, str2);
    }

    public void addChild(Object obj) {
    }

    public abstract Object build();

    public final Object getNormalizedAttribute(String str) {
        for (int i = 0; i < this.normalizedAttributes.size(); i++) {
            Pair<String, Object> pair = this.normalizedAttributes.get(i);
            if (((String) pair.first).equals(str)) {
                return pair.second;
            }
        }
        SsManifestParser$ElementParser ssManifestParser$ElementParser = this.parent;
        return ssManifestParser$ElementParser == null ? null : ssManifestParser$ElementParser.getNormalizedAttribute(str);
    }

    public boolean handleChildInline(String str) {
        return false;
    }

    public final Object parse(XmlPullParser xmlPullParser) {
        boolean z;
        int i;
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int eventType = xmlPullParser.getEventType();
            if (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.tag.equals(name)) {
                        parseStartTag(xmlPullParser);
                        z = true;
                        i = i3;
                    } else {
                        z = z2;
                        i = i3;
                        if (z2) {
                            if (i3 > 0) {
                                i = i3 + 1;
                                z = z2;
                            } else if (handleChildInline(name)) {
                                parseStartTag(xmlPullParser);
                                z = z2;
                                i = i3;
                            } else {
                                SsManifestParser$ElementParser newChildParser = newChildParser(this, name, this.baseUri);
                                if (newChildParser == null) {
                                    i = 1;
                                    z = z2;
                                } else {
                                    addChild(newChildParser.parse(xmlPullParser));
                                    i = i3;
                                    z = z2;
                                }
                            }
                        }
                    }
                } else if (eventType == 3) {
                    z = z2;
                    i = i3;
                    if (!z2) {
                        continue;
                    } else if (i3 > 0) {
                        i = i3 - 1;
                        z = z2;
                    } else {
                        String name2 = xmlPullParser.getName();
                        parseEndTag(xmlPullParser);
                        z = z2;
                        i = i3;
                        if (!handleChildInline(name2)) {
                            return build();
                        }
                    }
                } else if (eventType != 4) {
                    z = z2;
                    i = i3;
                } else {
                    z = z2;
                    i = i3;
                    if (z2) {
                        z = z2;
                        i = i3;
                        if (i3 == 0) {
                            parseText(xmlPullParser);
                            z = z2;
                            i = i3;
                        }
                    }
                }
                xmlPullParser.next();
                z2 = z;
                i2 = i;
            } else {
                return null;
            }
        }
    }

    public final boolean parseBoolean(XmlPullParser xmlPullParser, String str, boolean z) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z;
    }

    public void parseEndTag(XmlPullParser xmlPullParser) {
    }

    public final int parseInt(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw new ParserException(e);
            }
        }
        return i;
    }

    public final long parseLong(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw new ParserException(e);
            }
        }
        return j;
    }

    public final int parseRequiredInt(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw new ParserException(e);
            }
        }
        throw new SsManifestParser.MissingFieldException(str);
    }

    public final long parseRequiredLong(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw new ParserException(e);
            }
        }
        throw new SsManifestParser.MissingFieldException(str);
    }

    public final String parseRequiredString(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return attributeValue;
        }
        throw new SsManifestParser.MissingFieldException(str);
    }

    public void parseStartTag(XmlPullParser xmlPullParser) {
    }

    public void parseText(XmlPullParser xmlPullParser) {
    }

    public final void putNormalizedAttribute(String str, Object obj) {
        this.normalizedAttributes.add(Pair.create(str, obj));
    }
}
