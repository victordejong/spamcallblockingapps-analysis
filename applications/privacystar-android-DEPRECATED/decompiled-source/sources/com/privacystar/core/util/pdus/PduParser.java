package com.privacystar.core.util.pdus;

import android.util.Log;
import com.privacystar.core.util.exception.FieldMissingException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/pdus/PduParser.class */
public class PduParser {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int END_STRING_FLAG = 0;
    private static final int LENGTH_QUOTE = 31;
    private static final String LOG_TAG = "PduParser";
    private static final int LONG_INTEGER_LENGTH_MAX = 8;
    private static final int QUOTE = 127;
    private static final int QUOTED_STRING_FLAG = 34;
    private static final int SHORT_INTEGER_MAX = 127;
    private static final int SHORT_LENGTH_MAX = 30;
    private static final int TEXT_MAX = 127;
    private static final int TEXT_MIN = 32;
    private static final int TYPE_QUOTED_STRING = 1;
    private static final int TYPE_TEXT_STRING = 0;
    private static final int TYPE_TOKEN_STRING = 2;

    protected static boolean checkMandatoryHeader(PduHeaders pduHeaders) {
        if (pduHeaders == null) {
            return false;
        }
        int octet = pduHeaders.getOctet(140);
        if (pduHeaders.getOctet(141) == 0) {
            return false;
        }
        switch (octet) {
            case 128:
                return (pduHeaders.getTextString(132) == null || pduHeaders.getEncodedStringValue(137) == null || pduHeaders.getTextString(152) == null) ? false : true;
            case 129:
                return (pduHeaders.getOctet(146) == 0 || pduHeaders.getTextString(152) == null) ? false : true;
            case 130:
                return (pduHeaders.getTextString(131) == null || -1 == pduHeaders.getLongInteger(136) || pduHeaders.getTextString(138) == null || -1 == pduHeaders.getLongInteger(142) || pduHeaders.getTextString(152) == null) ? false : true;
            case 131:
                return (pduHeaders.getOctet(149) == 0 || pduHeaders.getTextString(152) == null) ? false : true;
            case 132:
                return (pduHeaders.getTextString(132) == null || -1 == pduHeaders.getLongInteger(133)) ? false : true;
            case 133:
                return pduHeaders.getTextString(152) != null;
            case 134:
                return (-1 == pduHeaders.getLongInteger(133) || pduHeaders.getTextString(139) == null || pduHeaders.getOctet(149) == 0 || pduHeaders.getEncodedStringValues(151) == null) ? false : true;
            case 135:
                return (pduHeaders.getEncodedStringValue(137) == null || pduHeaders.getTextString(139) == null || pduHeaders.getOctet(155) == 0 || pduHeaders.getEncodedStringValues(151) == null) ? false : true;
            case 136:
                return (-1 == pduHeaders.getLongInteger(133) || pduHeaders.getEncodedStringValue(137) == null || pduHeaders.getTextString(139) == null || pduHeaders.getOctet(155) == 0 || pduHeaders.getEncodedStringValues(151) == null) ? false : true;
            default:
                return false;
        }
    }

    protected static int extractByteValue(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 255;
    }

    protected static byte[] getWapString(ByteArrayInputStream byteArrayInputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int read = byteArrayInputStream.read();
        while (-1 != read && read != 0) {
            if (i == 2) {
                if (isTokenCharacter(read)) {
                    byteArrayOutputStream.write(read);
                }
            } else if (isText(read)) {
                byteArrayOutputStream.write(read);
            }
            read = byteArrayInputStream.read();
        }
        if (byteArrayOutputStream.size() > 0) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    protected static boolean isText(int i) {
        if (i >= 32 && i <= 126) {
            return true;
        }
        if ((i >= 128 && i <= 255) || i == 13) {
            return true;
        }
        switch (i) {
            case 9:
            case 10:
                return true;
            default:
                return false;
        }
    }

    protected static boolean isTokenCharacter(int i) {
        if (i < 33 || i > 126 || i == 34 || i == 44 || i == 47 || i == 123 || i == 125) {
            return false;
        }
        switch (i) {
            case 40:
            case 41:
                return false;
            default:
                switch (i) {
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                        return false;
                    default:
                        switch (i) {
                            case 91:
                            case 92:
                            case 93:
                                return false;
                            default:
                                return true;
                        }
                }
        }
    }

    private static void log(String str) {
        Timber.m28v(str, new Object[0]);
    }

    protected static byte[] parseContentType(ByteArrayInputStream byteArrayInputStream, HashMap<Integer, Object> hashMap) {
        byte[] bArr;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        int i = read & 255;
        if (i < 32) {
            int parseValueLength = parseValueLength(byteArrayInputStream);
            int available = byteArrayInputStream.available();
            byteArrayInputStream.mark(1);
            int read2 = byteArrayInputStream.read();
            byteArrayInputStream.reset();
            int i2 = read2 & 255;
            if (i2 >= 32 && i2 <= 127) {
                bArr = parseWapString(byteArrayInputStream, 0);
            } else if (i2 > 127) {
                int parseShortInteger = parseShortInteger(byteArrayInputStream);
                if (parseShortInteger < PduContentTypes.getContentTypes().length) {
                    bArr = PduContentTypes.getContentTypes()[parseShortInteger].getBytes();
                } else {
                    byteArrayInputStream.reset();
                    bArr = parseWapString(byteArrayInputStream, 0);
                }
            } else {
                Timber.m34e("Corrupt content-type", new Object[0]);
                return PduContentTypes.getContentTypes()[0].getBytes();
            }
            int available2 = parseValueLength - (available - byteArrayInputStream.available());
            if (available2 > 0) {
                parseContentTypeParams(byteArrayInputStream, hashMap, Integer.valueOf(available2));
            }
            if (available2 < 0) {
                Timber.m34e("Corrupt MMS message", new Object[0]);
                return PduContentTypes.getContentTypes()[0].getBytes();
            }
        } else {
            bArr = i <= 127 ? parseWapString(byteArrayInputStream, 0) : PduContentTypes.getContentTypes()[parseShortInteger(byteArrayInputStream)].getBytes();
        }
        return bArr;
    }

    protected static void parseContentTypeParams(ByteArrayInputStream byteArrayInputStream, HashMap<Integer, Object> hashMap, Integer num) {
        int available = byteArrayInputStream.available();
        int intValue = num.intValue();
        while (intValue > 0) {
            int read = byteArrayInputStream.read();
            intValue--;
            if (read != 129) {
                if (read != 131) {
                    if (read == 133 || read == 151) {
                        byte[] parseWapString = parseWapString(byteArrayInputStream, 0);
                        if (!(parseWapString == null || hashMap == null)) {
                            hashMap.put(151, parseWapString);
                        }
                        intValue = num.intValue() - (available - byteArrayInputStream.available());
                    } else {
                        if (read != 153) {
                            switch (read) {
                                case 137:
                                    break;
                                case 138:
                                    break;
                                default:
                                    Log.v(LOG_TAG, "Not supported Content-Type parameter");
                                    if (-1 != skipWapValue(byteArrayInputStream, intValue)) {
                                        intValue = 0;
                                        break;
                                    } else {
                                        Log.e(LOG_TAG, "Corrupt Content-Type");
                                        break;
                                    }
                            }
                        }
                        byte[] parseWapString2 = parseWapString(byteArrayInputStream, 0);
                        if (!(parseWapString2 == null || hashMap == null)) {
                            hashMap.put(153, parseWapString2);
                        }
                        intValue = num.intValue() - (available - byteArrayInputStream.available());
                    }
                }
                byteArrayInputStream.mark(1);
                int extractByteValue = extractByteValue(byteArrayInputStream);
                byteArrayInputStream.reset();
                if (extractByteValue > 127) {
                    int parseShortInteger = parseShortInteger(byteArrayInputStream);
                    if (parseShortInteger < PduContentTypes.getContentTypes().length) {
                        hashMap.put(131, PduContentTypes.getContentTypes()[parseShortInteger].getBytes());
                    }
                } else {
                    byte[] parseWapString3 = parseWapString(byteArrayInputStream, 0);
                    if (!(parseWapString3 == null || hashMap == null)) {
                        hashMap.put(131, parseWapString3);
                    }
                }
                intValue = num.intValue() - (available - byteArrayInputStream.available());
            } else {
                byteArrayInputStream.mark(1);
                int extractByteValue2 = extractByteValue(byteArrayInputStream);
                byteArrayInputStream.reset();
                if ((extractByteValue2 <= 32 || extractByteValue2 >= 127) && extractByteValue2 != 0) {
                    int parseIntegerValue = (int) parseIntegerValue(byteArrayInputStream);
                    if (hashMap != null) {
                        hashMap.put(129, Integer.valueOf(parseIntegerValue));
                    }
                } else {
                    byte[] parseWapString4 = parseWapString(byteArrayInputStream, 0);
                    try {
                        hashMap.put(129, Integer.valueOf(CharacterSets.getMibEnumValue(new String(parseWapString4))));
                    } catch (UnsupportedEncodingException e) {
                        Timber.m32e(e, "%s", Arrays.toString(parseWapString4));
                        hashMap.put(129, 0);
                    }
                }
                intValue = num.intValue() - (available - byteArrayInputStream.available());
            }
        }
        if (intValue != 0) {
            Log.e(LOG_TAG, "Corrupt Content-Type");
        }
    }

    protected static EncodedStringValue parseEncodedStringValue(ByteArrayInputStream byteArrayInputStream) {
        int i;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        if ((read & 255) < 32) {
            parseValueLength(byteArrayInputStream);
            i = parseShortInteger(byteArrayInputStream);
        } else {
            i = 0;
        }
        byte[] parseWapString = parseWapString(byteArrayInputStream, 0);
        try {
            return i != 0 ? new EncodedStringValue(i, parseWapString) : new EncodedStringValue(parseWapString);
        } catch (Exception e) {
            Timber.m32e(e, "", new Object[0]);
            return null;
        }
    }

    protected static long parseIntegerValue(ByteArrayInputStream byteArrayInputStream) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        return read > 127 ? parseShortInteger(byteArrayInputStream) : parseLongInteger(byteArrayInputStream);
    }

    protected static long parseLongInteger(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read > 8) {
            throw new FieldMissingException("Octet count greater than 8 and I can't represent that!");
        }
        long j = 0;
        for (int i = 0; i < read; i++) {
            j = (j << 8) + (byteArrayInputStream.read() & 255);
        }
        return j;
    }

    protected static int parseShortInteger(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 127;
    }

    protected static int parseUnsignedInt(ByteArrayInputStream byteArrayInputStream) {
        int i = 0;
        int read = byteArrayInputStream.read();
        int i2 = read;
        if (read == -1) {
            return read;
        }
        while ((i2 & 128) != 0) {
            i = (i << 7) | (i2 & 127);
            int read2 = byteArrayInputStream.read();
            i2 = read2;
            if (read2 == -1) {
                return read2;
            }
        }
        return (i << 7) | (i2 & 127);
    }

    protected static int parseValueLength(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read <= 30) {
            return read;
        }
        if (read == 31) {
            return parseUnsignedInt(byteArrayInputStream);
        }
        throw new IndexOutOfBoundsException("Value length > LENGTH_QUOTE!");
    }

    protected static byte[] parseWapString(ByteArrayInputStream byteArrayInputStream, int i) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        if (1 == i && 34 == read) {
            byteArrayInputStream.mark(1);
        } else if (i == 0 && 127 == read) {
            byteArrayInputStream.mark(1);
        } else {
            byteArrayInputStream.reset();
        }
        return getWapString(byteArrayInputStream, i);
    }

    protected static int skipWapValue(ByteArrayInputStream byteArrayInputStream, int i) {
        int read = byteArrayInputStream.read(new byte[i], 0, i);
        if (read < i) {
            return -1;
        }
        return read;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.privacystar.core.util.pdus.PduHeaders] */
    /* JADX WARN: Type inference failed for: r0v178, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.privacystar.core.util.pdus.PduHeaders parseHeaders(java.io.ByteArrayInputStream r8) {
        /*
            Method dump skipped, instructions count: 1777
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.pdus.PduParser.parseHeaders(java.io.ByteArrayInputStream):com.privacystar.core.util.pdus.PduHeaders");
    }

    public PduHeaders parseHeaders(byte[] bArr) {
        PduHeaders parseHeaders = parseHeaders(new ByteArrayInputStream(bArr));
        if (parseHeaders == null) {
            return null;
        }
        if (checkMandatoryHeader(parseHeaders)) {
            return parseHeaders;
        }
        log("check mandatory headers failed!");
        return null;
    }
}
