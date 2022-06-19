.class public final Lcom/google/android/gms/ads/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ebm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    .line 3
    const-string/jumbo v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/b;)V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/ads/b;)V

    .line 12
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    check-cast p1, Lcom/google/android/gms/internal/ads/dxs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/internal/ads/dxs;)V

    .line 16
    :cond_0
    :goto_0
    return-void

    .line 14
    :cond_1
    if-nez p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/internal/ads/dxs;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/d;)V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/internal/ads/ebi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/internal/ads/ebi;)V

    .line 10
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/a;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/ads/reward/a;)V

    .line 25
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/d;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->a(Lcom/google/android/gms/ads/reward/d;)V

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->a(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebm;->a(Z)V

    .line 28
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebm;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebm;->c()V

    .line 21
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebm;->b(Z)V

    .line 30
    return-void
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->a:Lcom/google/android/gms/internal/ads/ebm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebm;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
