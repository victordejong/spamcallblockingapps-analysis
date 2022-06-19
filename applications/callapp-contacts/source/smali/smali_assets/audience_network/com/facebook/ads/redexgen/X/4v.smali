.class public final Lcom/facebook/ads/redexgen/X/4v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdViewApi;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/AdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/FB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Na;

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Landroid/util/DisplayMetrics;

.field public final A08:Lcom/facebook/ads/AdView;

.field public final A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/ES;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jq;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4v;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4v;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .line 12297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    .line 12299
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-eq p3, v0, :cond_0

    .line 12300
    invoke-virtual {p5}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    .line 12301
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Jq;->A02(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Jq;

    .line 12302
    move-object v3, p2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A0C:Ljava/lang/String;

    .line 12303
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4v;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    .line 12304
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    .line 12305
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    .line 12306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A2j(Ljava/lang/String;Ljava/lang/String;)V

    .line 12307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v4

    .line 12308
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/Jr;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 12309
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Jq;->A02(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;I)V

    .line 12310
    .local p1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 12311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 12312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/FB;-><init>(Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    .line 12313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ta;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ta;-><init>(Lcom/facebook/ads/redexgen/X/4v;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 12314
    return-void

    .line 12315
    .end local p0    # "adTemplate":Lcom/facebook/ads/redexgen/X/Jr;
    .end local p1    # "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    :cond_0
    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jm;
        }
    .end annotation

    .line 12316
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/4v;->A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    .line 12317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3e()V

    .line 12318
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jm;
        }
    .end annotation

    .line 12319
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jw;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    .line 12320
    .local p0, "template":Lcom/facebook/ads/redexgen/X/Jr;
    if-eqz v0, :cond_0

    .line 12321
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jw;->A04(Lcom/facebook/ads/redexgen/X/Jr;)V

    .line 12322
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    .line 12323
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    .line 12324
    const/16 v2, 0x43

    const/16 v1, 0x29

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jm;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

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
    .locals 4

    const/16 v0, 0x7f

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "i0zr3oWhaZ1ZQYjulO9yltnfKtDweGPM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "f16HnFk6V4WfoRTY4RGQrwGHYb77b2mz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4v;->A0D:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        -0x4ft
        -0x4ft
        -0x46t
        -0x4ct
        -0x4ct
        -0x49t
        -0x1at
        0x7at
        0x77t
        0x78t
        0x7et
        0x79t
        0x77t
        -0x57t
        0x7bt
        -0xbt
        -0xft
        -0xbt
        0x25t
        -0x11t
        -0xet
        -0xat
        -0xat
        -0x11t
        0xet
        0x1bt
        0x1bt
        0x12t
        0x1ft
        -0x33t
        0xet
        0x11t
        -0x33t
        0x11t
        0x12t
        0x20t
        0x21t
        0x1ft
        0x1ct
        0x26t
        0x12t
        0x11t
        -0xet
        0x11t
        0x1et
        0x1et
        0x15t
        0x22t
        -0x30t
        0x11t
        0x14t
        -0x30t
        0x1ct
        0x1ft
        0x11t
        0x14t
        -0x30t
        0x22t
        0x15t
        0x21t
        0x25t
        0x15t
        0x23t
        0x24t
        0x15t
        0x14t
        -0x76t
        -0x58t
        -0x4bt
        -0x4bt
        -0x4at
        -0x45t
        0x67t
        -0x53t
        -0x50t
        -0x4bt
        -0x55t
        0x67t
        -0x58t
        0x67t
        -0x45t
        -0x54t
        -0x4ct
        -0x49t
        -0x4dt
        -0x58t
        -0x45t
        -0x54t
        0x67t
        -0x45t
        -0x51t
        -0x58t
        -0x45t
        0x67t
        -0x4dt
        -0x4at
        -0x58t
        -0x55t
        0x67t
        -0x57t
        -0x50t
        -0x55t
        0x67t
        0x6et
        0x6ct
        -0x46t
        0x6et
        -0x4dt
        -0x4at
        -0x5bt
        -0x45t
        -0x34t
        -0x49t
        -0x14t
        -0x13t
        -0x5t
        -0x4t
        -0x6t
        -0x9t
        0x1t
        -0x28t
        -0x25t
        -0x33t
        -0x30t
        -0x53t
        -0x30t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "of0bzA7MwNGTia9F31tAkieNA09H6OOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TyTQj7xFBxvma6AaZ1TUwVS6lItsexiQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kN9yyhhGlFuDqh5wulKzoOOSsFZblOVu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DXKKP4SSVuW5x9unPZpKCS00jdGSX4q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ceBkREnsnDPWKQGMERGG6oDocc2kf8dJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ULZujO58Hn4sCnlurEwExiI5FfKtYml"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oBzM86F4GMvLYp6iWCqbmyfPVfF4ncm8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8s2Qgj6JQYkd4IbFNTxV1lfTN5yJUxqm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    .line 12326
    if-nez p1, :cond_0

    .line 12327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2g()V

    .line 12328
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12329
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2f()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "8EJDtH9EjlwutgZO3WtzB3nx702AY4O"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dTiKD7UwUCw1SvcKYJrEphBgoR9CLtC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 12330
    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0U(Ljava/lang/String;)V

    .line 12331
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 12332
    return-void
.end method


# virtual methods
.method public final A05()J
    .locals 2

    .line 12333
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    return-wide v0
.end method

.method public final A06()Landroid/util/DisplayMetrics;
    .locals 1

    .line 12334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/AdListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/AdView;
    .locals 1

    .line 12336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/FB;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/ES;
    .locals 1

    .line 12338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Jq;
    .locals 1

    .line 12339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Jq;

    return-object v0
.end method

.method public final A0C(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 4

    .line 12340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3r(Z)V

    .line 12341
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    .line 12343
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/P0;->A01(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v3

    .line 12344
    .local p0, "overlayView":Lcom/facebook/ads/redexgen/X/P1;
    if-eqz v3, :cond_0

    .line 12345
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12346
    .local p1, "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12347
    .local p2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12348
    .end local p0    # "overlayView":Lcom/facebook/ads/redexgen/X/P1;
    .end local p1    # "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local p2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 12349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/AdListener;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/AdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c(Z)V

    .line 12351
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    .line 12352
    return-void

    .line 12353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Na;)V
    .locals 0

    .line 12354
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/Na;

    .line 12355
    return-void
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 12356
    new-instance v0, Lcom/facebook/ads/redexgen/X/JN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JN;-><init>(Lcom/facebook/ads/redexgen/X/4v;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x72

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2k()V

    .line 12358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 12359
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0W(Z)V

    .line 12360
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    .line 12361
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/Na;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    .line 12362
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12363
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/Na;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "fmi4ltQko56R0Ot1hIU3uMuoiOam3SD1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "7H1g3sSDF1cZj7eOXlokIXc1uirRZwhG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Na;->A08()V

    .line 12364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12365
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 12366
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 12367
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    .line 12368
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    .line 12369
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 12370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 12371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/FB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0X()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 12372
    .local p0, "isInvalidated":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4Y(Z)V

    .line 12373
    return v1

    .line 12374
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A04(Ljava/lang/String;)V

    .line 12376
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12377
    check-cast p1, Lcom/facebook/ads/redexgen/X/JN;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JN;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A04(Ljava/lang/String;)V

    .line 12378
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 12379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdViewParentApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12380
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 12381
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 12382
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12383
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/lang/String;

    .line 12384
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    .line 12385
    return-void
.end method
