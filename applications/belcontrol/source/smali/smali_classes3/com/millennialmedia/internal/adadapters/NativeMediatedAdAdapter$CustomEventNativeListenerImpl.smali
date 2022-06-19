.class public Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomEventNativeListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;-><init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/millennialmedia/mediation/ErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed called with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/mediation/CustomEventNativeAd;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/mediation/CustomEventNativeAd;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initSucceeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An exception was thrown while loading custom event native ad."

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$100(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;->initFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
