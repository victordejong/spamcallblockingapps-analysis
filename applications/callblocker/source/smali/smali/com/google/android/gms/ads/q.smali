.class public final Lcom/google/android/gms/ads/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/ecn;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/q;->a:Z

    .line 3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/ecn;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/q;->b:Z

    .line 4
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/ecn;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/q;->c:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/q;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/q;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/ads/q;->c:Z

    return v0
.end method
