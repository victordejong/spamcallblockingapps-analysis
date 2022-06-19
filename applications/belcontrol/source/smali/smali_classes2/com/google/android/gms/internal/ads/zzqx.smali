.class public final Lcom/google/android/gms/internal/ads/zzqx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final timestamp:J

.field public final zzaal:I

.field public final zzbrj:Z

.field private final zzbru:Z

.field public final zzbrv:Z

.field public final zzbrw:Landroid/graphics/Rect;

.field public final zzbrx:Landroid/graphics/Rect;

.field public final zzbry:Landroid/graphics/Rect;

.field public final zzbrz:Z

.field public final zzbsa:Landroid/graphics/Rect;

.field public final zzbsb:Z

.field public final zzbsc:Landroid/graphics/Rect;

.field private final zzbsd:F

.field public final zzbse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZI",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "FZ",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->timestamp:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbru:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrv:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzaal:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrw:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrx:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbry:Landroid/graphics/Rect;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrz:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsa:Landroid/graphics/Rect;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsb:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsc:Landroid/graphics/Rect;

    iput p13, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsd:F

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbse:Ljava/util/List;

    return-void
.end method
