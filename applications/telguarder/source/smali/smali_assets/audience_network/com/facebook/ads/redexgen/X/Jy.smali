.class public final Lcom/facebook/ads/redexgen/X/Jy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jx;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jx;

.field public final A01:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jy;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jy;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40585
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Lcom/facebook/ads/redexgen/X/Jx;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 40586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    .line 40587
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Ljava/lang/String;

    .line 40588
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Ljava/lang/String;

    .line 40589
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 14
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jo;
        }
    .end annotation

    .line 40590
    move-object v7, p0

    const/16 v2, 0x10e

    const/16 v1, 0x15

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x123

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x136

    const/4 v1, 0x4

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x12e

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40591
    move-object/from16 v1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 40592
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Lcom/facebook/ads/redexgen/X/Jx;

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 40593
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    .line 40594
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jy;->A03:Ljava/lang/String;

    .line 40595
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jy;->A02:Ljava/lang/String;

    .line 40596
    return-void

    .line 40597
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40598
    .local v10, "json":Lorg/json/JSONObject;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jw;->A00:[I

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 40599
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Lcom/facebook/ads/redexgen/X/Jx;

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 40600
    const/16 v2, 0xf1

    const/4 v1, 0x6

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    .line 40601
    const/16 v2, 0xf7

    const/16 v1, 0xe

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A02:Ljava/lang/String;

    .line 40602
    const/16 v2, 0x105

    const/16 v1, 0x9

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A03:Ljava/lang/String;

    .line 40603
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x3

    if-eqz v0, :cond_4

    .line 40604
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40605
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0C:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v12

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0F:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0D:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40608
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v13

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0E:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40609
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    .line 40610
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 40611
    .local p0, "interstitialFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 40612
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40613
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 40614
    :cond_1
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x68

    const/16 v1, 0x30

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40615
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object p4, v1, v13

    .line 40616
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40617
    .end local p0    # "interstitialFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "json":Lorg/json/JSONObject;
    .restart local v1
    .restart local v0
    .restart local v8
    .restart local v2
    :cond_2
    :goto_0
    return-void

    .line 40618
    :cond_3
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x36

    const/16 v1, 0x32

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40619
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object v10, v1, v13

    .line 40620
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40621
    :cond_4
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40622
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 40623
    invoke-static {p1}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    .line 40624
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40625
    :cond_5
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd2

    const/16 v1, 0x1c

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40626
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40627
    .end local v10
    .restart local v1
    .restart local v0
    .restart local v8
    .restart local v2
    :catch_0
    move-exception v6

    .line 40628
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0E:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 40629
    const/16 v2, 0xee

    const/4 v1, 0x3

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40630
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x98

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jt;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jo;
        }
    .end annotation

    .line 40631
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40632
    .local p0, "json":Lorg/json/JSONObject;
    const/16 v2, 0x12e

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40633
    .local v3, "templateId":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A00(I)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40634
    .end local p0    # "json":Lorg/json/JSONObject;
    .end local v3    # "templateId":I
    :catch_0
    move-exception p0

    .line 40635
    .local p0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x98

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v3, v1, p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x13a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jy;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x9t
        0x4t
        0x40t
        0x45t
        0x4t
        0x40t
        0x6t
        0xft
        0x12t
        0x40t
        0x33t
        0x24t
        0x2bt
        0x40t
        0x16t
        0x5t
        0x12t
        0x13t
        0x9t
        0xft
        0xet
        0x40t
        0x45t
        0x13t
        0x40t
        0x2t
        0x5t
        0x9t
        0xet
        0x7t
        0x40t
        0x15t
        0x13t
        0x5t
        0x4t
        0x40t
        0xft
        0xet
        0x40t
        0x33t
        0x24t
        0x2bt
        0x40t
        0x16t
        0x5t
        0x12t
        0x13t
        0x9t
        0xft
        0xet
        0x40t
        0x45t
        0x13t
        0x53t
        0x78t
        0x75t
        0x31t
        0x34t
        0x75t
        0x31t
        0x77t
        0x7et
        0x63t
        0x31t
        0x61t
        0x7dt
        0x70t
        0x72t
        0x74t
        0x7ct
        0x74t
        0x7ft
        0x65t
        0x31t
        0x34t
        0x62t
        0x31t
        0x73t
        0x74t
        0x78t
        0x7ft
        0x76t
        0x31t
        0x64t
        0x62t
        0x74t
        0x75t
        0x31t
        0x7et
        0x7ft
        0x31t
        0x61t
        0x7dt
        0x70t
        0x72t
        0x74t
        0x7ct
        0x74t
        0x7ft
        0x65t
        0x31t
        0x34t
        0x62t
        0x44t
        0x6ft
        0x62t
        0x26t
        0x23t
        0x62t
        0x26t
        0x60t
        0x69t
        0x74t
        0x26t
        0x72t
        0x63t
        0x6bt
        0x76t
        0x6at
        0x67t
        0x72t
        0x63t
        0x26t
        0x23t
        0x75t
        0x26t
        0x64t
        0x63t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x73t
        0x75t
        0x63t
        0x62t
        0x26t
        0x69t
        0x68t
        0x26t
        0x72t
        0x63t
        0x6bt
        0x76t
        0x6at
        0x67t
        0x72t
        0x63t
        0x26t
        0x23t
        0x75t
        0xbt
        0x2ct
        0x34t
        0x23t
        0x2et
        0x2bt
        0x26t
        0x62t
        0x0t
        0x2bt
        0x26t
        0x12t
        0x23t
        0x3bt
        0x2et
        0x2dt
        0x23t
        0x26t
        0x47t
        0x76t
        0x7et
        0x63t
        0x7ft
        0x72t
        0x67t
        0x76t
        0x33t
        0x36t
        0x60t
        0x33t
        0x7at
        0x60t
        0x33t
        0x7dt
        0x7ct
        0x67t
        0x33t
        0x65t
        0x72t
        0x7ft
        0x7at
        0x77t
        0x33t
        0x71t
        0x72t
        0x7dt
        0x7dt
        0x76t
        0x61t
        0x33t
        0x67t
        0x76t
        0x7et
        0x63t
        0x7ft
        0x72t
        0x67t
        0x76t
        0xbt
        0x30t
        0x2dt
        0x2bt
        0x2et
        0x2et
        0x31t
        0x2ct
        0x2at
        0x3bt
        0x3at
        0x7et
        0x1ct
        0x37t
        0x3at
        0xet
        0x3ft
        0x27t
        0x32t
        0x31t
        0x3ft
        0x3at
        0x7et
        0x2at
        0x27t
        0x2et
        0x3bt
        0x7et
        0x7et
        0x6ft
        0x76t
        0x7t
        0xct
        0x1t
        0x3at
        0xct
        0x1t
        0x15t
        0x1et
        0x13t
        0x28t
        0x3t
        0x1et
        0x1at
        0x12t
        0x28t
        0x3t
        0x18t
        0x1ct
        0x12t
        0x19t
        0x26t
        0x27t
        0x34t
        0x2bt
        0x21t
        0x27t
        0x1dt
        0x2bt
        0x26t
        0x33t
        0x24t
        0x32t
        0x2et
        0x2dt
        0x37t
        0x24t
        0x25t
        0x1et
        0x31t
        0x2dt
        0x20t
        0x22t
        0x24t
        0x2ct
        0x24t
        0x2ft
        0x35t
        0x1et
        0x28t
        0x25t
        0x53t
        0x44t
        0x4bt
        0x7ft
        0x56t
        0x45t
        0x52t
        0x53t
        0x49t
        0x4ft
        0x4et
        0x4bt
        0x5at
        0x52t
        0x4ft
        0x53t
        0x5et
        0x4bt
        0x5at
        0x48t
        0x45t
        0x4ct
        0x59t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZYrzMRmVY0fKuwQx318rNacSlgEREo8W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DFlEfnYj9N0tv35MBsRVrv0NQ03vrQp9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7c1jEy6Yvwz0PD0sTLnvRvzL7JrMoPnP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LVfRkpSB2W01n6UoKBvMpgi93s4V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wjSsCSJEOA2zcxlJjQpf4WZQJP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cgSUujLLCITlA6k0bkAALzG3bpp7bkqz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "L2ObalbYjPtjYVm4HCkeGK0BV8R2iNFP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jo;
        }
    .end annotation

    .line 40636
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0B:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A09:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40637
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0A:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40638
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:Lcom/facebook/ads/redexgen/X/Jt;

    .line 40639
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jt;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A05:[Ljava/lang/String;

    const-string v1, "X5uVqi4FyBeSosvF2q5aVclYJStrMHB5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BOgVvqLcU58P5XEa1Smg5LyKHeBKxxT8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 40640
    :cond_0
    return-void

    .line 40641
    :cond_1
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 40642
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 40643
    const/16 v2, 0xaa

    const/16 v1, 0x28

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A05()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A01:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 40645
    const/4 v0, 0x0

    return-object v0

    .line 40646
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A05:[Ljava/lang/String;

    const-string v1, "9BRFtSg6abe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A06()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A07()Z
    .locals 2

    .line 40648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Lcom/facebook/ads/redexgen/X/Jx;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
