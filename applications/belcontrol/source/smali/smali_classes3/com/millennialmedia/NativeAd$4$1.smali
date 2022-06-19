.class public Lcom/millennialmedia/NativeAd$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$4;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/NativeAd$4;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd$4;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$4$1;->this$1:Lcom/millennialmedia/NativeAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4$1;->this$1:Lcom/millennialmedia/NativeAd$4;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$4;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->access$2100(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$2200(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z

    move-result v0

    new-instance v1, Lcom/millennialmedia/NativeAd$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$4$1$1;-><init>(Lcom/millennialmedia/NativeAd$4$1;Z)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
