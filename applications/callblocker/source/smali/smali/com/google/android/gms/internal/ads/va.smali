.class public final Lcom/google/android/gms/internal/ads/va;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uw;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/uw;

.field private b:Lcom/google/android/gms/internal/ads/uw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/uw;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dui;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->a()Lcom/google/android/gms/internal/ads/dui;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(I)V

    .line 21
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/uw;->a(J)V

    .line 27
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(Z)V

    .line 6
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->b(I)V

    .line 30
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/uw;->b(J)V

    .line 33
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->b(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->b(Z)V

    .line 12
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->c(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->c(Z)V

    .line 18
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uw;->d(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->f()Z

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->g()I

    move-result v0

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/uh;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->h()Lcom/google/android/gms/internal/ads/uh;

    move-result-object v0

    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->j()I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->l()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->m()V

    .line 39
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->a:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
