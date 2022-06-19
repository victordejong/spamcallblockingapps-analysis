.class Lcom/amazon/device/ads/DTBGDPREncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .locals 3

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1143
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x31

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 1144
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    .line 1145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    .line 1147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1149
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 1152
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    .line 1079
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x20

    if-ge v5, v6, :cond_3

    .line 1081
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x6

    const/4 v5, 0x5

    .line 2107
    invoke-static {v4, v5}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb

    invoke-virtual {v0, v2, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->n()Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    move-result-object v2

    .line 2115
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$CMPFlavor;->GOOGLE_CMP:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    const/4 v8, 0x4

    const/16 v9, 0xf

    if-ne v2, v5, :cond_4

    .line 2116
    invoke-static {v4, v8}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v9, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2117
    :cond_4
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$CMPFlavor;->MOPUB_CMP:Lcom/amazon/device/ads/AdRegistration$CMPFlavor;

    if-ne v2, v5, :cond_5

    const/4 v2, 0x2

    .line 2118
    invoke-static {v2, v8}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v9, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    :cond_5
    :goto_4
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->m()Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    move-result-object v2

    .line 2127
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$ConsentStatus;->EXPLICIT_YES:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    const/4 v8, 0x3

    const/16 v10, 0x12

    if-ne v2, v5, :cond_6

    const/4 v2, 0x7

    .line 2128
    invoke-static {v2, v8}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v10, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2129
    :cond_6
    sget-object v5, Lcom/amazon/device/ads/AdRegistration$ConsentStatus;->EXPLICIT_NO:Lcom/amazon/device/ads/AdRegistration$ConsentStatus;

    if-ne v2, v5, :cond_7

    .line 2130
    invoke-static {v3, v8}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v10, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2132
    :cond_7
    invoke-static {v4, v8}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v10, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1095
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    const/16 v5, 0xe

    .line 2139
    invoke-static {v2, v5}, Lcom/amazon/device/ads/DTBGDPREncoder;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    rem-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 44
    :goto_6
    div-int/lit8 v5, v0, 0x8

    xor-int/2addr v2, v4

    add-int/2addr v5, v2

    new-array v2, v5, [B

    :goto_7
    if-ge v3, v0, :cond_b

    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_a

    .line 3062
    div-int/lit8 v5, v3, 0x8

    add-int/lit8 v6, v5, 0x1

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v6, v3

    sub-int/2addr v6, v4

    .line 3064
    aget-byte v8, v2, v5

    shl-int v6, v4, v6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto :goto_8

    .line 3071
    :cond_a
    div-int/lit8 v5, v3, 0x8

    add-int/lit8 v6, v5, 0x1

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v6, v3

    sub-int/2addr v6, v4

    .line 3073
    aget-byte v8, v2, v5

    shl-int v6, v4, v6

    not-int v6, v6

    and-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 52
    :cond_b
    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
