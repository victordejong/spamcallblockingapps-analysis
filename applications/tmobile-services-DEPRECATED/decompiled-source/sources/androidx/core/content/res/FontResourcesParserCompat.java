package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.C0189R;
import androidx.core.provider.FontRequest;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat.class */
public class FontResourcesParserCompat {

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry.class */
    public interface FamilyResourceEntry {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat$FetchStrategy.class */
    public @interface FetchStrategy {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry.class */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {
        @NonNull

        /* renamed from: a */
        private final FontFileResourceEntry[] f2995a;

        public FontFamilyFilesResourceEntry(@NonNull FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.f2995a = fontFileResourceEntryArr;
        }

        @NonNull
        /* renamed from: a */
        public FontFileResourceEntry[] m19630a() {
            return this.f2995a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry.class */
    public static final class FontFileResourceEntry {
        @NonNull

        /* renamed from: a */
        private final String f2996a;

        /* renamed from: b */
        private int f2997b;

        /* renamed from: c */
        private boolean f2998c;

        /* renamed from: d */
        private String f2999d;

        /* renamed from: e */
        private int f3000e;

        /* renamed from: f */
        private int f3001f;

        public FontFileResourceEntry(@NonNull String str, int i, boolean z, @Nullable String str2, int i2, int i3) {
            this.f2996a = str;
            this.f2997b = i;
            this.f2998c = z;
            this.f2999d = str2;
            this.f3000e = i2;
            this.f3001f = i3;
        }

        @NonNull
        /* renamed from: a */
        public String m19629a() {
            return this.f2996a;
        }

        /* renamed from: b */
        public int m19628b() {
            return this.f3001f;
        }

        /* renamed from: c */
        public int m19627c() {
            return this.f3000e;
        }

        @Nullable
        /* renamed from: d */
        public String m19626d() {
            return this.f2999d;
        }

        /* renamed from: e */
        public int m19625e() {
            return this.f2997b;
        }

        /* renamed from: f */
        public boolean m19624f() {
            return this.f2998c;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry.class */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {
        @NonNull

        /* renamed from: a */
        private final FontRequest f3002a;

        /* renamed from: b */
        private final int f3003b;

        /* renamed from: c */
        private final int f3004c;

        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2) {
            this.f3002a = fontRequest;
            this.f3004c = i;
            this.f3003b = i2;
        }

        /* renamed from: a */
        public int m19623a() {
            return this.f3004c;
        }

        @NonNull
        /* renamed from: b */
        public FontRequest m19622b() {
            return this.f3002a;
        }

        /* renamed from: c */
        public int m19621c() {
            return this.f3003b;
        }
    }

    private FontResourcesParserCompat() {
    }

    /* renamed from: a */
    private static int m19638a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    @Nullable
    /* renamed from: b */
    public static FamilyResourceEntry m19637b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m19635d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: c */
    public static List<List<byte[]>> m19636c(Resources resources, @ArrayRes int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m19638a(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m19631h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m19631h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    @Nullable
    /* renamed from: d */
    private static FamilyResourceEntry m19635d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m19634e(xmlPullParser, resources);
        }
        m19632g(xmlPullParser);
        return null;
    }

    @Nullable
    /* renamed from: e */
    private static FamilyResourceEntry m19634e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0189R.styleable.FontFamily);
        String string = obtainAttributes.getString(C0189R.styleable.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(C0189R.styleable.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(C0189R.styleable.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(C0189R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(C0189R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(C0189R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(m19633f(xmlPullParser, resources));
                    } else {
                        m19632g(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            m19632g(xmlPullParser);
        }
        return new ProviderResourceEntry(new FontRequest(string, string2, string3, m19636c(resources, resourceId)), integer, integer2);
    }

    /* renamed from: f */
    private static FontFileResourceEntry m19633f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0189R.styleable.FontFamilyFont);
        int i = obtainAttributes.getInt(obtainAttributes.hasValue(C0189R.styleable.FontFamilyFont_fontWeight) ? C0189R.styleable.FontFamilyFont_fontWeight : C0189R.styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(C0189R.styleable.FontFamilyFont_fontStyle) ? C0189R.styleable.FontFamilyFont_fontStyle : C0189R.styleable.FontFamilyFont_android_fontStyle, 0);
        int i2 = obtainAttributes.hasValue(C0189R.styleable.FontFamilyFont_ttcIndex) ? C0189R.styleable.FontFamilyFont_ttcIndex : C0189R.styleable.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(C0189R.styleable.FontFamilyFont_fontVariationSettings) ? C0189R.styleable.FontFamilyFont_fontVariationSettings : C0189R.styleable.FontFamilyFont_android_fontVariationSettings);
        int i3 = obtainAttributes.getInt(i2, 0);
        int i4 = obtainAttributes.hasValue(C0189R.styleable.FontFamilyFont_font) ? C0189R.styleable.FontFamilyFont_font : C0189R.styleable.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i4, 0);
        String string2 = obtainAttributes.getString(i4);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m19632g(xmlPullParser);
        }
        return new FontFileResourceEntry(string2, i, z, string, i3, resourceId);
    }

    /* renamed from: g */
    private static void m19632g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: h */
    private static List<byte[]> m19631h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
