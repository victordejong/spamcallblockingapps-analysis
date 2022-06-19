.class public final Lcom/google/android/gms/internal/ads/qh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qi1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/a70<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qi1<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/ln1<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/a70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zz1;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qh1;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ri1;",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/wi1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wi1;-><init>(Z)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/z60;->o(Lcom/google/android/gms/internal/ads/wi1;)Lcom/google/android/gms/internal/ads/z60;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/a70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qh1;->a:Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/a70;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/ln1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ln1;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ri1;->a:Lcom/google/android/gms/internal/ads/zzawc;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/y40;->a(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/y40;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bz1;->E(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/bz1;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/oh1;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/oh1;-><init>(Lcom/google/android/gms/internal/ads/qh1;Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/y40;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qh1;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ph1;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/ph1;-><init>(Lcom/google/android/gms/internal/ads/ln1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh1;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/kz1;->i(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/a70;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh1;->a:Lcom/google/android/gms/internal/ads/a70;

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh1;->a:Lcom/google/android/gms/internal/ads/a70;

    return-object v0
.end method
