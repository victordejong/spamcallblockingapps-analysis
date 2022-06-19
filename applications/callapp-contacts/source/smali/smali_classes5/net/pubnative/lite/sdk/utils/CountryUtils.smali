.class public Lnet/pubnative/lite/sdk/utils/CountryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static GDPR_COUNTRIES:Ljava/util/Set;
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
    .locals 34

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    sput-object v0, Lnet/pubnative/lite/sdk/utils/CountryUtils;->GDPR_COUNTRIES:Ljava/util/Set;

    const-string v1, "BE"

    const-string v2, "EL"

    const-string v3, "LT"

    const-string v4, "PT"

    const-string v5, "BG"

    const-string v6, "ES"

    const-string v7, "LU"

    const-string v8, "RO"

    const-string v9, "CZ"

    const-string v10, "FR"

    const-string v11, "HU"

    const-string v12, "SI"

    const-string v13, "DK"

    const-string v14, "HR"

    const-string v15, "MT"

    const-string v16, "SK"

    const-string v17, "DE"

    const-string v18, "IT"

    const-string v19, "NL"

    const-string v20, "FI"

    const-string v21, "EE"

    const-string v22, "CY"

    const-string v23, "AT"

    const-string v24, "SE"

    const-string v25, "IE"

    const-string v26, "LV"

    const-string v27, "PL"

    const-string v28, "UK"

    const-string v29, "GB"

    const-string v30, "CH"

    const-string v31, "NO"

    const-string v32, "IS"

    const-string v33, "LI"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGDPRCountry(Ljava/lang/String;)Z
    .locals 1

    .line 43
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 44
    sget-object v0, Lnet/pubnative/lite/sdk/utils/CountryUtils;->GDPR_COUNTRIES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
