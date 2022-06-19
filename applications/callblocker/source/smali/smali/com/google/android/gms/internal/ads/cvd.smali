.class final Lcom/google/android/gms/internal/ads/cvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cst;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ctf",
            "<",
            "Lcom/google/android/gms/internal/ads/cst;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ctf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ctf",
            "<",
            "Lcom/google/android/gms/internal/ads/cst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvd;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 3
    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    .prologue
    .line 4
    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cvd;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cte;->d()[B

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvd;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cst;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cst;->a([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v0

    return-object v0
.end method
