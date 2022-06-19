.class public final Lcom/facebook/ads/redexgen/X/Jw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jv;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jv;

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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jw;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jw;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40506
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A03:Lcom/facebook/ads/redexgen/X/Jv;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    .line 40507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    .line 40508
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A03:Ljava/lang/String;

    .line 40509
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Ljava/lang/String;

    .line 40510
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;)V
    .locals 14
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jm;
        }
    .end annotation

    .line 40511
    move-object v7, p0

    const/16 v2, 0x10e

    const/16 v1, 0x15

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x123

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x136

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x12e

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40512
    move-object/from16 v1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 40513
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A03:Lcom/facebook/ads/redexgen/X/Jv;

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    .line 40514
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    .line 40515
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jw;->A03:Ljava/lang/String;

    .line 40516
    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/Jw;->A02:Ljava/lang/String;

    .line 40517
    return-void

    .line 40518
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40519
    .local v10, "json":Lorg/json/JSONObject;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ju;->A00:[I

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jv;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jv;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 40520
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A02:Lcom/facebook/ads/redexgen/X/Jv;

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    .line 40521
    const/16 v2, 0xf1

    const/4 v1, 0x6

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    .line 40522
    const/16 v2, 0xf7

    const/16 v1, 0xe

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A02:Ljava/lang/String;

    .line 40523
    const/16 v2, 0x105

    const/16 v1, 0x9

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A03:Ljava/lang/String;

    .line 40524
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

    .line 40525
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40526
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40527
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v12

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40528
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40529
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v13

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    .line 40531
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 40532
    .local p0, "interstitialFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 40533
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40534
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 40535
    :cond_1
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x68

    const/16 v1, 0x30

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40536
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object p4, v1, v13

    .line 40537
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40538
    .end local p0    # "interstitialFormats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "json":Lorg/json/JSONObject;
    .restart local v1
    .restart local v0
    .restart local v8
    .restart local v2
    :cond_2
    :goto_0
    return-void

    .line 40539
    :cond_3
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x36

    const/16 v1, 0x32

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40540
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    aput-object v10, v1, v13

    .line 40541
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40542
    :cond_4
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    aput-object v0, v1, v12

    .line 40543
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 40544
    invoke-static {p1}, Lcom/facebook/ads/internal/api/BuildConfigApi;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    .line 40545
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0

    .line 40546
    :cond_5
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd2

    const/16 v1, 0x1c

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40547
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .end local v1
    .end local v0
    .end local v8
    .end local v2
    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40548
    .end local v10
    .restart local v1
    .restart local v0
    .restart local v8
    .restart local v2
    :catch_0
    move-exception v6

    .line 40549
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0E:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 40550
    const/16 v2, 0xee

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 40551
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x98

    const/16 v1, 0x12

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jm;
        }
    .end annotation

    .line 40552
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40553
    .local p0, "json":Lorg/json/JSONObject;
    const/16 v2, 0x12e

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40554
    .local v3, "templateId":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40555
    .end local p0    # "json":Lorg/json/JSONObject;
    .end local v3    # "templateId":I
    :catch_0
    move-exception p0

    .line 40556
    .local p0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x98

    const/16 v1, 0x12

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v3, v1, p0}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jw;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jw;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0xdt
        0x1at
        0x15t
        -0x2ft
        -0x2at
        0x15t
        -0x2ft
        0x17t
        0x20t
        0x23t
        -0x2ft
        0x4t
        -0xbt
        -0x4t
        -0x2ft
        0x27t
        0x16t
        0x23t
        0x24t
        0x1at
        0x20t
        0x1ft
        -0x2ft
        -0x2at
        0x24t
        -0x2ft
        0x13t
        0x16t
        0x1at
        0x1ft
        0x18t
        -0x2ft
        0x26t
        0x24t
        0x16t
        0x15t
        -0x2ft
        0x20t
        0x1ft
        -0x2ft
        0x4t
        -0xbt
        -0x4t
        -0x2ft
        0x27t
        0x16t
        0x23t
        0x24t
        0x1at
        0x20t
        0x1ft
        -0x2ft
        -0x2at
        0x24t
        -0x39t
        -0x12t
        -0x17t
        -0x5bt
        -0x56t
        -0x17t
        -0x5bt
        -0x15t
        -0xct
        -0x9t
        -0x5bt
        -0xbt
        -0xft
        -0x1at
        -0x18t
        -0x16t
        -0xet
        -0x16t
        -0xdt
        -0x7t
        -0x5bt
        -0x56t
        -0x8t
        -0x5bt
        -0x19t
        -0x16t
        -0x12t
        -0xdt
        -0x14t
        -0x5bt
        -0x6t
        -0x8t
        -0x16t
        -0x17t
        -0x5bt
        -0xct
        -0xdt
        -0x5bt
        -0xbt
        -0xft
        -0x1at
        -0x18t
        -0x16t
        -0xet
        -0x16t
        -0xdt
        -0x7t
        -0x5bt
        -0x56t
        -0x8t
        -0xet
        0x19t
        0x14t
        -0x30t
        -0x2bt
        0x14t
        -0x30t
        0x16t
        0x1ft
        0x22t
        -0x30t
        0x24t
        0x15t
        0x1dt
        0x20t
        0x1ct
        0x11t
        0x24t
        0x15t
        -0x30t
        -0x2bt
        0x23t
        -0x30t
        0x12t
        0x15t
        0x19t
        0x1et
        0x17t
        -0x30t
        0x25t
        0x23t
        0x15t
        0x14t
        -0x30t
        0x1ft
        0x1et
        -0x30t
        0x24t
        0x15t
        0x1dt
        0x20t
        0x1ct
        0x11t
        0x24t
        0x15t
        -0x30t
        -0x2bt
        0x23t
        -0x39t
        -0x14t
        -0xct
        -0x21t
        -0x16t
        -0x19t
        -0x1et
        -0x62t
        -0x40t
        -0x19t
        -0x1et
        -0x32t
        -0x21t
        -0x9t
        -0x16t
        -0x13t
        -0x21t
        -0x1et
        0xft
        0x20t
        0x28t
        0x2bt
        0x27t
        0x1ct
        0x2ft
        0x20t
        -0x25t
        -0x20t
        0x2et
        -0x25t
        0x24t
        0x2et
        -0x25t
        0x29t
        0x2at
        0x2ft
        -0x25t
        0x31t
        0x1ct
        0x27t
        0x24t
        0x1ft
        -0x25t
        0x1dt
        0x1ct
        0x29t
        0x29t
        0x20t
        0x2dt
        -0x25t
        0x2ft
        0x20t
        0x28t
        0x2bt
        0x27t
        0x1ct
        0x2ft
        0x20t
        -0x38t
        -0x1ft
        -0x1at
        -0x18t
        -0x1dt
        -0x1dt
        -0x1et
        -0x1bt
        -0x19t
        -0x28t
        -0x29t
        -0x6dt
        -0x4bt
        -0x24t
        -0x29t
        -0x3dt
        -0x2ct
        -0x14t
        -0x21t
        -0x1et
        -0x2ct
        -0x29t
        -0x6dt
        -0x19t
        -0x14t
        -0x1dt
        -0x28t
        -0x6dt
        -0x17t
        -0x8t
        -0xft
        -0xet
        -0x7t
        -0xct
        -0x11t
        -0x7t
        -0xct
        0x6t
        0xdt
        0x8t
        0x3t
        0x18t
        0xdt
        0x11t
        0x9t
        0x3t
        0x18t
        0x13t
        0xft
        0x9t
        0x12t
        -0x37t
        -0x36t
        -0x25t
        -0x32t
        -0x38t
        -0x36t
        -0x3ct
        -0x32t
        -0x37t
        0x3at
        0x2dt
        0x3bt
        0x37t
        0x34t
        0x3et
        0x2dt
        0x2ct
        0x27t
        0x38t
        0x34t
        0x29t
        0x2bt
        0x2dt
        0x35t
        0x2dt
        0x36t
        0x3ct
        0x27t
        0x31t
        0x2ct
        0x3at
        0x2bt
        0x32t
        0x26t
        0x3dt
        0x2ct
        0x39t
        0x3at
        0x30t
        0x36t
        0x35t
        0x2ct
        0x1dt
        0x25t
        0x28t
        0x24t
        0x19t
        0x2ct
        0x1dt
        0x21t
        0x26t
        0x1dt
        0x12t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YPLhW1YthHwH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C5pYKBzTNFhaTyoOn8CLtRZjld8VucJT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nwsPGMG6WiL6DBh0FHrHZ0R5IXcuLobJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gK87iCVuQY9qRaZHEz4I1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yLpaI56t1HZbTv34O8DVm8KvrNdbdGTz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "u7C3r8DCX9eoMUGzC5EwjUGrObNKQaYD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hw4dG9XbulEGH2HnH1CXedNx1Lx9pLFE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "teiwDyYVI0VIQpP4hHHpy5xIPHWhYAA5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jw;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Jr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jm;
        }
    .end annotation

    .line 40557
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A09:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40558
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40559
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A08:Lcom/facebook/ads/redexgen/X/Jr;

    .line 40560
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40561
    :cond_0
    return-void

    .line 40562
    :cond_1
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 40563
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 40564
    const/16 v2, 0xaa

    const/16 v1, 0x28

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A05()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A01:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 40566
    const/4 v0, 0x0

    return-object v0

    .line 40567
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jw;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jw;->A05:[Ljava/lang/String;

    const-string v1, "nWWGWN2JOSzWcz2EKeaa2WFuGi6FMoRa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A07()Z
    .locals 2

    .line 40569
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A03:Lcom/facebook/ads/redexgen/X/Jv;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
