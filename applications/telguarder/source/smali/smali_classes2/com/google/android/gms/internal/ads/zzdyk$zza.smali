.class final Lcom/google/android/gms/internal/ads/zzdyk$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# static fields
.field static final zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

.field static final zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;


# instance fields
.field final cause:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final wasInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdyk;->zzazv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    .line 7
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    return-void
.end method
