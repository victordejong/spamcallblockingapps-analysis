.class public interface abstract Lcom/verizon/ads/inlineplacement/InlineAdAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/AdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;,
        Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;
    }
.end annotation


# virtual methods
.method public abstract abortLoad()V
.end method

.method public abstract fireImpression()V
.end method

.method public abstract getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract isImmersiveEnabled()Z
.end method

.method public abstract isResized()Z
.end method

.method public abstract loadView(Landroid/content/Context;ILcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract setImmersiveEnabled(Z)V
.end method

.method public abstract setListener(Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;)V
.end method
