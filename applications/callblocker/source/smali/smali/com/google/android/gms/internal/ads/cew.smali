.class public final Lcom/google/android/gms/internal/ads/cew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/ceu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ceu;)V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cew;-><init>(Lcom/google/android/gms/internal/ads/ceu;Lcom/google/android/gms/internal/ads/pw;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ceu;Lcom/google/android/gms/internal/ads/pw;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/pw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cew;->a:Lcom/google/android/gms/internal/ads/pw;

    .line 4
    return-void
.end method
