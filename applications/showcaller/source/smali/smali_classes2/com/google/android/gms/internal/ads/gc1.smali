.class public final Lcom/google/android/gms/internal/ads/gc1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/f51;

.field private final e:Lcom/google/android/gms/internal/ads/ha1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/f51;Lcom/google/android/gms/internal/ads/ha1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gc1;->e:Lcom/google/android/gms/internal/ads/ha1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f51;->a()V

    return-void
.end method

.method public final a3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f51;->a3()V

    return-void
.end method

.method public final a6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f51;->a6(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gc1;->e:Lcom/google/android/gms/internal/ads/ha1;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ha1;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f51;->e()V

    return-void
.end method

.method public final m2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f51;->m2()V

    return-void
.end method

.method public final y4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->d:Lcom/google/android/gms/internal/ads/f51;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f51;->y4()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc1;->e:Lcom/google/android/gms/internal/ads/ha1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ha1;->zza()V

    return-void
.end method
