.class public Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CC_STRING:Ljava/lang/String; = "$CC"

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_STRING:Ljava/lang/String; = "$FG"

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_STRING:Ljava/lang/String; = "$NP"

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final matcherApi:Lcom/google/i18n/phonenumbers/a/a;

.field private final metadataSource:Lcom/google/i18n/phonenumbers/e;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regexCache:Lcom/google/i18n/phonenumbers/a/c;

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 57
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v3, "9"

    .line 125
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x56

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 133
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x34

    .line 148
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x37

    .line 151
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x30

    .line 144
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x31

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    .line 146
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x33

    .line 147
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x35

    .line 149
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x38

    .line 152
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x39

    .line 153
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    const/16 v11, 0x41

    .line 156
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x42

    .line 157
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x43

    .line 158
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x44

    .line 159
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x45

    .line 160
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x46

    .line 161
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x47

    .line 162
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x48

    .line 163
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x49

    .line 164
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4a

    .line 165
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4b

    .line 166
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4c

    .line 167
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4d

    .line 168
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4e

    .line 169
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    .line 170
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 171
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 172
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 173
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 174
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 175
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 179
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 181
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 184
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v3, 0x2b

    .line 191
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2a

    .line 192
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x23

    .line 193
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 199
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x2d

    .line 204
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0d

    .line 205
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2010

    .line 206
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2011

    .line 207
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2012

    .line 208
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2013

    .line 209
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2014

    .line 210
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2015

    .line 211
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2212

    .line 212
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 213
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0f

    .line 214
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 215
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3000

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2060

    .line 217
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 218
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0e

    .line 219
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 230
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[, \\[\\]]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    const-string v1, "[+\uff0b]+"

    .line 248
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    .line 249
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(\\p{Nd})"

    .line 250
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[+\uff0b\\p{Nd}]"

    .line 259
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[\\\\/] *x"

    .line 267
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    .line 273
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    .line 277
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\p{Nd}]*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    const/4 v1, 0x1

    .line 309
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    const/4 v2, 0x0

    .line 310
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(?:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\D+)"

    .line 410
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\$\\d)"

    .line 416
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\(?\\$1\\)?"

    .line 426
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 428
    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4030
    new-instance v0, Lcom/google/i18n/phonenumbers/a/b;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/a/b;-><init>()V

    .line 657
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    .line 662
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 667
    new-instance v0, Lcom/google/i18n/phonenumbers/a/c;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    .line 672
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 676
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 684
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    .line 685
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 686
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "001"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 690
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 701
    :cond_1
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 702
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 705
    :cond_2
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, ";phone-context="

    .line 3322
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v1, v0, 0xf

    .line 3327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3328
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    const/16 v2, 0x3b

    .line 3332
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 3334
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3336
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, "tel:"

    .line 3344
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3347
    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3351
    :cond_3
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p1, ";isub="

    .line 3356
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 3358
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 0

    .line 3042
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 3044
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3045
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 829
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static copyCoreFieldsOnly(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 3

    .line 3372
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 50438
    iget v1, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 3373
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    .line 50439
    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 3374
    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/k$a;->a(J)Lcom/google/i18n/phonenumbers/k$a;

    .line 50440
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 3375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 50441
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 3376
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 50442
    :cond_0
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3379
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(Z)Lcom/google/i18n/phonenumbers/k$a;

    .line 50443
    iget p0, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    .line 3381
    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/k$a;->b(I)Lcom/google/i18n/phonenumbers/k$a;

    :cond_1
    return-object v0
.end method

.method private static createExtnPattern(Z)Ljava/lang/String;
    .locals 8

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";ext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ \u00a0\\t,]*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 357
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[- ]+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string p0, "[ \u00a0\\t]*"

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(?:,{2}|;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    .line 385
    invoke-static {v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(?:,)+"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method public static createInstance(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    if-eqz p0, :cond_0

    .line 1173
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    invoke-direct {v0, p0}, Lcom/google/i18n/phonenumbers/f;-><init>(Lcom/google/i18n/phonenumbers/c;)V

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p0

    return-object p0

    .line 1171
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataLoader could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createInstance(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    if-eqz p0, :cond_0

    .line 1192
    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 1193
    invoke-static {}, Lcom/google/i18n/phonenumbers/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;-><init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V

    return-object v0

    .line 1190
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataSource could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static descHasData(Lcom/google/i18n/phonenumbers/j$d;)Z
    .locals 1

    .line 7288
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/j$d;->e:Z

    if-nez v0, :cond_1

    .line 1083
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8236
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/j$d;->a:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static descHasPossibleNumberData(Lcom/google/i18n/phonenumbers/j$d;)Z
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7256
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private static extnDigits(I)Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\\p{Nd}{1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 724
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 728
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 733
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1912
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 27780
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->z:Ljava/util/List;

    .line 1927
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 28780
    :cond_0
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->z:Ljava/util/List;

    goto :goto_1

    .line 28756
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 1930
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p2

    if-nez p2, :cond_2

    return-object p1

    .line 1933
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 29093
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$a;->b:Ljava/lang/String;

    .line 1966
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    .line 30082
    iget-object v2, p2, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 1967
    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1969
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    .line 1970
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 30154
    iget-object v1, p2, Lcom/google/i18n/phonenumbers/j$a;->f:Ljava/lang/String;

    .line 1971
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 31154
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$a;->f:Ljava/lang/String;

    const-string v1, "$CC"

    .line 1974
    invoke-virtual {p2, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1977
    sget-object p4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 1978
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32123
    :cond_0
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 1983
    sget-object p4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p3, p4, :cond_1

    if-eqz p2, :cond_1

    .line 1985
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 1986
    sget-object p4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 1988
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1990
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1993
    :goto_1
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p3, p2, :cond_3

    .line 1995
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1996
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, ""

    .line 1997
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2000
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method static formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .locals 1

    .line 1201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1202
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 2

    .line 2445
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50415
    iget p1, v0, Lcom/google/i18n/phonenumbers/j$b;->m:I

    return p1

    .line 2447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid region code: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCountryMobileToken(I)Ljava/lang/String;
    .locals 2

    .line 984
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1151
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v1, :cond_0

    .line 1152
    sget-object v1, Lcom/google/i18n/phonenumbers/d;->a:Lcom/google/i18n/phonenumbers/c;

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 1154
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;
    .locals 1

    const-string v0, "001"

    .line 1404
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    return-object p1

    .line 1406
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    return-object p1
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;
    .locals 1

    .line 47385
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    .line 2229
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2230
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 47447
    :cond_0
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->e:Lcom/google/i18n/phonenumbers/j$d;

    .line 2233
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2234
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 48433
    :cond_1
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->d:Lcom/google/i18n/phonenumbers/j$d;

    .line 2236
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2237
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->TOLL_FREE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 48461
    :cond_2
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->f:Lcom/google/i18n/phonenumbers/j$d;

    .line 2239
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2240
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->SHARED_COST:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 48489
    :cond_3
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->h:Lcom/google/i18n/phonenumbers/j$d;

    .line 2242
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2243
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->VOIP:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 49475
    :cond_4
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->g:Lcom/google/i18n/phonenumbers/j$d;

    .line 2245
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2246
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 49503
    :cond_5
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->i:Lcom/google/i18n/phonenumbers/j$d;

    .line 2248
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2249
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 49517
    :cond_6
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->j:Lcom/google/i18n/phonenumbers/j$d;

    .line 2251
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2252
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UAN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 49545
    :cond_7
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->k:Lcom/google/i18n/phonenumbers/j$d;

    .line 2254
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2255
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->VOICEMAIL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 50405
    :cond_8
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$b;->b:Lcom/google/i18n/phonenumbers/j$d;

    .line 2258
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50406
    iget-boolean v0, p2, Lcom/google/i18n/phonenumbers/j$b;->x:Z

    if-eqz v0, :cond_9

    .line 2261
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 50407
    :cond_9
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->c:Lcom/google/i18n/phonenumbers/j$d;

    .line 2262
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2263
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 2265
    :cond_a
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 50408
    :cond_b
    iget-boolean v0, p2, Lcom/google/i18n/phonenumbers/j$b;->x:Z

    if-nez v0, :cond_c

    .line 50409
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->c:Lcom/google/i18n/phonenumbers/j$d;

    .line 2270
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2271
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 2273
    :cond_c
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/k$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2377
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    .line 2378
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2381
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v1

    .line 50413
    iget-boolean v2, v1, Lcom/google/i18n/phonenumbers/j$b;->A:Z

    if-eqz v2, :cond_1

    .line 2383
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    .line 50414
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$b;->B:Ljava/lang/String;

    .line 2383
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2384
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2387
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v1

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSupportedTypesForMetadata(Lcom/google/i18n/phonenumbers/j$b;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/j$b;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;",
            ">;"
        }
    .end annotation

    .line 1092
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1093
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1094
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v4, v5, :cond_0

    .line 1099
    invoke-virtual {p0, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object v5

    invoke-static {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1100
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private hasFormattingPatternForNumber(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 2

    .line 21047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1741
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1743
    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1747
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    .line 21756
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 1749
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 2

    .line 50450
    iget-wide v0, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 3448
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 50451
    iget-wide v0, p2, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 3449
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 3451
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3452
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static isViablePhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 755
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 758
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 38078
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v0, :cond_2

    .line 38079
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 2171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2172
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p3, v0, :cond_0

    const-string p2, ";ext="

    .line 2173
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39079
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 2173
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 39693
    :cond_0
    iget-boolean p3, p2, Lcom/google/i18n/phonenumbers/j$b;->s:Z

    if-eqz p3, :cond_1

    .line 39694
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->t:Ljava/lang/String;

    .line 2176
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40079
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 2176
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string p2, " ext. "

    .line 2178
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41079
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 2178
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method static normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 779
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public static normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 821
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 5

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 801
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 802
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 803
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-static {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1006
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1007
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1008
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_0

    .line 1010
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 1012
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 3208
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_f

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3214
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3215
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3217
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p4, :cond_1

    .line 3224
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 3225
    :cond_0
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "Missing or invalid default region."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 3230
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 3234
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    .line 3236
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 3239
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    .line 3242
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    .line 3248
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/k$a;)I

    move-result v1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3251
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 50435
    iget-object v3, v1, Lcom/google/i18n/phonenumbers/NumberParseException;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    .line 3252
    sget-object v4, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    if-ne v3, v4, :cond_d

    .line 3253
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3255
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/k$a;)I

    move-result v1

    if-eqz v1, :cond_c

    :goto_1
    if-eqz v1, :cond_4

    .line 3267
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 3268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3270
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    goto :goto_2

    .line 3275
    :cond_4
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 50437
    iget p2, p1, Lcom/google/i18n/phonenumbers/j$b;->m:I

    .line 3278
    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 3280
    invoke-virtual {p5}, Lcom/google/i18n/phonenumbers/k$a;->b()Lcom/google/i18n/phonenumbers/k$a;

    .line 3283
    :cond_6
    :goto_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const-string v0, "The string supplied is too short to be a phone number."

    const/4 v1, 0x2

    if-lt p2, v1, :cond_b

    if-eqz p1, :cond_8

    .line 3288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3290
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;)Z

    .line 3294
    invoke-direct {p0, v2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    .line 3295
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p1, v3, :cond_8

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p1, v3, :cond_8

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p1, v3, :cond_8

    if-eqz p3, :cond_7

    .line 3299
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 3300
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    :cond_7
    move-object p4, v2

    .line 3304
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lt p1, v1, :cond_a

    const/16 p2, 0x11

    if-gt p1, p2, :cond_9

    .line 3313
    invoke-static {p4, p5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/k$a;)V

    .line 3314
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/i18n/phonenumbers/k$a;->a(J)Lcom/google/i18n/phonenumbers/k$a;

    return-void

    .line 3310
    :cond_9
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "The string supplied is too long to be a phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3306
    :cond_a
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3284
    :cond_b
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3259
    :cond_c
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "Could not interpret numbers after plus-sign."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3263
    :cond_d
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    .line 50436
    iget-object p2, v1, Lcom/google/i18n/phonenumbers/NumberParseException;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    .line 3263
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3218
    :cond_e
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "The string supplied did not seem to be a phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3209
    :cond_f
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "The string supplied was too long to parse."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 3206
    :cond_10
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "The phone number supplied was null."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 2895
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2896
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2897
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 2900
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2901
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2902
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    .line 2903
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2907
    :cond_0
    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v3

    :cond_1
    return v1
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1893
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->b:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const-string p2, "-"

    .line 1901
    invoke-virtual {p3, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "tel:"

    .line 1902
    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string p2, " "

    .line 1898
    invoke-virtual {p3, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    .line 1895
    :cond_2
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1723
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1724
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1731
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    .line 1730
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method static declared-synchronized setInstance(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 1

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1025
    :try_start_0
    sput-object p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/k$a;)V
    .locals 4

    .line 3178
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    .line 3179
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(Z)Lcom/google/i18n/phonenumbers/k$a;

    const/4 v0, 0x1

    .line 3183
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 3184
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 3188
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/k$a;->b(I)Lcom/google/i18n/phonenumbers/k$a;

    :cond_1
    return-void
.end method

.method private testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;
    .locals 1

    .line 2557
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    return-object p1
.end method

.method private testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;
    .locals 3

    .line 2566
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object v0

    .line 50417
    iget-object v1, v0, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    .line 2573
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50418
    iget-object v1, p2, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    .line 50419
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    goto :goto_1

    .line 50420
    :cond_0
    iget-object v1, v0, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    .line 50421
    :goto_1
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$d;->d:Ljava/util/List;

    .line 2578
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne p3, v2, :cond_4

    .line 2579
    sget-object p3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object p3

    invoke-static {p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2582
    sget-object p3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    goto :goto_0

    .line 2584
    :cond_1
    sget-object p3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object p3

    .line 2585
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2591
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/j$d;->a()I

    move-result v1

    if-nez v1, :cond_2

    .line 50422
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    .line 50423
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    goto :goto_2

    .line 50424
    :cond_2
    iget-object p2, p3, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    .line 2591
    :goto_2
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2596
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2598
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 50425
    iget-object v0, p3, Lcom/google/i18n/phonenumbers/j$d;->d:Ljava/util/List;

    goto :goto_3

    .line 2601
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50426
    iget-object p3, p3, Lcom/google/i18n/phonenumbers/j$d;->d:Ljava/util/List;

    .line 2602
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2603
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, p2

    :goto_3
    move-object v1, v2

    :cond_4
    const/4 p2, 0x0

    .line 2611
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_5

    .line 2612
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    .line 2615
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2619
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    .line 2622
    :cond_6
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_7

    .line 2624
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    :cond_7
    if-le p2, p1, :cond_8

    .line 2626
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    .line 2627
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p2, p1, :cond_9

    .line 2628
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    .line 2631
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2632
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    :cond_a
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1
.end method


# virtual methods
.method public canBeInternationallyDialled(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 2

    .line 3550
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3556
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    .line 50456
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$b;->l:Lcom/google/i18n/phonenumbers/j$d;

    .line 3557
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/j$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/i18n/phonenumbers/j$a;"
        }
    .end annotation

    .line 1938
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/j$a;

    .line 1939
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/j$a;->e()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1940
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    add-int/lit8 v1, v1, -0x1

    .line 1942
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1942
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    .line 29082
    iget-object v2, v0, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 1943
    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1944
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .line 2774
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 2779
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    if-gt v2, v0, :cond_2

    .line 2781
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2782
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2783
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/i18n/phonenumbers/g;",
            ">;"
        }
    .end annotation

    .line 3144
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;J)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;J)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;",
            "J)",
            "Ljava/lang/Iterable<",
            "Lcom/google/i18n/phonenumbers/g;",
            ">;"
        }
    .end annotation

    .line 3164
    new-instance v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;J)V

    return-object v7
.end method

.method public format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;
    .locals 5

    .line 9063
    iget-wide v0, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 9129
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    if-eqz v0, :cond_0

    .line 9130
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 1261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 1265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1266
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1279
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    if-ne p2, v2, :cond_0

    .line 1284
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0, p1, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    return-void

    .line 1289
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1290
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1296
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1300
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v2

    .line 1301
    invoke-direct {p0, v1, v2, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1303
    invoke-direct {p0, v0, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public formatByPattern(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/k$a;",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/j$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 11047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1321
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 1322
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 1328
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v2

    .line 1333
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1336
    invoke-virtual {p0, p3, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1339
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1341
    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/j$a;->a()Lcom/google/i18n/phonenumbers/j$a$a;

    move-result-object v4

    .line 1345
    invoke-virtual {v4, p3}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a$a;

    .line 11123
    iget-object p3, p3, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 1347
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 11678
    iget-object v5, v2, Lcom/google/i18n/phonenumbers/j$b;->r:Ljava/lang/String;

    .line 1349
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "$NP"

    .line 1352
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "$FG"

    const-string v6, "$1"

    .line 1353
    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1354
    invoke-virtual {v4, p3}, Lcom/google/i18n/phonenumbers/j$a$a;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    goto :goto_0

    .line 1357
    :cond_2
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/j$a$a;->g()Lcom/google/i18n/phonenumbers/j$a;

    .line 1361
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v4, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p3

    .line 1360
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :goto_1
    invoke-direct {p0, p1, v2, p2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1364
    invoke-direct {p0, v0, p2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatInOriginalFormat(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 17129
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    if-eqz v0, :cond_0

    .line 1625
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17130
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    return-object p1

    .line 17148
    :cond_0
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->i:Z

    if-nez v0, :cond_1

    .line 1631
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1634
    :cond_1
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->a:[I

    .line 17149
    iget-object v1, p1, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 1634
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/k$a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 p2, 0x3

    if-eq v0, p2, :cond_7

    .line 18047
    iget p2, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1647
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1650
    invoke-virtual {p0, p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1651
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_a

    .line 1652
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 18130
    :cond_2
    iget-object v3, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 1659
    invoke-direct {p0, v3, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1667
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p2

    .line 1668
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    .line 18756
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 1670
    invoke-virtual {p0, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 19123
    :cond_4
    iget-object v0, p2, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    const-string v3, "$1"

    .line 1684
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 1690
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1691
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1698
    :cond_6
    invoke-static {}, Lcom/google/i18n/phonenumbers/j$a;->a()Lcom/google/i18n/phonenumbers/j$a$a;

    move-result-object v0

    .line 1699
    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a$a;

    .line 1700
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/j$a$a;->g()Lcom/google/i18n/phonenumbers/j$a;

    .line 1701
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1702
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1703
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1642
    :cond_7
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1639
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1636
    :cond_9
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    .line 20130
    :cond_a
    :goto_0
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1709
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 1710
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1711
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    move-object v2, p1

    :cond_b
    return-object v2
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 13047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1381
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 1389
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v2

    .line 1393
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1394
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v1, v2, v4, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, p1, v2, p2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1397
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 13168
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 1432
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 14168
    iget-object p2, p1, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 1428
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1956
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatNumberForMobileDialing(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 15047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1452
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    .line 15129
    iget-boolean p2, p1, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    if-eqz p2, :cond_0

    .line 15130
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v2

    .line 1458
    :cond_1
    new-instance v1, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/k$a;->a()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    .line 1459
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1460
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v3

    .line 1461
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1462
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1463
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    const-string v4, "CO"

    .line 1467
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v3, v4, :cond_5

    const-string p2, "3"

    .line 1469
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    const-string v3, "BR"

    .line 1470
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    .line 15168
    iget-object p2, p1, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 1474
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_e

    .line 1475
    invoke-virtual {p0, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto/16 :goto_1

    :cond_6
    if-ne v0, v6, :cond_8

    .line 1484
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p2

    .line 1485
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1486
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p2

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p2, v0, :cond_7

    .line 1488
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1490
    :cond_7
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string p2, "001"

    .line 1496
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "MX"

    .line 1510
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "CL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "UZ"

    .line 1511
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    if-eqz v5, :cond_b

    .line 1512
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1513
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1515
    :cond_b
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_c
    if-eqz v4, :cond_e

    .line 1518
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p2

    if-eqz p2, :cond_e

    if-eqz p3, :cond_d

    .line 1522
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1523
    :cond_d
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_1
    if-eqz p3, :cond_f

    return-object v2

    .line 1526
    :cond_f
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOutOfCountryCallingNumber(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1548
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1549
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to format number from invalid region "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1553
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16047
    :cond_0
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1556
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v2, :cond_2

    .line 1561
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1566
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1573
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1576
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p2

    .line 16651
    iget-object v2, p2, Lcom/google/i18n/phonenumbers/j$b;->n:Ljava/lang/String;

    .line 1582
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 16661
    :cond_4
    iget-boolean v2, p2, Lcom/google/i18n/phonenumbers/j$b;->o:Z

    if-eqz v2, :cond_5

    .line 16662
    iget-object v2, p2, Lcom/google/i18n/phonenumbers/j$b;->p:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v2, ""

    .line 1589
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1592
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p2

    .line 1593
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    .line 1594
    invoke-direct {p0, v1, p2, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v1

    .line 1595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1598
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    .line 1599
    invoke-virtual {v4, p1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1600
    invoke-virtual {p2, p1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1602
    :cond_6
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v0, p1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1606
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 22130
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 1782
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23047
    :cond_0
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1786
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 1793
    :cond_1
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1798
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_2

    .line 1800
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1802
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1805
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v4

    const-string v5, " "

    if-ne v1, v3, :cond_3

    .line 1807
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v4, :cond_5

    .line 1811
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 23756
    iget-object p1, v4, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 1813
    invoke-virtual {p0, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 1819
    :cond_4
    invoke-static {}, Lcom/google/i18n/phonenumbers/j$a;->a()Lcom/google/i18n/phonenumbers/j$a$a;

    move-result-object p2

    .line 1820
    invoke-virtual {p2, p1}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a$a;

    const-string p1, "(\\d+)(.*)"

    .line 1822
    invoke-virtual {p2, p1}, Lcom/google/i18n/phonenumbers/j$a$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    const-string p1, "$1$2"

    .line 1824
    invoke-virtual {p2, p1}, Lcom/google/i18n/phonenumbers/j$a$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 1830
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v4, :cond_7

    .line 24651
    iget-object v2, v4, Lcom/google/i18n/phonenumbers/j$b;->n:Ljava/lang/String;

    .line 1839
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 24662
    :cond_6
    iget-object v2, v4, Lcom/google/i18n/phonenumbers/j$b;->p:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v2, ""

    .line 1843
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1846
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    .line 1847
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1849
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 1850
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1851
    invoke-virtual {p1, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1855
    :cond_8
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1856
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Trying to format number from invalid region "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1861
    :cond_9
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-direct {p0, v1, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$c;Ljava/lang/StringBuilder;)V

    .line 1865
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/a;
    .locals 1

    .line 2766
    new-instance v0, Lcom/google/i18n/phonenumbers/a;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4

    .line 2426
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2427
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid or missing region code ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 2429
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2427
    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2433
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 2014
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    return-object p1
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/google/i18n/phonenumbers/k$a;
    .locals 4

    .line 2140
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/i18n/phonenumbers/j$d;

    const/4 v2, 0x0

    .line 34419
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->c:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 34433
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->d:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 34461
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->f:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 34489
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->h:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 34545
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->k:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 35517
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->j:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 36447
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$b;->e:Lcom/google/i18n/phonenumbers/j$d;

    aput-object v0, v1, v2

    .line 2146
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/j$d;

    if-eqz v1, :cond_0

    .line 37288
    :try_start_0
    iget-boolean v2, v1, Lcom/google/i18n/phonenumbers/j$d;->e:Z

    if-eqz v2, :cond_0

    .line 2151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37289
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$d;->f:Ljava/lang/String;

    .line 2151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZZ"

    invoke-virtual {p0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 2154
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 2158
    :cond_1
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Invalid or unknown country calling code provided: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExampleNumberForType(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 5

    .line 2109
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2110
    invoke-virtual {p0, v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2116
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2118
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v2

    .line 2117
    invoke-virtual {p0, v2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object v2

    .line 34288
    :try_start_0
    iget-boolean v3, v2, Lcom/google/i18n/phonenumbers/j$d;->e:Z

    if-eqz v3, :cond_2

    .line 2121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34289
    iget-object v1, v2, Lcom/google/i18n/phonenumbers/j$d;->f:Ljava/lang/String;

    .line 2121
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZZ"

    invoke-virtual {p0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 2124
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 3

    .line 2085
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2086
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2089
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object p2

    .line 33288
    :try_start_0
    iget-boolean v0, p2, Lcom/google/i18n/phonenumbers/j$d;->e:Z

    if-eqz v0, :cond_1

    .line 33289
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$d;->f:Ljava/lang/String;

    .line 2092
    invoke-virtual {p0, p2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2095
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public getInvalidExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 5

    .line 2029
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2030
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Invalid or unknown region code provided: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2037
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-virtual {p0, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;

    move-result-object v0

    .line 32288
    iget-boolean v2, v0, Lcom/google/i18n/phonenumbers/j$d;->e:Z

    if-nez v2, :cond_1

    return-object v1

    .line 32289
    :cond_1
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$d;->f:Ljava/lang/String;

    .line 2055
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/4 v3, 0x0

    .line 2058
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2060
    :try_start_0
    invoke-virtual {p0, v3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v3

    .line 2061
    invoke-virtual {p0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v4
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    return-object v3

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/google/i18n/phonenumbers/k$a;)I
    .locals 5

    .line 874
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4677
    :cond_0
    iget-boolean v0, v0, Lcom/google/i18n/phonenumbers/j$b;->q:Z

    if-nez v0, :cond_1

    .line 5098
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    if-nez v0, :cond_1

    return v1

    .line 884
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v0

    .line 6047
    iget v2, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 886
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v0, v3, :cond_2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 890
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 894
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 898
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/google/i18n/phonenumbers/k$a;)I

    move-result p1

    return p1
.end method

.method public getLengthOfNationalDestinationCode(Lcom/google/i18n/phonenumbers/k$a;)I
    .locals 5

    .line 6078
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 945
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;

    .line 946
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/k$a;->a()Lcom/google/i18n/phonenumbers/k$a;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 951
    :goto_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p0, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v0

    .line 953
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 957
    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 961
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v1

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 7047
    iget p1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 967
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 968
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 969
    aget-object p1, v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 972
    :cond_2
    aget-object p1, v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->a(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    return-object p1
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;
    .locals 1

    .line 2281
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;
    .locals 3

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25098
    iget-boolean v1, p1, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    if-eqz v1, :cond_0

    .line 25114
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->f:I

    if-lez v1, :cond_0

    .line 26114
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->f:I

    .line 1879
    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 1880
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1881
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27063
    :cond_0
    iget-wide v1, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 1883
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 2467
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2469
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid or missing region code ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 2471
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2469
    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 50416
    :cond_1
    iget-object p1, v0, Lcom/google/i18n/phonenumbers/j$b;->r:Ljava/lang/String;

    .line 2477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "~"

    const-string v0, ""

    .line 2483
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method getNumberDescByType(Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/j$d;
    .locals 1

    .line 2185
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->c:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 46385
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 45545
    :pswitch_0
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->k:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 45517
    :pswitch_1
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->j:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 45503
    :pswitch_2
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->i:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 45475
    :pswitch_3
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->g:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 44489
    :pswitch_4
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->h:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 44461
    :pswitch_5
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->f:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 44405
    :pswitch_6
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->b:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 43419
    :pswitch_7
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->c:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 42433
    :pswitch_8
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->d:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    .line 41447
    :pswitch_9
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/j$b;->e:Lcom/google/i18n/phonenumbers/j$d;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;
    .locals 2

    .line 2219
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    .line 47047
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 2220
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2222
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object p1

    .line 2224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    .line 2225
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object p1

    return-object p1
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const-string p1, "ZZ"

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;
    .locals 4

    .line 50412
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 2363
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 2365
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing/invalid country_code ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2368
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    .line 2369
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2371
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/google/i18n/phonenumbers/k$a;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2413
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 2414
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;",
            ">;"
        }
    .end annotation

    .line 1132
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1134
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1136
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1138
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/google/i18n/phonenumbers/j$b;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;",
            ">;"
        }
    .end annotation

    .line 1114
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1116
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    .line 1119
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/google/i18n/phonenumbers/j$b;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public isAlphaNumber(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 2508
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2513
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2514
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .locals 3

    .line 3568
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3570
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 50457
    :cond_0
    iget-boolean p1, v0, Lcom/google/i18n/phonenumbers/j$b;->C:Z

    return p1
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1

    .line 2494
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;I)Z
    .locals 1

    .line 1219
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isNumberGeographical(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 1

    .line 1211
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v0

    .line 9047
    iget p1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 1211
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;I)Z

    move-result p1

    return p1
.end method

.method public isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;
    .locals 3

    .line 3409
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    .line 3410
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p2

    .line 50444
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v0, :cond_0

    .line 50445
    iget-boolean v0, p2, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v0, :cond_0

    .line 50446
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 50447
    iget-object v1, p2, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 3413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3414
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    .line 50448
    :cond_0
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 50449
    iget v1, p2, Lcom/google/i18n/phonenumbers/k$a;->a:I

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 3420
    invoke-virtual {p1, p2}, Lcom/google/i18n/phonenumbers/k$a;->b(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3421
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 3423
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3427
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    .line 3430
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    .line 3434
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    .line 3436
    invoke-virtual {p1, p2}, Lcom/google/i18n/phonenumbers/k$a;->b(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3437
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    .line 3439
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3440
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1

    .line 3442
    :cond_5
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1
.end method

.method public isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;
    .locals 7

    const-string v0, "ZZ"

    .line 3508
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    .line 3509
    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 50454
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/NumberParseException;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    .line 3511
    sget-object v2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    if-ne v1, v2, :cond_2

    .line 50455
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 3515
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 3517
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3518
    invoke-virtual {p0, p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p2

    .line 3519
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1

    .line 3520
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    if-ne p1, p2, :cond_0

    .line 3521
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    :cond_0
    return-object p1

    .line 3527
    :cond_1
    new-instance v6, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v6}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    .line 3528
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V

    .line 3529
    invoke-virtual {p0, p1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 3537
    :catch_1
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1
.end method

.method public isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;
    .locals 9

    const-string v0, "ZZ"

    .line 3468
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    .line 3469
    invoke-virtual {p0, v1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 50452
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/NumberParseException;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    .line 3471
    sget-object v2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    if-ne v1, v2, :cond_0

    .line 3473
    :try_start_1
    invoke-virtual {p0, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    .line 3474
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 50453
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/NumberParseException;->a:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    .line 3476
    sget-object v1, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    if-ne v0, v1, :cond_0

    .line 3478
    :try_start_2
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 3479
    new-instance v8, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v8}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, v0

    .line 3480
    invoke-direct/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, v8

    .line 3481
    invoke-direct/range {v1 .. v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V

    .line 3482
    invoke-virtual {p0, v0, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 3491
    :catch_2
    :cond_0
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    return-object p1
.end method

.method isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$d;)Z
    .locals 3

    .line 2298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 50410
    iget-object v1, p2, Lcom/google/i18n/phonenumbers/j$d;->c:Ljava/util/List;

    .line 2300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    invoke-interface {v0, p1, p2}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p1

    return p1
.end method

.method public isPossibleNumber(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 1

    .line 2529
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    .line 2530
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPossibleNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 0

    .line 2726
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPossibleNumberForType(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Z
    .locals 0

    .line 2547
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    .line 2548
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPossibleNumberForTypeWithReason(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;
    .locals 2

    .line 2688
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    .line 50427
    iget p1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 2696
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2697
    sget-object p1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    return-object p1

    .line 2699
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2701
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    .line 2702
    invoke-direct {p0, v0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    return-object p1
.end method

.method public isPossibleNumberWithReason(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;
    .locals 1

    .line 2657
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p1

    return-object p1
.end method

.method public isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 1

    .line 2318
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v0

    .line 2319
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValidNumberForRegion(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Z
    .locals 4

    .line 50411
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 2340
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "001"

    .line 2342
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2343
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p2

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 2348
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    .line 2349
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object p1

    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/k$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 2826
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2829
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 50429
    iget-object p1, p2, Lcom/google/i18n/phonenumbers/j$b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "NonMatch"

    .line 2837
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a$a;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 2839
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a$a;)Lcom/google/i18n/phonenumbers/k$a;

    .line 2841
    :cond_2
    sget-object v2, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/k$a$a;

    if-eq p1, v2, :cond_5

    .line 2842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_4

    .line 2847
    invoke-virtual {p0, v0, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 2849
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    return p1

    .line 2855
    :cond_3
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "Country calling code supplied was not recognised."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    .line 2843
    :cond_4
    new-instance p1, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object p2, Lcom/google/i18n/phonenumbers/NumberParseException$a;->TOO_SHORT_AFTER_IDD:Lcom/google/i18n/phonenumbers/NumberParseException$a;

    const-string p3, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$a;Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz p2, :cond_9

    .line 50430
    iget p1, p2, Lcom/google/i18n/phonenumbers/j$b;->m:I

    .line 2862
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2864
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2865
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50431
    iget-object v2, p2, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    const/4 v3, 0x0

    .line 2868
    invoke-virtual {p0, v4, p2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;)Z

    .line 2873
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    invoke-interface {v3, v0, v2}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    .line 2874
    invoke-interface {v3, v4, v2}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2875
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$b;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object p2

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-ne p2, v0, :cond_9

    .line 2876
    :cond_7
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_8

    .line 2878
    sget-object p2, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/k$a$a;

    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a$a;)Lcom/google/i18n/phonenumbers/k$a;

    .line 2880
    :cond_8
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    return p1

    .line 2886
    :cond_9
    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    return v1
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 3018
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3021
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3023
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 3024
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3027
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 3028
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a$a;
    .locals 2

    .line 2929
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2930
    sget-object p1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p1

    .line 2933
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2934
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 2935
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2937
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2938
    sget-object p1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p1

    .line 2941
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 2942
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2943
    invoke-direct {p0, p2, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2944
    sget-object p1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p1

    .line 2945
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p1
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 2960
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 50432
    iget-object v1, p2, Lcom/google/i18n/phonenumbers/j$b;->v:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2962
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 2967
    :cond_0
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v3, v1}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2968
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 50433
    iget-object v3, p2, Lcom/google/i18n/phonenumbers/j$b;->a:Lcom/google/i18n/phonenumbers/j$d;

    .line 2971
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    invoke-interface {v4, p1, v3}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result v4

    .line 2975
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    .line 50434
    iget-object p2, p2, Lcom/google/i18n/phonenumbers/j$b;->w:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 2977
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 2978
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 2993
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2994
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 2995
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    .line 2996
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    :cond_2
    if-eqz p3, :cond_3

    if-le v5, v6, :cond_3

    .line 3000
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 2980
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/google/i18n/phonenumbers/a/a;

    .line 2982
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2981
    invoke-interface {p2, v0, v3}, Lcom/google/i18n/phonenumbers/a/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$d;)Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    :cond_5
    if-eqz p3, :cond_6

    if-lez v5, :cond_6

    .line 2985
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2986
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    :cond_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v6

    :cond_7
    :goto_1
    return v2
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3087
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 3088
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3098
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V

    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3117
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 3118
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V

    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3129
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/k$a;)V

    return-void
.end method

.method public truncateTooLongNumber(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 7

    .line 2740
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2743
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/k$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/k$a;-><init>()V

    .line 2744
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;

    .line 50428
    iget-wide v2, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    :cond_1
    const-wide/16 v4, 0xa

    .line 2747
    div-long/2addr v2, v4

    .line 2748
    invoke-virtual {v0, v2, v3}, Lcom/google/i18n/phonenumbers/k$a;->a(J)Lcom/google/i18n/phonenumbers/k$a;

    .line 2749
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$e;

    if-eq v4, v5, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_0

    .line 2753
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2754
    invoke-virtual {p1, v2, v3}, Lcom/google/i18n/phonenumbers/k$a;->a(J)Lcom/google/i18n/phonenumbers/k$a;

    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
