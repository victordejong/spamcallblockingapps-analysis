.class public final Lcom/facebook/ads/redexgen/X/Rk;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0u;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rk;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rk;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51164
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rk;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x43

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
    .locals 4

    const/16 v0, 0x11

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A02:[Ljava/lang/String;

    const-string v1, "QkfkB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Rk;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1dt
        0x29t
        0x1ct
        0x28t
        0x2ct
        0x1ct
        0x25t
        0x1at
        0x30t
        0x16t
        0x1at
        0x18t
        0x27t
        0x27t
        0x20t
        0x25t
        0x1et
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oskFp91e5pmXbfqncEKHUOJlooKh56jY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lReJ4EGI0ZfzcS4beAfFSCPJefxJWm51"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X9zy5AMUM8AKtatrcfePQZWL0uWUICrn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wxwSRA3odXIdIsY7f5yZfv3v7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O6Pxh8VVn00f1EJnP312TgPdEktEk3X8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2QJh3yF6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0YwPA87fpumxZ406JTpoKHsZ368w"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aJIZZEX98MAeULDgBorQq277OQTM9IaN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 51165
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A00(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A04:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 51166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51167
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 51168
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A04()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/1M;

    .line 51169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1M;->A05(I)V

    .line 51170
    sget-object v1, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A07(Ljava/lang/String;)V

    .line 51171
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A05()V

    .line 51172
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A07()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51173
    .end local v2
    :catch_0
    move-exception v3

    .line 51174
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 51175
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0x:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 51176
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0

    .line 51177
    :catch_1
    move-exception v3

    .line 51178
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A08()V

    .line 51179
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 51180
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0w:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 51181
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 51182
    :cond_0
    :goto_0
    return-void
.end method
