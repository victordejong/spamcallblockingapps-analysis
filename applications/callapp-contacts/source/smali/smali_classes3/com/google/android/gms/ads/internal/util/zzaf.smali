.class final synthetic Lcom/google/android/gms/ads/internal/util/zzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzehg:Lcom/google/android/gms/ads/internal/util/zzad;

.field private final zzehh:I

.field private final zzehi:I

.field private final zzehj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehg:Lcom/google/android/gms/ads/internal/util/zzad;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehh:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehi:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehj:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehg:Lcom/google/android/gms/ads/internal/util/zzad;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehh:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehi:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzehj:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzad;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
