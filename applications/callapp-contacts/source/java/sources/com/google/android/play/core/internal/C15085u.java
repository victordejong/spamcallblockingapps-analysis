package com.google.android.play.core.internal;

import com.google.android.play.core.splitcompat.C15106b;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.internal.u */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/u.class */
public final class C15085u {

    /* renamed from: a */
    XmlPullParser f54807a;

    /* renamed from: b */
    private final C15106b f54808b;

    public C15085u(C15106b c15106b) {
        this.f54808b = c15106b;
    }

    /* renamed from: a */
    public final long m9488a() throws IOException, XmlPullParserException {
        if (this.f54807a != null) {
            while (true) {
                int next = this.f54807a.next();
                if (next != 2) {
                    if (next == 1) {
                        break;
                    }
                } else if (this.f54807a.getName().equals("manifest")) {
                    String attributeValue = this.f54807a.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCode");
                    String attributeValue2 = this.f54807a.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCodeMajor");
                    if (attributeValue == null) {
                        throw new XmlPullParserException("Manifest entry doesn't contain 'versionCode' attribute.");
                    }
                    try {
                        int parseInt = Integer.parseInt(attributeValue);
                        if (attributeValue2 == null) {
                            return parseInt;
                        }
                        try {
                            return (Integer.parseInt(attributeValue2) << 32) | (parseInt & 4294967295L);
                        } catch (NumberFormatException e) {
                            throw new XmlPullParserException(String.format("Couldn't parse versionCodeMajor to int: %s", e.getMessage()));
                        }
                    } catch (NumberFormatException e2) {
                        throw new XmlPullParserException(String.format("Couldn't parse versionCode to int: %s", e2.getMessage()));
                    }
                }
            }
            throw new XmlPullParserException("Couldn't find manifest entry at top-level.");
        }
        throw new XmlPullParserException("Manifest file needs to be loaded before parsing.");
    }
}
