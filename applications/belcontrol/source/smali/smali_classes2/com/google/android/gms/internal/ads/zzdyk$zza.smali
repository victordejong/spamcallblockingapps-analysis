.class public final Lcom/google/android/gms/internal/ads/zzdyk$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

.field public static final zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;


# instance fields
.field public final cause:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public final wasInterrupted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdyk;->zzazv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    return-void
.end method
