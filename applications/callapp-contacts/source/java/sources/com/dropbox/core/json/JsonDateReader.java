package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonDateReader.class */
public class JsonDateReader {
    public static final JsonReader<Date> Dropbox = new JsonReader<Date>() { // from class: com.dropbox.core.json.JsonDateReader.1
        @Override // com.dropbox.core.json.JsonReader
        public final Date read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation currentLocation = jsonParser.getCurrentLocation();
            try {
                Date parseDropboxDate = JsonDateReader.parseDropboxDate(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                jsonParser.nextToken();
                return parseDropboxDate;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            } catch (ParseException e2) {
                throw new JsonReadException("bad date: \"" + e2.getMessage() + " at offset " + e2.getErrorOffset(), currentLocation);
            }
        }
    };
    public static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    public static final JsonReader<Date> DropboxV2 = new JsonReader<Date>() { // from class: com.dropbox.core.json.JsonDateReader.2
        @Override // com.dropbox.core.json.JsonReader
        public final Date read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation currentLocation = jsonParser.getCurrentLocation();
            try {
                Date parseDropbox8601Date = JsonDateReader.parseDropbox8601Date(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                jsonParser.nextToken();
                return parseDropbox8601Date;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            } catch (ParseException e2) {
                throw new JsonReadException("bad date: \"" + e2.getMessage() + " at offset " + e2.getErrorOffset(), currentLocation);
            }
        }
    };

    public static int getMonthIndex(char c, char c2, char c3) {
        if (c == 'A') {
            if ((c2 == 'p') && (c3 == 'r')) {
                return 3;
            }
            return (c2 == 'u') & (c3 == 'g') ? 7 : -1;
        } else if (c == 'D') {
            return (c2 == 'e') & (c3 == 'c') ? 11 : -1;
        } else if (c == 'F') {
            return (c2 == 'e') & (c3 == 'b') ? 1 : 0;
        } else if (c == 'J') {
            if ((c2 == 'a') && (c3 == 'n')) {
                return 0;
            }
            if (c2 != 'u') {
                return -1;
            }
            if (c3 == 'n') {
                return 5;
            }
            return c3 == 'l' ? 6 : -1;
        } else if (c == 'S') {
            return (c2 == 'e') & (c3 == 'p') ? 8 : -1;
        } else {
            switch (c) {
                case 'M':
                    if (c2 != 'a') {
                        return -1;
                    }
                    if (c3 == 'r') {
                        return 2;
                    }
                    return c3 == 'y' ? 4 : -1;
                case 'N':
                    return (c2 == 'o') & (c3 == 'v') ? 10 : -1;
                case 'O':
                    return (c2 == 'c') & (c3 == 't') ? 9 : -1;
                default:
                    return -1;
            }
        }
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isValidDayOfWeek(char c, char c2, char c3) {
        if (c == 'F') {
            return (c2 == 'r') & (c3 == 'i');
        } else if (c == 'M') {
            return (c2 == 'o') & (c3 == 'n');
        } else if (c == 'W') {
            return (c2 == 'e') & (c3 == 'd');
        } else if (c == 'S') {
            if ((c2 == 'u') && (c3 == 'n')) {
                return true;
            }
            return (c2 == 'a') & (c3 == 't');
        } else if (c != 'T') {
            return false;
        } else {
            if ((c2 == 'u') && (c3 == 'e')) {
                return true;
            }
            return (c2 == 'h') & (c3 == 'u');
        }
    }

    public static Date parseDropbox8601Date(char[] cArr, int i, int i2) throws ParseException {
        if (i2 == 20 || i2 == 24) {
            String str = new String(cArr, i, i2);
            SimpleDateFormat simpleDateFormat = i2 == 20 ? new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'") : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                Date parse = simpleDateFormat.parse(str);
                if (parse == null) {
                    throw new ParseException("invalid date".concat(str), 0);
                }
                return parse;
            } catch (IllegalArgumentException e) {
                throw new ParseException("invalid characters in date".concat(str), 0);
            }
        }
        throw new ParseException("expecting date to be 20 or 24 characters, got ".concat(String.valueOf(i2)), 0);
    }

    public static Date parseDropboxDate(char[] cArr, int i, int i2) throws ParseException {
        if (i2 == 31) {
            if (cArr.length < i + 31 || i < 0) {
                throw new IllegalArgumentException("range is not within 'b'");
            }
            int i3 = i + 3;
            boolean z = cArr[i3] != ',';
            int i4 = i + 4;
            boolean z2 = cArr[i4] != ' ';
            int i5 = i + 7;
            boolean z3 = cArr[i5] != ' ';
            int i6 = i + 11;
            boolean z4 = cArr[i6] != ' ';
            int i7 = i + 16;
            boolean z5 = cArr[i7] != ' ';
            int i8 = i + 19;
            boolean z6 = cArr[i8] != ':';
            int i9 = i + 22;
            boolean z7 = cArr[i9] != ':';
            int i10 = i + 25;
            boolean z8 = cArr[i10] != ' ';
            int i11 = i + 26;
            boolean z9 = cArr[i11] != '+';
            int i12 = i + 27;
            boolean z10 = cArr[i12] != '0';
            int i13 = i + 28;
            boolean z11 = cArr[i13] != '0';
            int i14 = i + 29;
            boolean z12 = cArr[i14] != '0';
            int i15 = i + 30;
            if ((z8 | z | z2 | z3 | z4 | z5 | z6 | z7 | z9 | z10 | z11 | z12) || (cArr[i15] != '0')) {
                if (cArr[i3] != ',') {
                    throw new ParseException("expecting ','", 3);
                }
                if (cArr[i4] != ' ') {
                    throw new ParseException("expecting ' '", 4);
                }
                if (cArr[i5] != ' ') {
                    throw new ParseException("expecting ' '", 7);
                }
                if (cArr[i6] != ' ') {
                    throw new ParseException("expecting ' '", 11);
                }
                if (cArr[i7] != ' ') {
                    throw new ParseException("expecting ' '", 16);
                }
                if (cArr[i8] != ':') {
                    throw new ParseException("expecting ':'", 19);
                }
                if (cArr[i9] != ':') {
                    throw new ParseException("expecting ':'", 22);
                }
                if (cArr[i10] != ' ') {
                    throw new ParseException("expecting ' '", 25);
                }
                if (cArr[i11] != '+') {
                    throw new ParseException("expecting '+'", 26);
                }
                if (cArr[i12] != '0') {
                    throw new ParseException("expecting '0'", 27);
                }
                if (cArr[i13] != '0') {
                    throw new ParseException("expecting '0'", 28);
                }
                if (cArr[i14] != '0') {
                    throw new ParseException("expecting '0'", 29);
                }
                if (cArr[i15] == '0') {
                    throw new AssertionError("unreachable");
                }
                throw new ParseException("expecting '0'", 30);
            } else if (!isValidDayOfWeek(cArr[i], cArr[i + 1], cArr[i + 2])) {
                throw new ParseException("invalid day of week", i);
            } else {
                int monthIndex = getMonthIndex(cArr[i + 8], cArr[i + 9], cArr[i + 10]);
                if (monthIndex == -1) {
                    throw new ParseException("invalid month", 8);
                }
                char c = cArr[i + 5];
                char c2 = cArr[i + 6];
                if (!isDigit(c) || !isDigit(c2)) {
                    throw new ParseException("invalid day of month", 5);
                }
                char c3 = cArr[i + 12];
                char c4 = cArr[i + 13];
                char c5 = cArr[i + 14];
                char c6 = cArr[i + 15];
                if (((!isDigit(c3)) | (!isDigit(c4)) | (!isDigit(c5))) || (!isDigit(c6))) {
                    throw new ParseException("invalid year", 12);
                }
                char c7 = cArr[i + 17];
                char c8 = cArr[i + 18];
                if ((!isDigit(c7)) || (!isDigit(c8))) {
                    throw new ParseException("invalid hour", 17);
                }
                char c9 = cArr[i + 20];
                char c10 = cArr[i + 21];
                if ((!isDigit(c9)) || (!isDigit(c10))) {
                    throw new ParseException("invalid minute", 20);
                }
                char c11 = cArr[i + 23];
                char c12 = cArr[i + 24];
                if ((!isDigit(c11)) || (true ^ isDigit(c12))) {
                    throw new ParseException("invalid second", 23);
                }
                GregorianCalendar gregorianCalendar = new GregorianCalendar(((((c3 * 1000) + (c4 * 'd')) + (c5 * '\n')) + c6) - 53328, monthIndex, ((c * '\n') + c2) - 528, ((c7 * '\n') + c8) - 528, ((c9 * '\n') + c10) - 528, ((c11 * '\n') + c12) - 528);
                gregorianCalendar.setTimeZone(UTC);
                return gregorianCalendar.getTime();
            }
        }
        throw new ParseException("expecting date to be 31 characters, got ".concat(String.valueOf(i2)), 0);
    }
}
