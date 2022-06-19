.class final Lcom/google/android/gms/internal/ads/ebj;
.super Lcom/google/android/gms/internal/ads/dyw;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ebk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ebk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/internal/ads/ebk;)Lcom/google/android/gms/ads/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ebk;->m()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/p;->a(Lcom/google/android/gms/internal/ads/eba;)V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dyw;->a()V

    .line 4
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ebk;->a(Lcom/google/android/gms/internal/ads/ebk;)Lcom/google/android/gms/ads/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ebk;->m()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/p;->a(Lcom/google/android/gms/internal/ads/eba;)V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dyw;->a(I)V

    .line 7
    return-void
.end method
