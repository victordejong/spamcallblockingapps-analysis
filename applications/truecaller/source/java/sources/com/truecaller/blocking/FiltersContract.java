package com.truecaller.blocking;

import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FiltersContract.class */
public class FiltersContract {

    /* renamed from: a */
    public static Uri f10461a = Uri.parse("content://com.truecaller");

    /* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FiltersContract$Filters.class */
    public static final class Filters implements BaseColumns, AbstractC3553a {

        /* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FiltersContract$Filters$EntityType.class */
        public enum EntityType {
            UNKNOWN(0),
            PERSON(1),
            BUSINESS(2);
            
            public final int value;

            EntityType(int i) {
                this.value = i;
            }

            public static EntityType fromIsBusiness(boolean z) {
                return z ? BUSINESS : PERSON;
            }

            public static EntityType fromValue(int i) {
                EntityType[] values = values();
                for (int i2 = 0; i2 < 3; i2++) {
                    if (values[i2].value == i) {
                        return values[i2];
                    }
                }
                return UNKNOWN;
            }
        }

        /* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FiltersContract$Filters$WildCardType.class */
        public enum WildCardType {
            NONE("", "", 0, 0),
            START("^", ".*", 1, 0),
            CONTAIN(".*", ".*", 2, 2),
            END(".*", "$", 3, 0);
            
            public final int patternFlags;
            public final String prefix;
            public final String prefixQuoted;
            public final String suffix;
            public final String suffixQuoted;
            public final int type;

            WildCardType(String str, String str2, int i, int i2) {
                this.prefix = str;
                this.prefixQuoted = C22128a.m8543z2(str, "\\Q");
                this.suffix = str2;
                this.suffixQuoted = C22128a.m8543z2("\\E", str2);
                this.type = i;
                this.patternFlags = i2;
            }

            public static WildCardType valueOfPattern(String str) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        WildCardType[] values = values();
                        for (int i = 0; i < 4; i++) {
                            WildCardType wildCardType = values[i];
                            if (wildCardType != NONE && str.startsWith(wildCardType.prefix) && str.endsWith(wildCardType.suffix)) {
                                wildCardType.compilePattern(str);
                                return wildCardType;
                            }
                        }
                    } catch (PatternSyntaxException e) {
                    }
                }
                return NONE;
            }

            public static WildCardType valueOfType(int i) {
                WildCardType[] values = values();
                for (int i2 = 0; i2 < 4; i2++) {
                    if (values[i2].type == i) {
                        return values[i2];
                    }
                }
                return NONE;
            }

            public Pattern compilePattern(String str) throws PatternSyntaxException {
                try {
                    return Pattern.compile(str, this.patternFlags);
                } catch (PatternSyntaxException e) {
                    String stripPattern = stripPattern(str);
                    if (TextUtils.equals(str, stripPattern)) {
                        throw e;
                    }
                    return Pattern.compile(formatPattern(stripPattern));
                }
            }

            public String formatPattern(String str) {
                return this.prefix + Pattern.quote(str) + this.suffix;
            }

            public String getPrefix() {
                return this.prefix;
            }

            public String getSuffix() {
                return this.suffix;
            }

            public int getType() {
                return this.type;
            }

            public String stripPattern(String str) {
                String str2;
                String str3 = str;
                if (this != NONE) {
                    str3 = str;
                    if (!TextUtils.isEmpty(str)) {
                        if (str.startsWith(this.prefixQuoted)) {
                            str2 = str.substring(this.prefixQuoted.length());
                        } else {
                            str2 = str;
                            if (str.startsWith(this.prefix)) {
                                str2 = str.substring(this.prefix.length());
                            }
                        }
                        if (str2.endsWith(this.suffixQuoted)) {
                            str3 = str2.substring(0, str2.length() - this.suffixQuoted.length());
                        } else {
                            str3 = str2;
                            if (str2.endsWith(this.suffix)) {
                                str3 = str2.substring(0, str2.length() - this.suffix.length());
                            }
                        }
                    }
                }
                String str4 = str3;
                if (str3 == null) {
                    str4 = "";
                }
                return str4;
            }
        }

        /* renamed from: a */
        public static Uri m35810a() {
            return Uri.withAppendedPath(FiltersContract.f10461a, "filters");
        }
    }

    /* renamed from: com.truecaller.blocking.FiltersContract$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/blocking/FiltersContract$a.class */
    public interface AbstractC3553a {

        /* renamed from: a */
        public static final List<String> f10462a = Arrays.asList("PHONE_NUMBER", "REG_EXP", "COUNTRY_CODE", "IM_ID", "OTHER");
    }
}
