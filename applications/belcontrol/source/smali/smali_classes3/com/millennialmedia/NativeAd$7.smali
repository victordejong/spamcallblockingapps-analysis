.class public Lcom/millennialmedia/NativeAd$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field public final synthetic val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$7;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$7;->val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$7;->val$localNativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$7;->this$0:Lcom/millennialmedia/NativeAd;

    new-instance v2, Lcom/millennialmedia/NativeAd$NativeErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/millennialmedia/NativeAd$NativeErrorStatus;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/NativeAd$NativeListener;->onLoadFailed(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeErrorStatus;)V

    return-void
.end method
