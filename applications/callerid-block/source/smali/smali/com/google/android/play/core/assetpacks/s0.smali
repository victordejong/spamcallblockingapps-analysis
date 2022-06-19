.class final synthetic Lcom/google/android/play/core/assetpacks/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/assetpacks/y0;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/z0;

.field private final b:Ljava/util/List;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/z0;Ljava/util/List;[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/s0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/s0;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s0;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/z0;->i(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s0;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/z0;->h(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
