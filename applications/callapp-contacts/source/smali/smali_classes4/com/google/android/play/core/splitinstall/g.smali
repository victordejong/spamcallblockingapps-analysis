.class public final Lcom/google/android/play/core/splitinstall/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/splitinstall/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/am;

.field private final b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/am;Lcom/google/android/play/core/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/am;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/x;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/g;->a:Lcom/google/android/play/core/splitinstall/am;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/g;->b:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/g;->b:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/x;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object v0
.end method
