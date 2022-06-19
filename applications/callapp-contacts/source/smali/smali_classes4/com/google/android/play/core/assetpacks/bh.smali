.class final synthetic Lcom/google/android/play/core/assetpacks/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bi;

.field private final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bi;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bh;->a:Lcom/google/android/play/core/assetpacks/bi;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bh;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bh;->a:Lcom/google/android/play/core/assetpacks/bi;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/bh;->b:Landroid/content/Intent;

    .line 1000
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/bi;->b:Lcom/google/android/play/core/assetpacks/t;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bi;->c:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
