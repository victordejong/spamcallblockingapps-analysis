.class public Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

.field public final synthetic val$mediationExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;->val$mediationExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$400(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventNative;

    move-result-object v0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl;-><init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$1;->val$mediationExtras:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/mediation/CustomEventNative;->loadNativeAd(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventNative$CustomEventNativeListener;Landroid/os/Bundle;)V

    return-void
.end method
