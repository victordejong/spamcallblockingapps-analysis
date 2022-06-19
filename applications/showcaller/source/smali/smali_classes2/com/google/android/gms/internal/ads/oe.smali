.class final Lcom/google/android/gms/internal/ads/oe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/me;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/ki;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/je;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/je;->P0:Lcom/google/android/gms/internal/ads/ki;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oe;->c:Lcom/google/android/gms/internal/ads/ki;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ki;->i(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ki;->u()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/oe;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ki;->u()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/oe;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oe;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oe;->c:Lcom/google/android/gms/internal/ads/ki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ki;->u()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/oe;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/oe;->b:I

    return v0
.end method
