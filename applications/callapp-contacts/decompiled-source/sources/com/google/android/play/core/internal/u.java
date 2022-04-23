package com.google.android.play.core.internal;

import com.google.android.play.core.splitcompat.b;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    XmlPullParser f31394a;

    /* renamed from: b  reason: collision with root package name */
    private final b f31395b;

    public u(b bVar) {
        this.f31395b = bVar;
    }

    public final long a() throws IOException, XmlPullParserException {
        if (this.f31394a != null) {
            while (true) {
                int next = this.f31394a.next();
                if (next != 2) {
                    if (next == 1) {
                        break;
                    }
                } else if (this.f31394a.getName().equals("manifest")) {
                    String attributeValue = this.f31394a.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCode");
                    String attributeValue2 = this.f31394a.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCodeMajor");
                    if (attributeValue != null) {
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
                    } else {
                        throw new XmlPullParserException("Manifest entry doesn't contain 'versionCode' attribute.");
                    }
                }
            }
            throw new XmlPullParserException("Couldn't find manifest entry at top-level.");
        }
        throw new XmlPullParserException("Manifest file needs to be loaded before parsing.");
    }
}
