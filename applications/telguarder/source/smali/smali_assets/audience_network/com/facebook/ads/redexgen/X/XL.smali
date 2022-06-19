.class public final Lcom/facebook/ads/redexgen/X/XL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XF;->A0L()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XL;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;)V
    .locals 0

    .line 65049
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7mO5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "So7I8Zg83isF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7C733Kymz97HKknakJBn90tUMV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RddQWFuu5jtHp4f84GnrOZz7aQ8WK2Ur"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xxS3X9jfLjcg6n3TtobUw2LR3UPOmjC9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7KWdlKxDuE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fAFcyXW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Jk5z6fQhLRDq0V01CAoPcSN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 65050
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 65051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65052
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/XL;->A01:[Ljava/lang/String;

    const-string v1, "OMBexZnMEkxOjXZubJd9ot5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 65053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65054
    :goto_0
    return-object v0

    .line 65055
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XL;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
