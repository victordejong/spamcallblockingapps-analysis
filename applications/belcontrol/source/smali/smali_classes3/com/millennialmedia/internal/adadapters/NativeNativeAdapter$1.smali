.class public Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public initSucceeded()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
