.class public final Lcom/google/android/play/core/splitinstall/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/splitinstall/ak;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/n;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ah;",
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

.field private final d:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/n;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ah;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ae;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/al;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/al;->b:Lcom/google/android/play/core/internal/be;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/al;->c:Lcom/google/android/play/core/internal/be;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/al;->d:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/al;->a:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/al;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/ah;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/al;->c:Lcom/google/android/play/core/internal/be;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/ae;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/al;->d:Lcom/google/android/play/core/internal/be;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/ak;

    check-cast v0, Lcom/google/android/play/core/splitinstall/n;

    check-cast v3, Lcom/google/android/play/core/splitinstall/o;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/ak;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/ae;Lcom/google/android/play/core/splitinstall/o;)V

    return-object v4
.end method
