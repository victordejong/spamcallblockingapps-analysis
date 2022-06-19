.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcle:Landroid/content/Context;

.field private final zzdlo:Ljava/lang/String;

.field private final zzeds:Lcom/google/android/gms/ads/internal/util/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzeds:Lcom/google/android/gms/ads/internal/util/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzcle:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzeds:Lcom/google/android/gms/ads/internal/util/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzcle:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzh;->zzdlo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzi;->zzo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
