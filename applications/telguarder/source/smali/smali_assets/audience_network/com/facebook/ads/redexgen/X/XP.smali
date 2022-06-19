.class public final Lcom/facebook/ads/redexgen/X/XP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XF;->A0H()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XP;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;)V
    .locals 0

    .line 65073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EsXcsXyC2hTnYJ31BrBYjWvBLbMJCVxl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3HalFi2mrLaSDwSGXQLL6BVTcSxJiAoI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5lRr9MWmhIkr0ziN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "adJFlvrfbLsDukFh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "44HyhJPYOBMXUyd5mylSdCypNRXzYOBG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AwA32Chz481a0NvfZ05oZrBnQYGaj1Fv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LOgr59SDvrHcM7e4G3HuiIgGhbY6trLO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6soxG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XP;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 65074
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_0

    .line 65075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65076
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/XF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XF;->A03(Lcom/facebook/ads/redexgen/X/XF;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65078
    :goto_0
    return-object v0

    .line 65079
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/XF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A01:[Ljava/lang/String;

    const-string v1, "r4KChel73nHOjwlD8ua7nIIZespF2cWd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "iGvEWqV1Cjh5U8yI55aQADHf9TmxREoq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
