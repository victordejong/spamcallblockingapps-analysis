.class public final Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WW;->A0H(Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6a;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WW;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WW;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)V
    .locals 0

    .line 57139
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WU;->A01:Lcom/facebook/ads/redexgen/X/WW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WU;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 6

    .line 57140
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 57141
    .local p0, "systemSettingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SettingsManagerSignalCollector$SystemSetting;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6d;

    .line 57142
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57143
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A01()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57144
    .local v4, "systemSettingKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A01:Lcom/facebook/ads/redexgen/X/WW;

    .line 57145
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WW;->A01(Lcom/facebook/ads/redexgen/X/WW;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/6a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/WV;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6a;)V

    .line 57146
    .local v0, "systemSettings":Lcom/facebook/ads/redexgen/X/WV;
    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57147
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A01:Lcom/facebook/ads/redexgen/X/WW;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/WW;->A02(Lcom/facebook/ads/redexgen/X/WW;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
