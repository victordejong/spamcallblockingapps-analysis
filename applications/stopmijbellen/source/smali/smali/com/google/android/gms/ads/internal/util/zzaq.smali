.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzaw;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic zzc:I

.field public final synthetic zzd:I

.field public final synthetic zze:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzaw;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zza:Lcom/google/android/gms/ads/internal/util/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzc:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzd:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zze:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zza:Lcom/google/android/gms/ads/internal/util/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzc:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzd:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zze:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/util/zzaw;->zzh(Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method
