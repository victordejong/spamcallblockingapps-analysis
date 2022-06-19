.class final Lcom/google/android/gms/internal/ads/uh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/a70<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xn1<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qi1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ln1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    check-cast v0, Lcom/google/android/gms/internal/ads/qh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qh1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a70;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ln1;->a:Lcom/google/android/gms/internal/ads/y40;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/yn1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yn1;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    check-cast p1, Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/vh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/pi1;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
