.class public final Lcom/google/android/gms/internal/ads/ti1;
.super Lcom/google/android/gms/internal/ads/sz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/me1;

.field private final f:Lcom/google/android/gms/internal/ads/re1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/me1;Lcom/google/android/gms/internal/ads/re1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ti1;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    return-void
.end method


# virtual methods
.method public final L(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/me1;->C(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/gz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->n()Lcom/google/android/gms/internal/ads/gz;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0
.end method

.method public final j0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/me1;->E(Landroid/os/Bundle;)V

    return-void
.end method

.method public final k()Lcom/google/android/gms/internal/ads/yy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->f0()Lcom/google/android/gms/internal/ads/yy;

    move-result-object v0

    return-object v0
.end method

.method public final m0(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->e:Lcom/google/android/gms/internal/ads/me1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/me1;->D(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->j()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti1;->f:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
