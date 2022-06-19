.class public Lcom/callapp/framework/phone/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[-.\'\"\\s()]"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->a:Ljava/util/regex/Pattern;

    const-string v0, "(^[#*])(.*)([#*])(.*)(#)$"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->b:Ljava/util/regex/Pattern;

    const-string v0, "(^[#*])(.*)([#*])(.*)"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object p0

    .line 114
    sget-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils$1;->a:[I

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p0, ""

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->name()Ljava/lang/String;

    move-result-object p0

    .line 130
    :goto_1
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [C

    .line 135
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string v0, "_"

    const-string v1, " "

    .line 137
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static b(Lcom/callapp/framework/phone/Phone;)Z
    .locals 2

    .line 143
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getPhoneNumber()Lcom/google/i18n/phonenumbers/k$a;

    move-result-object p0

    invoke-static {}, Lcom/callapp/framework/phone/Phone;->getCountryRegionProvider()Lcom/callapp/framework/phone/CountryRegionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/framework/phone/CountryRegionProvider;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/callapp/framework/phone/PhoneNumberUtils;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "replace(replace(replace(replace(%s,\' \',\'\') ,\'(\',\'\'),\')\',\'\'),\'-\',\'\')"

    .line 84
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 88
    invoke-static {}, Lcom/callapp/framework/phone/Phone;->getCountryRegionProvider()Lcom/callapp/framework/phone/CountryRegionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/framework/phone/CountryRegionProvider;->a()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->getInstance()Lcom/callapp/common/util/PhoneNumberUtilWrapper;

    move-result-object v1

    .line 1068
    iget-object v1, v1, Lcom/callapp/common/util/PhoneNumberUtilWrapper;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/a;

    move-result-object v0

    .line 93
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/a;->a(C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/a;->a()V

    return-object v2
.end method
