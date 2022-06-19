.class public final Lcom/google/android/gms/internal/ads/dtt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Z

.field public final g:Landroid/graphics/Rect;

.field public final h:Z

.field public final i:Landroid/graphics/Rect;

.field public final j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final l:J

.field private final m:Z

.field private final n:F


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V
    .locals 3
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
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dtt;->l:J

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dtt;->m:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/dtt;->a:Z

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/dtt;->b:I

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dtt;->c:Landroid/graphics/Rect;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/graphics/Rect;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Z

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/dtt;->g:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/dtt;->h:Z

    .line 12
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/dtt;->i:Landroid/graphics/Rect;

    .line 13
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/ads/dtt;->n:F

    .line 14
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    .line 15
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->k:Ljava/util/List;

    .line 16
    return-void
.end method
