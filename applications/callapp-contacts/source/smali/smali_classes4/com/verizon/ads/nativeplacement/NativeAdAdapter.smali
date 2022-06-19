.class public interface abstract Lcom/verizon/ads/nativeplacement/NativeAdAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/AdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;,
        Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;
    }
.end annotation


# virtual methods
.method public abstract abortLoadComponents()V
.end method

.method public abstract fireImpression(Landroid/content/Context;)V
.end method

.method public abstract getAdType()Ljava/lang/String;
.end method

.method public abstract getComponent(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lcom/verizon/ads/Component;
.end method

.method public abstract getComponentIds(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/nativeplacement/NativeComponentBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lorg/json/JSONObject;
.end method

.method public abstract getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public abstract getRequiredComponentIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootBundle()Lcom/verizon/ads/nativeplacement/NativeComponentBundle;
.end method

.method public abstract invokeDefaultAction(Landroid/content/Context;)V
.end method

.method public abstract loadComponents(ZILcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V
.end method

.method public abstract registerContainerView(Landroid/view/ViewGroup;)Z
.end method

.method public abstract release()V
.end method

.method public abstract setListener(Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;)V
.end method
