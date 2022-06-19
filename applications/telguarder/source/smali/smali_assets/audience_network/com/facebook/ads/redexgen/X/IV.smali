.class public final Lcom/facebook/ads/redexgen/X/IV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/IW;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IV;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/IW;Lcom/facebook/ads/redexgen/X/IW;)I
    .locals 4

    .line 38603
    iget v1, p1, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    iget v0, p2, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[Ljava/lang/String;

    const-string v1, "sdpEG3h9tP095LmNCU2QvBRN8NsWD2xc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rqoWxWgMbNRmUh1Namd98hWeNhIX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aTOoAvZ1MXN7MixUxzv6eLBEEanUzrHD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1bTvYmO7Dr7t0vwjtqRMWAeofnFF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pF0feFCiAlgL71oCvulerf0TA3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ODHvMiBsmsgS3yrZd4OD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CVLyi8pwdt9L5rMT9wVygv7j2j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IR4gVPixxlehuvWC0ciMnpXNDHlFNYDS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "L7QY4JlbtUafh1dE2Mbd5CCNW1eJoBI8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IV;->A00:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 38604
    check-cast p1, Lcom/facebook/ads/redexgen/X/IW;

    check-cast p2, Lcom/facebook/ads/redexgen/X/IW;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/IV;->A00(Lcom/facebook/ads/redexgen/X/IW;Lcom/facebook/ads/redexgen/X/IW;)I

    move-result v0

    return v0
.end method
