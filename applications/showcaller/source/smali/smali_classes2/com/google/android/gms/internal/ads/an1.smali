.class public final Lcom/google/android/gms/internal/ads/an1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zn2;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/pm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pm;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pm;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzfem;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/an1;->e:Lcom/google/android/gms/internal/ads/pm;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->e:Lcom/google/android/gms/internal/ads/pm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zm1;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zm1;->b:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/pm;->c(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->e:Lcom/google/android/gms/internal/ads/pm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zm1;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zm1;->a:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/pm;->c(I)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/an1;->e:Lcom/google/android/gms/internal/ads/pm;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/an1;->d:Ljava/util/Map;

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zm1;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zm1;->c:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/pm;->c(I)V

    :cond_0
    return-void
.end method
