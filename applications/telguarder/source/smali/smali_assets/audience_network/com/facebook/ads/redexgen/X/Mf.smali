.class public final Lcom/facebook/ads/redexgen/X/Mf;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I

.field public static final A02:I

.field public static final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44321
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mf;->A03()V

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mf;->A01:I

    .line 44322
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mf;->A03:I

    .line 44323
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mf;->A02:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;
    .locals 0
    .param p0    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44325
    if-nez p0, :cond_0

    .line 44326
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A04:Lcom/facebook/ads/redexgen/X/10;

    return-object p0

    .line 44327
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Mf;->A04(Lcom/facebook/ads/NativeAdLayout;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44328
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A05:Lcom/facebook/ads/redexgen/X/10;

    return-object p0

    .line 44329
    :cond_1
    sget-object p0, Lcom/facebook/ads/redexgen/X/10;->A03:Lcom/facebook/ads/redexgen/X/10;

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/Me;
    .locals 5
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 44330
    const/4 v4, 0x0

    if-nez p3, :cond_0

    .line 44331
    return-object v4

    .line 44332
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mf;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_3

    .line 44333
    .local p1, "w":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mf;->A00:[Ljava/lang/String;

    const-string v1, "5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "x"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result v1

    .line 44334
    .local p2, "h":I
    sget v0, Lcom/facebook/ads/redexgen/X/Mf;->A01:I

    if-lt v3, v0, :cond_1

    if-lt v1, v0, :cond_1

    .line 44335
    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    return-object v0

    .line 44336
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Mf;->A03:I

    if-lt v3, v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Mf;->A02:I

    if-lt v1, v0, :cond_2

    .line 44337
    new-instance v0, Lcom/facebook/ads/redexgen/X/SD;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    return-object v0

    .line 44338
    :cond_2
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/M8;Lcom/facebook/ads/redexgen/X/M7;)Lcom/facebook/ads/redexgen/X/Me;
    .locals 1

    .line 44339
    new-instance v0, Lcom/facebook/ads/redexgen/X/SE;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/M8;Lcom/facebook/ads/redexgen/X/M7;)V

    return-object v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N7Y4O4Xp0bXRpwQYmrnUbbD5XPNn0nfl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PsTgqcCc8jcMoxm2RXWy1mA6rhf59"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zMLnehec4ICfDGOtTSDp3symXOGZpaRx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AnvCnC9uV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JoTWE5M61fQkMjrwCjPz5KG5vu8cqeKb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O6aKPphMSjoWO4xDWlhiQ7T2kp0fs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mf;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/NativeAdLayout;)Z
    .locals 6

    .line 44340
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getWidth()I

    move-result v5

    .line 44341
    .local p0, "w":I
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getHeight()I

    move-result v4

    .line 44342
    .local v5, "h":I
    sget v0, Lcom/facebook/ads/redexgen/X/Mf;->A01:I

    if-lt v5, v0, :cond_0

    if-ge v4, v0, :cond_3

    :cond_0
    sget v3, Lcom/facebook/ads/redexgen/X/Mf;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Mf;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mf;->A00:[Ljava/lang/String;

    const-string v1, "e"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "I"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lt v5, v3, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Mf;->A02:I

    if-ge v4, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
