.class public final Lcom/google/android/gms/internal/ads/btk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azg;

.field private final b:Lcom/google/android/gms/internal/ads/bte;

.field private final c:Lcom/google/android/gms/internal/ads/apv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/azg;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/bte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bte;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btk;->a:Lcom/google/android/gms/internal/ads/azg;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btk;->a:Lcom/google/android/gms/internal/ads/azg;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azg;->e()Lcom/google/android/gms/internal/ads/gv;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/btj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/btj;-><init>(Lcom/google/android/gms/internal/ads/bte;Lcom/google/android/gms/internal/ads/gv;)V

    .line 8
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/btk;->c:Lcom/google/android/gms/internal/ads/apv;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/axk;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/axk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btk;->a:Lcom/google/android/gms/internal/ads/azg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bte;->i()Lcom/google/android/gms/internal/ads/dza;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/axk;-><init>(Lcom/google/android/gms/internal/ads/azg;Lcom/google/android/gms/internal/ads/dza;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dza;)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bte;->a(Lcom/google/android/gms/internal/ads/dza;)V

    .line 11
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/app;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/arg;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/apv;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->c:Lcom/google/android/gms/internal/ads/apv;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/aqi;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/dxs;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/bte;

    return-object v0
.end method
