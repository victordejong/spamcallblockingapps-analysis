.class public abstract Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.super Lcom/millennialmedia/internal/adadapters/AdAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
.end method
