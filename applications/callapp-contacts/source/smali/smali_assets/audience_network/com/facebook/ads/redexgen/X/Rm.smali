.class public final Lcom/facebook/ads/redexgen/X/Rm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0v;

.field public A01:Lcom/facebook/ads/redexgen/X/Ru;

.field public A02:Lcom/facebook/ads/redexgen/X/ES;

.field public A03:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/NV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/aD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 51189
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rm;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rm;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rm;->A0C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A07:Z

    .line 51192
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A08:Z

    .line 51193
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A09:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/0v;
    .locals 0

    .line 51194
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/Ru;
    .locals 0

    .line 51195
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A01:Lcom/facebook/ads/redexgen/X/Ru;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/ES;
    .locals 0

    .line 51196
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 51197
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04()Ljava/lang/String;
    .locals 1

    .line 51198
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rm;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rm;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rm;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A0B:[Ljava/lang/String;

    const-string v1, "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3ywSXssJKLxMazlfVUMLvW6ymO505mlb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 3

    .line 51199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A07:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A08:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A09:Z

    if-nez v0, :cond_1

    .line 51200
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9b(Lcom/facebook/ads/redexgen/X/Rm;Landroid/view/View;)V

    .line 51201
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3Z(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rm;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    .line 51202
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A0B:[Ljava/lang/String;

    const-string v1, "DQYu3GBVfiN4Ml"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    .line 51203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rm;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        -0x1at
        -0x7t
        -0xbt
        -0x50t
        -0x17t
        -0xbt
        -0x12t
        -0x13t
        -0x17t
        -0x18t
        -0x26t
        -0x5ft
        -0x54t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1VlIdrj3fRAASVh0IRQbA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AKXoeI10d8PJONEXEmQHjWIEkAB2E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfXt1ktTFXNYFvURT1ePpe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "i536pd2CEb7n0lc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TelURl5RBqiFivFSJRRvco6RCKborqoX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Rm;)V
    .locals 0

    .line 51204
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;->A06()V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 10

    .line 51205
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rs;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Rs;

    move-result-object v3

    .line 51206
    .local p0, "dataModel":Lcom/facebook/ads/redexgen/X/Rs;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rs;->A5x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A06:Ljava/lang/String;

    .line 51207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Lcom/facebook/ads/redexgen/X/JC;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/0j;->A04(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A42()V

    .line 51209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9c(Lcom/facebook/ads/redexgen/X/Rm;Lcom/facebook/ads/AdError;)V

    .line 51210
    return-void

    .line 51211
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Fe;-><init>(Lcom/facebook/ads/redexgen/X/Rm;Lcom/facebook/ads/redexgen/X/Rs;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A04:Lcom/facebook/ads/redexgen/X/NV;

    .line 51212
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A04:Lcom/facebook/ads/redexgen/X/NV;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51213
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A04()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    .line 51214
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    .line 51215
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A07()I

    move-result v1

    .line 51216
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A08()I

    move-result v0

    .line 51217
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aD;->A0F(II)V

    .line 51218
    new-instance v9, Lcom/facebook/ads/redexgen/X/Rl;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/Rl;-><init>(Lcom/facebook/ads/redexgen/X/Rm;)V

    .line 51219
    .local v0, "impressionHelper":Lcom/facebook/ads/redexgen/X/0q;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    .line 51220
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/aD;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ru;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/NS;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/0q;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Rm;->A01:Lcom/facebook/ads/redexgen/X/Ru;

    .line 51221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A01:Lcom/facebook/ads/redexgen/X/Ru;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ru;->A09(Lcom/facebook/ads/redexgen/X/Rs;)V

    .line 51222
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    .line 51223
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NY;->A00()Ljava/lang/String;

    move-result-object v5

    .line 51224
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rs;->A05()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 51225
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rm;->A05(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rm;->A05(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/aD;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A07:Z

    .line 51227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;->A06()V

    .line 51228
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Rm;)Z
    .locals 0

    .line 51229
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A09:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Rm;Z)Z
    .locals 0

    .line 51230
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A08:Z

    return p1
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Jq;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 1

    .line 51231
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3Y()V

    .line 51232
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    .line 51233
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rm;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 51234
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/0v;

    .line 51235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    .line 51236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51237
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A13(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A09:Z

    .line 51238
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 51239
    .local p0, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-direct {p0, v0, p5}, Lcom/facebook/ads/redexgen/X/Rm;->A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 51240
    return-void
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 51241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 51242
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 51243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3W(Z)V

    .line 51244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    if-eqz v0, :cond_0

    .line 51245
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aD;->destroy()V

    .line 51246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A05:Lcom/facebook/ads/redexgen/X/aD;

    .line 51247
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A04:Lcom/facebook/ads/redexgen/X/NV;

    .line 51248
    :cond_0
    return-void

    .line 51249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
