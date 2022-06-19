.class public final Lcom/google/android/play/core/assetpacks/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/assetpacks/cs;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/bi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/p;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/assetpacks/bi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cn;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cn;->b:Lcom/google/android/play/core/internal/be;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cn;->c:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cn;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/assetpacks/co;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/co;->a:Lcom/google/android/play/core/assetpacks/ck;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/co;->a(Lcom/google/android/play/core/assetpacks/ck;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cn;->b:Lcom/google/android/play/core/internal/be;

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cn;->c:Lcom/google/android/play/core/internal/be;

    invoke-static {v2}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/ck;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/android/play/core/assetpacks/cs;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object v0
.end method
