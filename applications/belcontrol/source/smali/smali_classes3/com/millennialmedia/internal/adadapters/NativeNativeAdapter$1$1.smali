.class public Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->this$1:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->this$1:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->this$1:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initSucceeded()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1$1;->this$1:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Component info not loaded"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
