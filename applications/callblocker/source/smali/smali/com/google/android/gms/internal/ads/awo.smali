.class public final Lcom/google/android/gms/internal/ads/awo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aro;

.field private final b:Lcom/google/android/gms/internal/ads/aum;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aro;Lcom/google/android/gms/internal/ads/aum;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awo;->a:Lcom/google/android/gms/internal/ads/aro;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awo;->b:Lcom/google/android/gms/internal/ads/aum;

    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->a:Lcom/google/android/gms/internal/ads/aro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aro;->c()V

    .line 11
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->a:Lcom/google/android/gms/internal/ads/aro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aro;->d()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->b:Lcom/google/android/gms/internal/ads/aum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aum;->a()V

    .line 14
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->a:Lcom/google/android/gms/internal/ads/aro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aro;->f_()V

    .line 9
    return-void
.end method

.method public final h_()V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->a:Lcom/google/android/gms/internal/ads/aro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aro;->h_()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awo;->b:Lcom/google/android/gms/internal/ads/aum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aum;->b()V

    .line 7
    return-void
.end method
