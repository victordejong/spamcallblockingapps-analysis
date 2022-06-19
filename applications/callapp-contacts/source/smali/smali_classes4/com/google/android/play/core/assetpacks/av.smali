.class final synthetic Lcom/google/android/play/core/assetpacks/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;

.field private final b:Lcom/google/android/play/core/assetpacks/ay;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/av;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/av;->b:Lcom/google/android/play/core/assetpacks/ay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/av;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/av;->b:Lcom/google/android/play/core/assetpacks/ay;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/ay;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/bb;->a(I)V

    return-void
.end method
