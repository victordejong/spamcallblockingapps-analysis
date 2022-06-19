.class public final Lcom/facebook/ads/redexgen/X/F4;
.super Lcom/facebook/ads/redexgen/X/c2;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0w;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Lcom/facebook/ads/redexgen/X/13;

.field public A03:Lcom/facebook/ads/redexgen/X/16;

.field public A04:Lcom/facebook/ads/redexgen/X/Wm;

.field public A05:Lcom/facebook/ads/redexgen/X/JK;

.field public A06:Lcom/facebook/ads/redexgen/X/KM;

.field public A07:Lcom/facebook/ads/redexgen/X/ON;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F4;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F4;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32263
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;-><init>()V

    .line 32264
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0B:Ljava/lang/String;

    .line 32265
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;
    .locals 0

    .line 32266
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F4;->A01:Lcom/facebook/ads/redexgen/X/12;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 32267
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/F4;Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/ON;
    .locals 0

    .line 32268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F4;->A07:Lcom/facebook/ads/redexgen/X/ON;

    return-object p1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/F4;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/F4;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32269
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 3

    .line 32270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 32271
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/13;->A01()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A07(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32272
    return-void
.end method

.method private A06()V
    .locals 2

    .line 32273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A02:Lcom/facebook/ads/redexgen/X/13;

    if-eqz v0, :cond_0

    .line 32274
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A02:Lcom/facebook/ads/redexgen/X/13;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A06(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32275
    :catch_0
    :cond_0
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xa3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F4;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x10t
        -0xet
        -0xet
        -0xct
        -0x5t
        -0xct
        0x1t
        -0x2t
        -0x4t
        -0xct
        0x3t
        -0xct
        0x1t
        -0x12t
        0x1t
        -0x2t
        0x3t
        -0x10t
        0x3t
        -0x8t
        -0x2t
        -0x3t
        -0x38t
        -0x2ft
        -0x32t
        -0x36t
        -0x2dt
        -0x27t
        -0x47t
        -0x2ct
        -0x30t
        -0x36t
        -0x2dt
        0xbt
        0x3t
        0x2t
        0x7t
        -0x1t
        0x12t
        0x7t
        0xdt
        0xct
        -0x1et
        -0x1t
        0x12t
        -0x1t
        0x20t
        0x1ct
        0x11t
        0x13t
        0x15t
        0x1dt
        0x15t
        0x1et
        0x24t
        -0x7t
        0x14t
        0x10t
        0x12t
        0x5t
        0x4t
        0x5t
        0x6t
        0x9t
        0xet
        0x5t
        0x4t
        -0x11t
        0x12t
        0x9t
        0x5t
        0xet
        0x14t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        -0x15t
        0x5t
        0x19t
        -0x42t
        -0x4ft
        -0x43t
        -0x3ft
        -0x4ft
        -0x41t
        -0x40t
        -0x60t
        -0x4bt
        -0x47t
        -0x4ft
        -0x11t
        -0x1et
        -0xct
        -0x22t
        -0x11t
        -0x1ft
        -0x30t
        -0x1et
        -0x11t
        -0xdt
        -0x1et
        -0x11t
        -0x2et
        -0x31t
        -0x37t
        -0x2t
        -0xft
        0x3t
        -0x13t
        -0x2t
        -0x10t
        -0xft
        -0x10t
        -0x1et
        -0xbt
        -0x10t
        -0xft
        -0x5t
        -0x33t
        -0x10t
        -0x30t
        -0x13t
        0x0t
        -0x13t
        -0x32t
        0x1t
        -0x6t
        -0x10t
        -0x8t
        -0xft
        -0xdt
        -0x1at
        -0x8t
        -0x1et
        -0xdt
        -0x1bt
        -0x1at
        -0x1bt
        -0x20t
        -0x9t
        -0x16t
        -0x1bt
        -0x1at
        -0x10t
        0x1ft
        0x18t
        0x13t
        0x1bt
        0x1ft
        0xft
        -0xdt
        0xet
        -0x3ct
        -0x49t
        -0x4dt
        -0x3bt
        -0x5et
        -0x39t
        -0x42t
        -0x4dt
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "g9SdUg6XNSnvVCS02jX19aczyGq48qDV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lGSQ9LsgX83H3UqklEPZgAjaPEKabNT0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0oXMo4BXc2on8MNFvJxgBv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ulfd9L14l0ScyK0QB689zsPu0EZ5wfqr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W3xKKEfUMxBXJmvfztSkCM8j4ls7Vw3H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lNYBpqeQZYlfeCveDiVEAZh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rx8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "elj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 6

    .line 32276
    iget v4, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:I

    const/16 v2, 0x3a

    const/16 v1, 0x18

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32277
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v4, 0x0

    .line 32278
    const/4 v2, 0x1

    const/16 v1, 0x16

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 32279
    iget v4, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const-string v1, "RWC7frN5DjKRH0uo4BJmLzj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FPcb0UYEDF6wwONX6Ty9E2F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32280
    :cond_0
    :goto_0
    return-void

    .line 32281
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A0f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32282
    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const-string v1, "O4w3do1khQsKhsE3USwlJ7C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rALKIAVwphrvKmHx0hqaLzY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A0f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A(Z)V
    .locals 2

    .line 32283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Lcom/facebook/ads/redexgen/X/KM;

    if-ne v1, v0, :cond_0

    .line 32284
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F4;->A0C(Z)V

    .line 32285
    :goto_0
    return-void

    .line 32286
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Lcom/facebook/ads/redexgen/X/KM;

    if-ne v1, v0, :cond_1

    .line 32287
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F4;->A0B(Z)V

    goto :goto_0

    .line 32288
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F4;->A0C(Z)V

    goto :goto_0
.end method

.method private A0B(Z)V
    .locals 7

    .line 32289
    move-object v0, p0

    .line 32290
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/c2;
    new-instance v6, Lcom/facebook/ads/redexgen/X/c7;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/c7;-><init>(Lcom/facebook/ads/redexgen/X/F4;Lcom/facebook/ads/redexgen/X/c2;)V

    .line 32291
    .local p1, "mPlayablePreCacheListener":Lcom/facebook/ads/redexgen/X/1i;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 32292
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x85

    const/16 v1, 0xe

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 32293
    .local v6, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32295
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 32296
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0c(Lcom/facebook/ads/redexgen/X/JK;)V

    .line 32297
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 32298
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    :goto_0
    return-void

    .line 32299
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-static {v1, v0, p1, v6}, Lcom/facebook/ads/redexgen/X/1k;->A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1i;)V

    goto :goto_0
.end method

.method private A0C(Z)V
    .locals 10

    .line 32300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 32301
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A05:Lcom/facebook/ads/redexgen/X/JK;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0c(Lcom/facebook/ads/redexgen/X/JK;)V

    .line 32302
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x85

    const/16 v1, 0xe

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 32303
    .local v6, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32304
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 32305
    .end local v0
    .end local v1
    .end local v0
    :goto_0
    return-void

    .line 32306
    :cond_0
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    check-cast v8, Lcom/facebook/ads/redexgen/X/bt;

    .line 32307
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/bt;
    move-object v9, p0

    .line 32308
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/c2;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A01:Lcom/facebook/ads/redexgen/X/12;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    .line 32310
    return-void

    .line 32311
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/1l;->A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/bt;)V

    .line 32312
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v7

    .line 32313
    .local v0, "isDSL":Z
    new-instance v4, Lcom/facebook/ads/redexgen/X/F5;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/F5;-><init>(Lcom/facebook/ads/redexgen/X/F4;ZZLcom/facebook/ads/redexgen/X/bt;Lcom/facebook/ads/redexgen/X/c2;)V

    .line 32314
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32315
    invoke-virtual {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0D()I
    .locals 1

    .line 32316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    if-nez v0, :cond_0

    .line 32317
    const/4 v0, -0x1

    return v0

    .line 32318
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0I()I

    move-result v0

    return v0
.end method

.method public final A0E()Z
    .locals 6

    .line 32319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32320
    const/4 v0, 0x0

    return v0

    .line 32321
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A08:Ljava/lang/String;

    .line 32322
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32323
    .local p0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0c(Lcom/facebook/ads/RewardData;)V

    .line 32324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/16;->A0f(Ljava/lang/String;)V

    .line 32325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 32326
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    const/16 v2, 0x9b

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32327
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x6c

    const/16 v1, 0x19

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32328
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A0B:Ljava/lang/String;

    const/16 v2, 0x93

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32329
    if-eqz v5, :cond_1

    .line 32330
    const/16 v2, 0x5d

    const/16 v1, 0xf

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32331
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A0A:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32332
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A00:J

    const/16 v5, 0x52

    const/16 v3, 0xb

    const/16 v0, 0x19

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32333
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A09:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 32334
    const/16 v2, 0x22

    const/16 v1, 0xd

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32335
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/F4;->A09(Landroid/content/Intent;)V

    .line 32336
    invoke-virtual {v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 32337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 32339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kr;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 32340
    const/4 v0, 0x1

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/1n;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32342
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32343
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/F4;->A01:Lcom/facebook/ads/redexgen/X/12;

    .line 32344
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A0A:Ljava/lang/String;

    .line 32345
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A00:J

    .line 32346
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/F4;->A09:Ljava/lang/String;

    .line 32347
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F4;->A0A:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const-string v1, "x5W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "dMK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aget-object v0, v4, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F4;->A03(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A08:Ljava/lang/String;

    .line 32348
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 32349
    .local p0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/16;->A0d(Ljava/lang/String;)V

    .line 32351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32352
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    .line 32353
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0b(I)V

    .line 32354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A05:Lcom/facebook/ads/redexgen/X/JK;

    .line 32356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32357
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    .line 32358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32360
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Wm;
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/13;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/13;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/12;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 32361
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/F4;->A05()V

    .line 32362
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/F4;->A0A(Z)V

    .line 32363
    return-void

    .line 32364
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_1

    .line 32365
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0H()I

    move-result v4

    .line 32366
    .local p1, "experienceType":I
    if-eqz v4, :cond_6

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/F4;->A0E:[Ljava/lang/String;

    const-string v1, "fc2SjyVfNFMTSQhwflPzojFy3Ejr2snH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4k4vT1WhZbJ1Mlr1eks53TJscEmdnfo8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_5

    goto :goto_1

    .line 32367
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0A:Lcom/facebook/ads/redexgen/X/KM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    .line 32368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32369
    goto :goto_1

    .line 32370
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A0B:Lcom/facebook/ads/redexgen/X/KM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Lcom/facebook/ads/redexgen/X/KM;

    .line 32371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A0A:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_1
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 32372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A9f()V
    .locals 2

    .line 32373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 32375
    return-void
.end method

.method public final A9g()V
    .locals 2

    .line 32376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F4;->A01:Lcom/facebook/ads/redexgen/X/12;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/AdError;)V

    .line 32377
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 32378
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/F4;->A06()V

    .line 32379
    return-void
.end method
