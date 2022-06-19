.class final synthetic Lcom/google/android/play/core/assetpacks/p0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/y0;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/z0;

.field private final b:Landroid/os/Bundle;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/z0;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/p0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/p0;->b:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/z0;Landroid/os/Bundle;[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/p0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/p0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/p0;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p0;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/z0;->k(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p0;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/z0;->j(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
