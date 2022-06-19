.class public interface abstract Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartYieldDecisionListener"
.end annotation


# virtual methods
.method public abstract onBidLost()V
.end method

.method public abstract onBidWin(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
.end method

.method public abstract onBidWin(Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
.end method

.method public abstract onError()V
.end method
