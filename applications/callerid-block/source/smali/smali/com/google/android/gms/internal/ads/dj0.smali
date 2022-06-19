.class public final Lcom/google/android/gms/internal/ads/dj0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/google/android/gms/internal/ads/d7;

.field b:Lcom/google/android/gms/internal/ads/a7;

.field c:Lcom/google/android/gms/internal/ads/q7;

.field d:Lcom/google/android/gms/internal/ads/n7;

.field e:Lcom/google/android/gms/internal/ads/jb;

.field final f:Ld/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j7;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ld/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/g7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/e/g;

    invoke-direct {v0}, Ld/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->f:Ld/e/g;

    new-instance v0, Ld/e/g;

    invoke-direct {v0}, Ld/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->g:Ld/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/d7;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->a:Lcom/google/android/gms/internal/ads/d7;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/a7;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->b:Lcom/google/android/gms/internal/ads/a7;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/q7;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->c:Lcom/google/android/gms/internal/ads/q7;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/n7;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->d:Lcom/google/android/gms/internal/ads/n7;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/jb;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj0;->e:Lcom/google/android/gms/internal/ads/jb;

    return-object p0
.end method

.method public final f(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j7;Lcom/google/android/gms/internal/ads/g7;)Lcom/google/android/gms/internal/ads/dj0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj0;->f:Ld/e/g;

    invoke-virtual {v0, p1, p2}, Ld/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dj0;->g:Ld/e/g;

    invoke-virtual {p2, p1, p3}, Ld/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/ej0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/ej0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ej0;-><init>(Lcom/google/android/gms/internal/ads/dj0;Lcom/google/android/gms/internal/ads/cj0;)V

    return-object v0
.end method
