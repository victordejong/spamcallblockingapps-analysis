.class public final Lcom/google/android/gms/internal/ads/so3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w7;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/w7;

.field private c:J

.field private d:Landroid/net/Uri;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/w7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so3;->d:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so3;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final c([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/z5;->c([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/so3;->c:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/so3;->c:J

    :cond_0
    return p1
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/fb;)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->d:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w7;->e(Lcom/google/android/gms/internal/ads/fb;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/so3;->zzi()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so3;->d:Landroid/net/Uri;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/so3;->d()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so3;->e:Ljava/util/Map;

    return-wide v0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w7;->f(Lcom/google/android/gms/internal/ads/ol;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->g()V

    return-void
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/so3;->c:J

    return-wide v0
.end method

.method public final q()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so3;->b:Lcom/google/android/gms/internal/ads/w7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->zzi()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
