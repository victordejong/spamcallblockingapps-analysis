.class public final Lcom/google/android/gms/internal/ads/czs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/daf;

.field private final b:Lcom/google/android/gms/internal/ads/daf;


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/daf;->a([B)Lcom/google/android/gms/internal/ads/daf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->a:Lcom/google/android/gms/internal/ads/daf;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/daf;->a([B)Lcom/google/android/gms/internal/ads/daf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->b:Lcom/google/android/gms/internal/ads/daf;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->a:Lcom/google/android/gms/internal/ads/daf;

    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->a:Lcom/google/android/gms/internal/ads/daf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/daf;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->b:Lcom/google/android/gms/internal/ads/daf;

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czs;->b:Lcom/google/android/gms/internal/ads/daf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/daf;->a()[B

    move-result-object v0

    goto :goto_0
.end method
