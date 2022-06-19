.class final synthetic Lcom/google/android/play/core/assetpacks/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/f2;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/f2;[B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/c2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/c2;->b:Lcom/google/android/play/core/assetpacks/f2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/assetpacks/c2;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c2;->b:Lcom/google/android/play/core/assetpacks/f2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/f2;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c2;->b:Lcom/google/android/play/core/assetpacks/f2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/f2;->b()V

    return-void
.end method
