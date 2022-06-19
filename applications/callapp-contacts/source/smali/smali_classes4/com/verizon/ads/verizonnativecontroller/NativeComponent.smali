.class public interface abstract Lcom/verizon/ads/verizonnativecontroller/NativeComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# virtual methods
.method public abstract applyStyle(Landroid/view/View;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStyleAttributeValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract overrideStyle(Landroid/view/View;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V
.end method
