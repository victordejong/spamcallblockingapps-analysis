.class public final Lcom/facebook/ads/redexgen/X/OU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OY;->postMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OY;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OY;Ljava/lang/String;)V
    .locals 0

    .line 46775
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OU;->A00:Lcom/facebook/ads/redexgen/X/OY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OU;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OU;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OU;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0x21t
        0x3bt
        0x22t
        0x2at
        0x6et
        0x20t
        0x21t
        0x3at
        0x6et
        0x3et
        0x2ft
        0x3ct
        0x3dt
        0x2bt
        0x6et
        0x3dt
        0x2bt
        0x3ct
        0x38t
        0x2bt
        0x3ct
        0x6et
        0x23t
        0x2bt
        0x3dt
        0x3dt
        0x2ft
        0x29t
        0x2bt
        0x48t
        0x7ft
        0x7ft
        0x62t
        0x7ft
        0x2dt
        0x7dt
        0x6ct
        0x7ft
        0x7et
        0x64t
        0x63t
        0x6at
        0x2dt
        0x47t
        0x5et
        0x42t
        0x43t
        0x2dt
        0x64t
        0x63t
        0x2dt
        0x7dt
        0x62t
        0x7et
        0x79t
        0x40t
        0x68t
        0x7et
        0x7et
        0x6ct
        0x6at
        0x68t
        0x2dt
        0x57t
        0x43t
        0x42t
        0x5et
        0x7dt
        0x53t
        0x4ft
        0x35t
        0x28t
        0x24t
        0x22t
        0x31t
        0xft
        0x34t
        0x31t
        0x24t
        0x31t
        0xet
        0x3t
        0xat
        0x1ft
        0x3at
        0x3ct
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v7, p0

    .line 46776
    :try_start_0
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/OU;->A01:Ljava/lang/String;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46777
    .local v0, "object":Lorg/json/JSONObject;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/OU;->A00:Lcom/facebook/ads/redexgen/X/OY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OY;->A02(Lcom/facebook/ads/redexgen/X/OY;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46778
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/OU;->A00:Lcom/facebook/ads/redexgen/X/OY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OY;->A00(Lcom/facebook/ads/redexgen/X/OY;)Lcom/facebook/ads/redexgen/X/OC;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A0p:I

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/OC;->A04(ILjava/lang/String;)V

    .line 46779
    return-void

    .line 46780
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/OU;
    :cond_1
    const/16 v2, 0x51

    const/4 v1, 0x4

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OW;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OW;

    move-result-object v5

    .line 46781
    .local v7, "action":Lcom/facebook/ads/redexgen/X/OW;
    iget-object v4, v7, Lcom/facebook/ads/redexgen/X/OU;->A00:Lcom/facebook/ads/redexgen/X/OY;

    const/16 v2, 0x47

    const/16 v1, 0xa

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x55

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/OY;->A0F(Lcom/facebook/ads/redexgen/X/OY;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46782
    :catch_0
    move-exception v6

    .line 46783
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/OU;->A00:Lcom/facebook/ads/redexgen/X/OY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OY;->A00(Lcom/facebook/ads/redexgen/X/OY;)Lcom/facebook/ads/redexgen/X/OC;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0s:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/16 v1, 0x22

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46784
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46785
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/OC;->A04(ILjava/lang/String;)V

    .line 46786
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
