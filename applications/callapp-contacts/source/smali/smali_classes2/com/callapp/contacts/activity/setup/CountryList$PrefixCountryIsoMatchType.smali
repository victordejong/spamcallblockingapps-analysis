.class final enum Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/CountryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PrefixCountryIsoMatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

.field public static final enum BOTH_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

.field public static final enum COUNTRYISO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

.field public static final enum INTL_PHONE_PREFIX_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

.field public static final enum NO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->NO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    .line 17
    new-instance v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    const-string v3, "COUNTRYISO_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->COUNTRYISO_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    .line 18
    new-instance v3, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    const-string v5, "INTL_PHONE_PREFIX_MATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->INTL_PHONE_PREFIX_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    .line 19
    new-instance v5, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    const-string v7, "BOTH_MATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->BOTH_MATCH:Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 15
    sput-object v7, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->$VALUES:[Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;
    .locals 1

    .line 15
    const-class v0, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;
    .locals 1

    .line 15
    sget-object v0, Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->$VALUES:[Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType;

    return-object v0
.end method
