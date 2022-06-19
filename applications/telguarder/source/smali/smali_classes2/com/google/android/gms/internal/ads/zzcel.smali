.class final Lcom/google/android/gms/internal/ads/zzcel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvz<",
        "Lcom/google/android/gms/internal/ads/zzz;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzghh:D

.field private final synthetic zzghi:Z

.field private final synthetic zzghj:Lcom/google/android/gms/internal/ads/zzcem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcem;DZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghj:Lcom/google/android/gms/internal/ads/zzcem;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghh:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghj:Lcom/google/android/gms/internal/ads/zzcem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->data:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghh:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzghi:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcem;->zza(Lcom/google/android/gms/internal/ads/zzcem;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
