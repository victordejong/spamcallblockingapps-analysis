.class final synthetic Lcom/google/android/gms/ads/internal/util/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzefd:Lcom/google/android/gms/ads/internal/util/zzad;

.field private final zzefe:I

.field private final zzeff:I

.field private final zzefg:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefd:Lcom/google/android/gms/ads/internal/util/zzad;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefe:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzeff:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefg:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefd:Lcom/google/android/gms/ads/internal/util/zzad;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefe:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzeff:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzaf;->zzefg:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzad;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
