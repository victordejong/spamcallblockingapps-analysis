.class public final Lcom/google/android/material/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[I

.field public static final h:[F

.field public static final i:[I

.field public static final j:[F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:I

.field public final k:Landroid/graphics/Path;

.field public l:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 59
    sput-object v1, Lcom/google/android/material/j/a;->g:[I

    new-array v0, v0, [F

    .line 61
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/j/a;->h:[F

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 63
    sput-object v1, Lcom/google/android/material/j/a;->i:[I

    new-array v0, v0, [F

    .line 65
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/j/a;->j:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x1000000

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/material/j/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/j/a;->k:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/j/a;->l:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/j/a;->a:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/material/j/a;->a(I)V

    .line 78
    iget-object p1, p0, Lcom/google/android/material/j/a;->l:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/j/a;->b:Landroid/graphics/Paint;

    .line 80
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/j/a;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/16 v0, 0x44

    .line 86
    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/j/a;->d:I

    const/16 v0, 0x14

    .line 87
    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/j/a;->e:I

    const/4 v0, 0x0

    .line 88
    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/j/a;->f:I

    .line 89
    iget-object p1, p0, Lcom/google/android/material/j/a;->a:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/j/a;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
