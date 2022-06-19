.class public final Lcom/facebook/ads/redexgen/X/YL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YJ;->A0H(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YJ;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YJ;Ljava/util/List;)V
    .locals 0

    .line 65795
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/YJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YL;->A01:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65796
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65797
    .local p0, "fileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/FileInfoSignalCollector$FileInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6d;

    .line 65798
    .local v0, "bundledSignalMetadata":Lcom/facebook/ads/redexgen/X/6d;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65799
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6d;->A02()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YJ;->A08(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65800
    .local v3, "fileNameKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YJ;->A04(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/YK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/YK;-><init>(Ljava/io/File;)V

    .line 65801
    .local v0, "fileInfo":Lcom/facebook/ads/redexgen/X/YK;
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65802
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YL;->A00:Lcom/facebook/ads/redexgen/X/YJ;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/YJ;->A01(Lcom/facebook/ads/redexgen/X/YJ;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
