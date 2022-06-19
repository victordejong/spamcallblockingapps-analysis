.class public final Lcom/google/android/play/core/splitinstall/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/splitinstall/a/a;",
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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ae;",
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
            "Ljava/io/File;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ae;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/k;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/k;->b:Lcom/google/android/play/core/internal/be;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/a/k;->c:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/k;->a:Lcom/google/android/play/core/internal/be;

    check-cast v0, Lcom/google/android/play/core/splitinstall/an;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/an;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/k;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/a/k;->c:Lcom/google/android/play/core/internal/be;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/ae;

    new-instance v3, Lcom/google/android/play/core/splitinstall/a/a;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/splitinstall/a/a;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/ae;)V

    return-object v3
.end method
