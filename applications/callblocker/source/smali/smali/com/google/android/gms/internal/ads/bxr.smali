.class final synthetic Lcom/google/android/gms/internal/ads/bxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxr;->a:Lcom/google/android/gms/internal/ads/bxo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxr;->a:Lcom/google/android/gms/internal/ads/bxo;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->a()Lcom/google/android/gms/internal/ads/dui;

    move-result-object v0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    if-eqz v0, :cond_6

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->d()Z

    move-result v1

    if-nez v1, :cond_6

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dui;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dui;->c()V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dui;->b()Lcom/google/android/gms/internal/ads/duc;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->b()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->c()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->d()Ljava/lang/String;

    move-result-object v0

    .line 17
    if-eqz v3, :cond_2

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;)V

    .line 19
    :cond_2
    if-eqz v0, :cond_3

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v4

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/uw;->b(Ljava/lang/String;)V

    .line 25
    :cond_3
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/uw;->d()Z

    move-result v5

    if-nez v5, :cond_4

    .line 27
    if-eqz v0, :cond_8

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 29
    const-string/jumbo v5, "v_fp_vertical"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 33
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 35
    const-string/jumbo v0, "v_fp"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_5
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v2, v4

    .line 40
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/bxp;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/bxp;-><init>(Landroid/os/Bundle;)V

    .line 41
    return-object v0

    .line 23
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->c()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    .line 30
    :cond_8
    const-string/jumbo v0, "v_fp_vertical"

    const-string/jumbo v5, "no_hash"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
