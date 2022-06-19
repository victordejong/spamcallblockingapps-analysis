.class public final Lcom/google/android/gms/internal/ads/kd;
.super Lcom/google/android/gms/internal/ads/afe;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/a/a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afe;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->c(Landroid/os/Bundle;)V

    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    .line 28
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 29
    :goto_0
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    .line 10
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->b(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/a/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
