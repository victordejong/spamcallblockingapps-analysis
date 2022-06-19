.class public final Lcom/google/android/gms/internal/ads/zzbef;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic zzerl:Lcom/google/android/gms/internal/ads/zzawz;

.field private final synthetic zzerm:I

.field private final synthetic zzern:Lcom/google/android/gms/internal/ads/zzbee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbee;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzern:Lcom/google/android/gms/internal/ads/zzbee;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbef;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzerl:Lcom/google/android/gms/internal/ads/zzawz;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzerm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzern:Lcom/google/android/gms/internal/ads/zzbee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbef;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzerl:Lcom/google/android/gms/internal/ads/zzawz;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzerm:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/internal/ads/zzbee;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V

    return-void
.end method
