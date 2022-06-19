.class public final Lcom/facebook/ads/redexgen/X/Xb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XZ;->A0H(Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6a;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XZ;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xb;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XZ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)V
    .locals 0

    .line 65215
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xb;->A01:Lcom/facebook/ads/redexgen/X/XZ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xb;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mwtqyl31GklnCNJD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WfJxGXcijYPN5233ZnzQUJPP9gsr046E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2ktok1umeNeIEVhJ7ETNWVo93dSdGxP6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6dI5XafqraXIAwB1V4o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UXa4kzEUCAKstyg7WmqF2eXIpgNQvJ9k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "obnnbEmIZfNybbB3AeMRVsHNTNBWXQn6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EyI9ZXeU983qKEfngIndGqKP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RoDZdMXbgHSGrYr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 7

    .line 65216
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65217
    .local p0, "systemSettingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SettingsManagerSignalCollector$SystemSetting;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xb;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/6d;

    .line 65218
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6d;->A03()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A03:[Ljava/lang/String;

    const-string v1, "UceyrL1jpXwjvXX1qrcbMjWxv2xQMR22"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 65219
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6d;->A02()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65220
    .local v6, "systemSettingKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xb;->A01:Lcom/facebook/ads/redexgen/X/XZ;

    .line 65221
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XZ;->A01(Lcom/facebook/ads/redexgen/X/XZ;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/6a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xa;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Xa;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6a;)V

    .line 65222
    .local v0, "systemSettings":Lcom/facebook/ads/redexgen/X/Xa;
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65223
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xb;->A01:Lcom/facebook/ads/redexgen/X/XZ;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/XZ;->A02(Lcom/facebook/ads/redexgen/X/XZ;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xb;->A03:[Ljava/lang/String;

    const-string v1, "CMmVKK0v41l2IL9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "eC6XYHvv4vXeFsRw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    return-object v3
.end method
