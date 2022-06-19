.class public final Lcom/google/android/gms/ads/internal/util/q0;
.super Lcom/google/android/gms/internal/ads/dz3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dz3<",
        "Lcom/google/android/gms/internal/ads/zy3;",
        ">;"
    }
.end annotation


# instance fields
.field private final p:Lcom/google/android/gms/internal/ads/vi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vi0<",
            "Lcom/google/android/gms/internal/ads/zy3;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/internal/ads/di0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/vi0<",
            "Lcom/google/android/gms/internal/ads/zy3;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/p0;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/p0;-><init>(Lcom/google/android/gms/internal/ads/vi0;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/dz3;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/hz3;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/q0;->p:Lcom/google/android/gms/internal/ads/vi0;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/di0;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/di0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/q0;->q:Lcom/google/android/gms/internal/ads/di0;

    const-string v0, "GET"

    .line 4
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/internal/ads/di0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final u(Lcom/google/android/gms/internal/ads/zy3;)Lcom/google/android/gms/internal/ads/jz3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zy3;",
            ")",
            "Lcom/google/android/gms/internal/ads/jz3<",
            "Lcom/google/android/gms/internal/ads/zy3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xz3;->a(Lcom/google/android/gms/internal/ads/zy3;)Lcom/google/android/gms/internal/ads/oy3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jz3;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/oy3;)Lcom/google/android/gms/internal/ads/jz3;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic v(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zy3;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/q0;->q:Lcom/google/android/gms/internal/ads/di0;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zy3;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zy3;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/di0;->d(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/q0;->q:Lcom/google/android/gms/internal/ads/di0;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zy3;->b:[B

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/di0;->j()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/di0;->f([B)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/q0;->p:Lcom/google/android/gms/internal/ads/vi0;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    return-void
.end method
