.class public final Lcom/google/android/gms/internal/ads/eeh;
.super Ljava/lang/Object;
.source "SourceFile"


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
            "Ljava/util/List<",
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
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eeh;->l:J

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/eeh;->m:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/eeh;->a:Z

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/eeh;->b:I

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/eeh;->c:Landroid/graphics/Rect;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/eeh;->d:Landroid/graphics/Rect;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/eeh;->e:Landroid/graphics/Rect;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/eeh;->f:Z

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/eeh;->g:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/eeh;->h:Z

    .line 12
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/eeh;->i:Landroid/graphics/Rect;

    .line 13
    iput p13, p0, Lcom/google/android/gms/internal/ads/eeh;->n:F

    .line 14
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    .line 15
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/eeh;->k:Ljava/util/List;

    return-void
.end method
