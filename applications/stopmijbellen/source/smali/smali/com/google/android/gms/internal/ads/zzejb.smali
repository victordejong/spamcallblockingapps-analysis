.class public final synthetic Lcom/google/android/gms/internal/ads/zzejb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeje;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfdn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeje;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfdn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Lcom/google/android/gms/internal/ads/zzeje;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzc:Lcom/google/android/gms/internal/ads/zzfdn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejb;->zza:Lcom/google/android/gms/internal/ads/zzeje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejb;->zzc:Lcom/google/android/gms/internal/ads/zzfdn;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeje;->zzc(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfdn;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object p1

    return-object p1
.end method
