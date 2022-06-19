.class final synthetic Lcom/google/android/play/core/assetpacks/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/play/core/assetpacks/s;

.field private final e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/r;->d:Lcom/google/android/play/core/assetpacks/s;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/r;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/r;->d:Lcom/google/android/play/core/assetpacks/s;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/r;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/s;->g(Landroid/os/Bundle;)V

    return-void
.end method
