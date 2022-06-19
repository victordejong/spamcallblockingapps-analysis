.class public Lcom/androidplot/util/DisplayDimensions;
.super Ljava/lang/Object;
.source "DisplayDimensions.java"


# static fields
.field private static final ONE:I = 0x1

.field private static final initRect:Landroid/graphics/RectF;


# instance fields
.field public final canvasRect:Landroid/graphics/RectF;

.field public final marginatedRect:Landroid/graphics/RectF;

.field public final paddedRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/androidplot/util/DisplayDimensions;->initRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/androidplot/util/DisplayDimensions;->initRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v0, v0}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    .line 44
    iput-object p2, p0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    .line 45
    iput-object p3, p0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    return-void
.end method
