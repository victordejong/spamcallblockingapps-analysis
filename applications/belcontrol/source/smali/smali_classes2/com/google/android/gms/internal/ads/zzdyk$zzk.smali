.class public final Lcom/google/android/gms/internal/ads/zzdyk$zzk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzk"
.end annotation


# static fields
.field public static final zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;


# instance fields
.field public volatile next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public volatile thread:Ljava/lang/Thread;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdyk;->zzazu()Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdyk;->zzazu()Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    return-void
.end method
