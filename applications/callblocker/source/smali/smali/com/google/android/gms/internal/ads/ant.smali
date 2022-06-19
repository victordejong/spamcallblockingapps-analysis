.class public final Lcom/google/android/gms/internal/ads/ant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/dxs;


# instance fields
.field private final a:Lcom/google/android/gms/common/util/e;

.field private final b:Lcom/google/android/gms/internal/ads/uf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/uf;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ant;->a:Lcom/google/android/gms/common/util/e;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/uf;->a(Z)V

    .line 8
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 4

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ant;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/uf;->a(J)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/uf;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 12
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->a()V

    .line 10
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->c()V

    .line 17
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->b()V

    .line 6
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ant;->b:Lcom/google/android/gms/internal/ads/uf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
