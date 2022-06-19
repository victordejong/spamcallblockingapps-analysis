.class final Lcom/google/android/gms/internal/ads/zzaqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdpc:Lcom/google/android/gms/internal/ads/zzaqf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqe;->zzdpc:Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqe;->zzdpc:Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqf;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqe;->zzdpc:Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Lcom/google/android/gms/internal/ads/zzaqf;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
