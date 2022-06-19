.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# instance fields
.field private final zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

.field private final zzggr:Landroid/view/WindowManager;

.field private final zzggs:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdp;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggr:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggs:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggr:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzggs:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdp;->zza(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    return-void
.end method
