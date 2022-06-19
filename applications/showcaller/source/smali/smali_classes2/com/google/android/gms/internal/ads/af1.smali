.class public final Lcom/google/android/gms/internal/ads/af1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/g00;

.field b:Lcom/google/android/gms/internal/ads/d00;

.field c:Lcom/google/android/gms/internal/ads/t00;

.field d:Lcom/google/android/gms/internal/ads/q00;

.field e:Lcom/google/android/gms/internal/ads/q40;

.field final f:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/m00;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/af1;->f:Lb/e/g;

    new-instance v0, Lb/e/g;

    .line 2
    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/af1;->g:Lb/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/g00;)Lcom/google/android/gms/internal/ads/af1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af1;->a:Lcom/google/android/gms/internal/ads/g00;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d00;)Lcom/google/android/gms/internal/ads/af1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af1;->b:Lcom/google/android/gms/internal/ads/d00;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/t00;)Lcom/google/android/gms/internal/ads/af1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af1;->c:Lcom/google/android/gms/internal/ads/t00;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/q00;)Lcom/google/android/gms/internal/ads/af1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af1;->d:Lcom/google/android/gms/internal/ads/q00;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/q40;)Lcom/google/android/gms/internal/ads/af1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/af1;->e:Lcom/google/android/gms/internal/ads/q40;

    return-object p0
.end method

.method public final f(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m00;Lcom/google/android/gms/internal/ads/j00;)Lcom/google/android/gms/internal/ads/af1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/af1;->f:Lb/e/g;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/af1;->g:Lb/e/g;

    .line 2
    invoke-virtual {p2, p1, p3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/cf1;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cf1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cf1;-><init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/bf1;)V

    return-object v0
.end method
