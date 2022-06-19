.class public final Lcom/facebook/ads/redexgen/X/Zz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/66;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Zx;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zz;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 1

    .line 66627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zz;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 66629
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zx;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Zx;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zz;->A00:Lcom/facebook/ads/redexgen/X/Zx;

    .line 66630
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2xrJtKUFqIJPMNbl0Zj2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uhZ4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YnWvJxjAxG3CvQCT2uBRkMsIQRZAlShi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cWMaZ22Bh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hnbu46mmkRgVJu6pqKQZBwTkniNNeRcu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZiBCUy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "esyhtSZc0r5sw6kcyhz1T"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0cLIiH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zz;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/Zx;
    .locals 1

    .line 66631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zz;->A00:Lcom/facebook/ads/redexgen/X/Zx;

    return-object v0
.end method

.method public final ADG(Ljava/lang/Throwable;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 66632
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zz;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 66633
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5s;->A00(Landroid/content/Context;)D

    move-result-wide v4

    .line 66634
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpl-double v3, v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zz;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zz;->A02:[Ljava/lang/String;

    const-string v1, "3LQ3Su"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "u7djgP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ltz v3, :cond_2

    .line 66635
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Zz;
    .end local p1    # null:Ljava/lang/Throwable;
    .end local v0
    :cond_1
    return-void

    .line 66636
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 66637
    .local p0, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 66638
    .local p1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 66639
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66640
    .local v0, "stackTrace":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zz;->A00:Lcom/facebook/ads/redexgen/X/Zx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 66641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A02()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/62;

    .line 66642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->A02()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    .line 66643
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 66644
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_3

    .line 66645
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 66646
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 66647
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Zx;->A8h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66648
    return-void
.end method
