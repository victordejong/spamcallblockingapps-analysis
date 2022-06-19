.class public final Lcom/facebook/ads/redexgen/X/W4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WM;->A0X()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W4;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WM;)V
    .locals 0

    .line 56802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Kjl9x1nXLMp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FYT6FJfE388FncoeBbUW5LDH7Ti6Kpnc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Yxd2XW5tX0tpbE5v80iFGWNMQ7F"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Eun4caaboMQouomEKTkKbMJy1uWMR8C3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2B"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gVUv49X3C1I0CRHiCQrxfKc2j3pZm33W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VtV7HGxoJcmYVE0XtMWfAnTQdxbbthfO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Muv0aFmfDz7QlEQw1d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W4;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 56803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A0B(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WM;->A0B(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56805
    :goto_0
    return-object v0

    .line 56806
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/WM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A01:[Ljava/lang/String;

    const-string v1, "czOc910r7ol"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "WgsI1fVM7Yu7d9q7aeaJmksjNii"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
