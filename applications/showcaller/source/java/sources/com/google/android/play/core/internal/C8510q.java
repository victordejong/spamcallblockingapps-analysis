package com.google.android.play.core.internal;

import android.content.res.AssetManager;
import com.google.android.play.core.splitcompat.C8537b;
import java.io.File;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.internal.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/q.class */
public final class C8510q {

    /* renamed from: a */
    private final C8537b f38069a;

    /* renamed from: b */
    private XmlPullParser f38070b;

    public C8510q(C8537b c8537b) {
        this.f38069a = c8537b;
    }

    /* renamed from: a */
    public final void m3481a(AssetManager assetManager, File file) {
        this.f38070b = assetManager.openXmlResourceParser(C8537b.m3389b(assetManager, file), "AndroidManifest.xml");
    }

    /* renamed from: b */
    public final long m3480b() {
        if (this.f38070b != null) {
            while (true) {
                int next = this.f38070b.next();
                if (next != 2) {
                    if (next == 1) {
                        break;
                    }
                } else if (this.f38070b.getName().equals("manifest")) {
                    String attributeValue = this.f38070b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCode");
                    String attributeValue2 = this.f38070b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCodeMajor");
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
