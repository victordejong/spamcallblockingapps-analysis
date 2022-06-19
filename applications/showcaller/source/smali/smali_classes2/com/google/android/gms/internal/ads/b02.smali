.class public final Lcom/google/android/gms/internal/ads/b02;
.super Lcom/google/android/gms/internal/ads/wz1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/wz1<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sp0;

.field private final b:Lcom/google/android/gms/internal/ads/h21;

.field private final c:Lcom/google/android/gms/internal/ads/p81;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Lcom/google/android/gms/internal/ads/h21;Lcom/google/android/gms/internal/ads/p81;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wz1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b02;->a:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b02;->b:Lcom/google/android/gms/internal/ads/h21;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b02;->c:Lcom/google/android/gms/internal/ads/p81;

    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/internal/ads/xj2;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/xj2;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b02;->a:Lcom/google/android/gms/internal/ads/sp0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp0;->v()Lcom/google/android/gms/internal/ads/jk1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b02;->b:Lcom/google/android/gms/internal/ads/h21;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/h21;->g(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jk1;->o(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/jk1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/b02;->c:Lcom/google/android/gms/internal/ads/p81;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jk1;->l(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/jk1;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jk1;->zza()Lcom/google/android/gms/internal/ads/kk1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kk1;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b01;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/b01;->d(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
