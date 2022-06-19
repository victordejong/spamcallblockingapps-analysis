package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/UrlTemplate.class */
public final class UrlTemplate {
    private static final String BANDWIDTH = "Bandwidth";
    private static final int BANDWIDTH_ID = 3;
    private static final String DEFAULT_FORMAT_TAG = "%01d";
    private static final String ESCAPED_DOLLAR = "$$";
    private static final String NUMBER = "Number";
    private static final int NUMBER_ID = 2;
    private static final String REPRESENTATION = "RepresentationID";
    private static final int REPRESENTATION_ID = 1;
    private static final String TIME = "Time";
    private static final int TIME_ID = 4;
    private final int identifierCount;
    private final String[] identifierFormatTags;
    private final int[] identifiers;
    private final String[] urlPieces;

    private UrlTemplate(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.urlPieces = strArr;
        this.identifiers = iArr;
        this.identifierFormatTags = strArr2;
        this.identifierCount = i;
    }

    public static UrlTemplate compile(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new UrlTemplate(strArr, iArr, strArr2, parseTemplate(str, strArr, iArr, strArr2));
    }

    private static int parseTemplate(String str, String[] strArr, int[] iArr, String[] strArr2) {
        String str2;
        boolean z;
        strArr[0] = "";
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int indexOf = str.indexOf("$", i);
            if (indexOf == -1) {
                strArr[i2] = strArr[i2] + str.substring(i);
                i = str.length();
            } else if (indexOf != i) {
                strArr[i2] = strArr[i2] + str.substring(i, indexOf);
                i = indexOf;
            } else if (str.startsWith(ESCAPED_DOLLAR, i)) {
                strArr[i2] = strArr[i2] + "$";
                i += 2;
            } else {
                int i3 = i + 1;
                int indexOf2 = str.indexOf("$", i3);
                String substring = str.substring(i3, indexOf2);
                if (substring.equals(REPRESENTATION)) {
                    iArr[i2] = 1;
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    if (indexOf3 != -1) {
                        String substring2 = substring.substring(indexOf3);
                        str2 = substring2;
                        if (!substring2.endsWith(GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG)) {
                            str2 = substring2 + GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG;
                        }
                        substring = substring.substring(0, indexOf3);
                    } else {
                        str2 = DEFAULT_FORMAT_TAG;
                    }
                    substring.hashCode();
                    switch (substring.hashCode()) {
                        case -1950496919:
                            if (substring.equals(NUMBER)) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        case 2606829:
                            if (substring.equals(TIME)) {
                                z = true;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        case 38199441:
                            if (substring.equals(BANDWIDTH)) {
                                z = true;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            iArr[i2] = 2;
                            break;
                        case true:
                            iArr[i2] = 4;
                            break;
                        case true:
                            iArr[i2] = 3;
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i2] = str2;
                }
                i2++;
                strArr[i2] = "";
                i = indexOf2 + 1;
            }
        }
        return i2;
    }

    public String buildUri(String str, long j, int i, long j2) {
        String format;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = this.identifierCount;
            if (i2 >= i3) {
                sb.append(this.urlPieces[i3]);
                return sb.toString();
            }
            sb.append(this.urlPieces[i2]);
            int[] iArr = this.identifiers;
            if (iArr[i2] == 1) {
                sb.append(str);
            } else {
                if (iArr[i2] == 2) {
                    format = String.format(Locale.US, this.identifierFormatTags[i2], Long.valueOf(j));
                } else if (iArr[i2] == 3) {
                    format = String.format(Locale.US, this.identifierFormatTags[i2], Integer.valueOf(i));
                } else if (iArr[i2] == 4) {
                    format = String.format(Locale.US, this.identifierFormatTags[i2], Long.valueOf(j2));
                }
                sb.append(format);
            }
            i2++;
        }
    }
}
