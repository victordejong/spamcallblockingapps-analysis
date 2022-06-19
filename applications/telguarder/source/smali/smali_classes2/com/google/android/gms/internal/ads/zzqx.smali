.class public final Lcom/google/android/gms/internal/ads/zzqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->timestamp:J

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbru:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrv:Z

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzaal:I

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrw:Landroid/graphics/Rect;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrx:Landroid/graphics/Rect;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbry:Landroid/graphics/Rect;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrz:Z

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsa:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsb:Z

    .line 12
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsc:Landroid/graphics/Rect;

    .line 13
    iput p13, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbsd:F

    .line 14
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    .line 15
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzqx;->zzbse:Ljava/util/List;

    return-void
.end method
