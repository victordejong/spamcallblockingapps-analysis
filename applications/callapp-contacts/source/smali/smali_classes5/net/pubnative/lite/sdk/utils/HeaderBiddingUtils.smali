.class public Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KEYS;,
        Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;
    }
.end annotation


# static fields
.field private static final ECPM_POINTS_DIVIDER:D = 1000.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppMonetBiddingInterstitialKeywords(Lnet/pubnative/lite/sdk/models/Ad;)Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    const-string v1, "mm_10:"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_2

    const-string v1, "mm_50:"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3

    const-string v1, "mm_1d:"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p0, "mm_gte_10d:true"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppMonetBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;)Ljava/lang/String;
    .locals 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    const-string v1, "mm_10:"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_2

    const-string v1, "mm_50:"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_3

    const-string v1, "mm_1d:"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p0, "mm_gte_5d:true"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;
    .locals 4

    .line 49
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 52
    sget-object v0, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    if-ne p1, v0, :cond_0

    const-string p1, "%.2f"

    goto :goto_0

    :cond_0
    const-string p1, "%.3f"

    .line 56
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBidFromPoints(Ljava/lang/Integer;Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;)Ljava/lang/String;
    .locals 4

    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 63
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;

    if-ne p1, v0, :cond_0

    const-string p1, "%.2f"

    goto :goto_0

    :cond_0
    const-string p1, "%.3f"

    .line 67
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 72
    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->THREE_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;
    .locals 1

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pn_bid:"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 76
    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywords(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;)Landroid/os/Bundle;
    .locals 1

    const-string v0, ""

    .line 93
    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 101
    sget-object v0, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->THREE_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Landroid/os/Bundle;
    .locals 0

    .line 105
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 107
    invoke-static {p0, p2}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "pn_bid"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Landroid/os/Bundle;
    .locals 1

    const-string v0, ""

    .line 97
    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsBundle(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 114
    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;->THREE_DECIMALS:Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;

    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            "Ljava/lang/String;",
            "Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance p1, Ljava/util/LinkedHashSet;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 128
    invoke-static {p0, p2}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getBidECPM(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "pn_bid:"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            "Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 118
    invoke-static {p0, v0, p1}, Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils;->getHeaderBiddingKeywordsSet(Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
