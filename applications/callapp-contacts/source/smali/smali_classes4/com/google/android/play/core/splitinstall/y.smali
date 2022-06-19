.class public final Lcom/google/android/play/core/splitinstall/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Lcom/google/android/play/core/splitinstall/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Ljava/io/File;",
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
            "Lcom/google/android/play/core/splitinstall/ak;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/a/a;",
            ">;",
            "Lcom/google/android/play/core/internal/be<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/y;->a:Lcom/google/android/play/core/internal/be;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/y;->b:Lcom/google/android/play/core/internal/be;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/y;->c:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/y;->a:Lcom/google/android/play/core/internal/be;

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/y;->b:Lcom/google/android/play/core/internal/be;

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/y;->c:Lcom/google/android/play/core/internal/be;

    invoke-static {v2}, Lcom/google/android/play/core/internal/bc;->b(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/ba;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/x;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/splitinstall/x;-><init>(Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/internal/ba;)V

    return-object v3
.end method
