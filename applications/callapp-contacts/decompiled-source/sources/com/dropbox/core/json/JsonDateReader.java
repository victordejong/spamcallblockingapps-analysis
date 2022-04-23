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

    public static int getMonthIndex(char c2, char c3, char c4) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        if (c2 == 'A') {
            if ((c3 == 'p') && (c4 == 'r')) {
                return 3;
            }
            boolean z7 = c3 == 'u';
            if (c4 != 'g') {
                z5 = false;
            }
            return z7 & z5 ? 7 : -1;
        } else if (c2 == 'D') {
            boolean z8 = c3 == 'e';
            if (c4 != 'c') {
                z4 = false;
            }
            return z8 & z4 ? 11 : -1;
        } else if (c2 == 'F') {
            return (c3 == 'e') & (c4 == 'b') ? 1 : 0;
        } else if (c2 == 'J') {
            boolean z9 = c3 == 'a';
            if (c4 != 'n') {
                z3 = false;
            }
            if (z9 && z3) {
                return 0;
            }
            if (c3 != 'u') {
                return -1;
            }
            if (c4 == 'n') {
                return 5;
            }
            return c4 == 'l' ? 6 : -1;
        } else if (c2 != 'S') {
            switch (c2) {
                case 'M':
                    if (c3 != 'a') {
                        return -1;
                    }
                    if (c4 == 'r') {
                        return 2;
                    }
                    return c4 == 'y' ? 4 : -1;
                case 'N':
                    boolean z10 = c3 == 'o';
                    if (c4 != 'v') {
                        z = false;
                    }
                    return z10 & z ? 10 : -1;
                case 'O':
                    boolean z11 = c3 == 'c';
                    if (c4 != 't') {
                        z6 = false;
                    }
                    return z11 & z6 ? 9 : -1;
                default:
                    return -1;
            }
        } else {
            boolean z12 = c3 == 'e';
            if (c4 != 'p') {
                z2 = false;
            }
            return z12 & z2 ? 8 : -1;
        }
    }

    private static boolean isDigit(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean isValidDayOfWeek(char c2, char c3, char c4) {
        if (c2 == 'F') {
            return (c3 == 'r') & (c4 == 'i');
        } else if (c2 == 'M') {
            return (c3 == 'o') & (c4 == 'n');
        } else if (c2 == 'W') {
            return (c3 == 'e') & (c4 == 'd');
        } else if (c2 == 'S') {
            if ((c3 == 'u') && (c4 == 'n')) {
                return true;
            }
            return (c3 == 'a') & (c4 == 't');
        } else if (c2 != 'T') {
            return false;
        } else {
            if ((c3 == 'u') && (c4 == 'e')) {
                return true;
            }
            return (c3 == 'h') & (c4 == 'u');
        }
    }

    public static Date parseDropbox8601Date(char[] cArr, int i, int i2) throws ParseException {
        if (i2 == 20 || i2 == 24) {
            String str = new String(cArr, i, i2);
            SimpleDateFormat simpleDateFormat = i2 == 20 ? new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'") : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                Date parse = simpleDateFormat.parse(str);
                if (parse != null) {
                    return parse;
                }
                throw new ParseException("invalid date".concat(str), 0);
            } catch (IllegalArgumentException e) {
                throw new ParseException("invalid characters in date".concat(str), 0);
            }
        } else {
            throw new ParseException("expecting date to be 20 or 24 characters, got ".concat(String.valueOf(i2)), 0);
        }
    }

    public static Date parseDropboxDate(char[] cArr, int i, int i2) throws ParseException {
        if (i2 != 31) {
            throw new ParseException("expecting date to be 31 characters, got ".concat(String.valueOf(i2)), 0);
        } else if (cArr.length < i + 31 || i < 0) {
            throw new IllegalArgumentException("range is not within 'b'");
        } else {
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
                } else if (cArr[i4] != ' ') {
                    throw new ParseException("expecting ' '", 4);
                } else if (cArr[i5] != ' ') {
                    throw new ParseException("expecting ' '", 7);
                } else if (cArr[i6] != ' ') {
                    throw new ParseException("expecting ' '", 11);
                } else if (cArr[i7] != ' ') {
                    throw new ParseException("expecting ' '", 16);
                } else if (cArr[i8] != ':') {
                    throw new ParseException("expecting ':'", 19);
                } else if (cArr[i9] != ':') {
                    throw new ParseException("expecting ':'", 22);
                } else if (cArr[i10] != ' ') {
                    throw new ParseException("expecting ' '", 25);
                } else if (cArr[i11] != '+') {
                    throw new ParseException("expecting '+'", 26);
                } else if (cArr[i12] != '0') {
                    throw new ParseException("expecting '0'", 27);
                } else if (cArr[i13] != '0') {
                    throw new ParseException("expecting '0'", 28);
                } else if (cArr[i14] != '0') {
                    throw new ParseException("expecting '0'", 29);
                } else if (cArr[i15] != '0') {
                    throw new ParseException("expecting '0'", 30);
                } else {
                    throw new AssertionError("unreachable");
                }
            } else if (isValidDayOfWeek(cArr[i], cArr[i + 1], cArr[i + 2])) {
                int monthIndex = getMonthIndex(cArr[i + 8], cArr[i + 9], cArr[i + 10]);
                if (monthIndex != -1) {
                    char c2 = cArr[i + 5];
                    char c3 = cArr[i + 6];
                    if (!isDigit(c2) || !isDigit(c3)) {
                        throw new ParseException("invalid day of month", 5);
                    }
                    char c4 = cArr[i + 12];
                    char c5 = cArr[i + 13];
                    char c6 = cArr[i + 14];
                    char c7 = cArr[i + 15];
                    if (!((!isDigit(c4)) | (!isDigit(c5)) | (!isDigit(c6))) && !(!isDigit(c7))) {
                        char c8 = cArr[i + 17];
                        char c9 = cArr[i + 18];
                        if (!(!isDigit(c8)) && !(!isDigit(c9))) {
                            char c10 = cArr[i + 20];
                            char c11 = cArr[i + 21];
                            if (!(!isDigit(c10)) && !(!isDigit(c11))) {
                                char c12 = cArr[i + 23];
                                char c13 = cArr[i + 24];
                                if (!(!isDigit(c12)) && !(true ^ isDigit(c13))) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(((((c4 * 1000) + (c5 * 'd')) + (c6 * '\n')) + c7) - 53328, monthIndex, ((c2 * '\n') + c3) - 528, ((c8 * '\n') + c9) - 528, ((c10 * '\n') + c11) - 528, ((c12 * '\n') + c13) - 528);
                                    gregorianCalendar.setTimeZone(UTC);
                                    return gregorianCalendar.getTime();
                                }
                                throw new ParseException("invalid second", 23);
                            }
                            throw new ParseException("invalid minute", 20);
                        }
                        throw new ParseException("invalid hour", 17);
                    }
                    throw new ParseException("invalid year", 12);
                }
                throw new ParseException("invalid month", 8);
            } else {
                throw new ParseException("invalid day of week", i);
            }
        }
    }
}
