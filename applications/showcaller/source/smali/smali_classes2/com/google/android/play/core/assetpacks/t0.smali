.class final synthetic Lcom/google/android/play/core/assetpacks/t0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/play/core/assetpacks/z0;

.field private final e:Lcom/google/android/play/core/assetpacks/w0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/z0;Lcom/google/android/play/core/assetpacks/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/t0;->d:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/t0;->e:Lcom/google/android/play/core/assetpacks/w0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t0;->d:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t0;->e:Lcom/google/android/play/core/assetpacks/w0;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/w0;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/z0;->g(I)V

    return-void
.end method
