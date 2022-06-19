.class final Lcom/google/android/play/core/assetpacks/h;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/tasks/p;

.field final synthetic b:Lcom/google/android/play/core/assetpacks/ch;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/ch;Landroid/os/Handler;Lcom/google/android/play/core/tasks/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/h;->b:Lcom/google/android/play/core/assetpacks/ch;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/p;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/p;

    new-instance p2, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0x64

    invoke-direct {p2, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/p;->b(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/p;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/p;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/p;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/p;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h;->b:Lcom/google/android/play/core/assetpacks/ch;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/ch;->a(Lcom/google/android/play/core/assetpacks/ch;)Lcom/google/android/play/core/assetpacks/af;

    move-result-object p1

    const/4 p2, 0x0

    .line 1000
    iput-object p2, p1, Lcom/google/android/play/core/assetpacks/af;->a:Landroid/app/PendingIntent;

    return-void
.end method
