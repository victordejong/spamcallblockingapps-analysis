.class public final Lcom/facebook/ads/redexgen/X/U6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/66;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/U8;

.field public final A01:Lcom/facebook/ads/redexgen/X/XK;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U6;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 1

    .line 55710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55711
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 55712
    new-instance v0, Lcom/facebook/ads/redexgen/X/U8;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/U8;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    .line 55713
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iWDBF2OKl3jtj3mE0UZLtkhUaVvUxXqs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ms2LCEwCyzsqM8QDDj0PRev1P1CSm3w7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hMtVrOKQMF9h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gi6PEiuAAOhVuZEccjIoIAk9XYc1uF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "R32JKWcbl7Qu2cyp2LhmQehQDOktlipk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kBJUlLOX6LAUVPMDIzawXbz3hNZwTKWy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5r9f7V6KCkM3IvysTdnytDlDBRDUQAcw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vGzO7SO4CN32udhBb2qyIGFDHHv1hOkX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/U8;
    .locals 1

    .line 55714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    return-object v0
.end method

.method public final ADG(Ljava/lang/Throwable;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 55715
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U6;->A01:Lcom/facebook/ads/redexgen/X/XK;

    .line 55716
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5s;->A00(Landroid/content/Context;)D

    move-result-wide v3

    .line 55717
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    cmpl-double v0, v3, v1

    if-ltz v0, :cond_1

    .line 55718
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/U6;
    .end local p1    # null:Ljava/lang/Throwable;
    .end local v0
    :cond_0
    return-void

    .line 55719
    :cond_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 55720
    .local p0, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 55721
    .local p1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55722
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 55723
    .local v0, "stackTrace":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/U6;->A00:Lcom/facebook/ads/redexgen/X/U8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A04:Lcom/facebook/ads/redexgen/X/61;

    .line 55724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A03()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A06:Lcom/facebook/ads/redexgen/X/62;

    .line 55725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->A02()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 55726
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 55727
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/U6;->A02:[Ljava/lang/String;

    const-string v1, "Ct83iaSYEVOHUGfDQtOJkAbKybUxEBTx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v1, 0x1f4

    if-le v3, v1, :cond_3

    .line 55728
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 55729
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    .line 55730
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/U8;->A8f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55731
    return-void
.end method
