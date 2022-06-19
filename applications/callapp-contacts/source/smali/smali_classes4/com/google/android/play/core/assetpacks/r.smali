.class final synthetic Lcom/google/android/play/core/assetpacks/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/t;

.field private final b:Landroid/os/Bundle;

.field private final c:Lcom/google/android/play/core/assetpacks/b;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/t;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/r;->a:Lcom/google/android/play/core/assetpacks/t;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/r;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/r;->c:Lcom/google/android/play/core/assetpacks/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/r;->a:Lcom/google/android/play/core/assetpacks/t;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/r;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/r;->c:Lcom/google/android/play/core/assetpacks/b;

    .line 1000
    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/t;->a:Lcom/google/android/play/core/assetpacks/bb;

    .line 2000
    new-instance v4, Lcom/google/android/play/core/assetpacks/ar;

    invoke-direct {v4, v3, v1}, Lcom/google/android/play/core/assetpacks/ar;-><init>(Lcom/google/android/play/core/assetpacks/bb;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/t;->a(Lcom/google/android/play/core/assetpacks/b;)V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/t;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/cs;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/cs;->a()V

    :cond_0
    return-void
.end method
