.class public final Lcom/google/android/material/progressindicator/e;
.super Lcom/google/android/material/progressindicator/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Lcom/google/android/material/progressindicator/f;"
    }
.end annotation


# static fields
.field private static final j:Landroidx/e/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/e/a/c<",
            "Lcom/google/android/material/progressindicator/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/google/android/material/progressindicator/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/e/a/f;

.field private final g:Landroidx/e/a/e;

.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 221
    new-instance v0, Lcom/google/android/material/progressindicator/e$1;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/e$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/e;->j:Landroidx/e/a/c;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/b;",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/e;->i:Z

    .line 1215
    iput-object p3, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    .line 1216
    invoke-virtual {p3, p0}, Lcom/google/android/material/progressindicator/g;->a(Lcom/google/android/material/progressindicator/f;)V

    .line 55
    new-instance p2, Landroidx/e/a/f;

    invoke-direct {p2}, Landroidx/e/a/f;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/progressindicator/e;->f:Landroidx/e/a/f;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2174
    iput-wide v0, p2, Landroidx/e/a/f;->b:D

    .line 2176
    iput-boolean p1, p2, Landroidx/e/a/f;->c:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 58
    invoke-virtual {p2, p1}, Landroidx/e/a/f;->a(F)Landroidx/e/a/f;

    .line 60
    new-instance p1, Landroidx/e/a/e;

    sget-object p3, Lcom/google/android/material/progressindicator/e;->j:Landroidx/e/a/c;

    invoke-direct {p1, p0, p3}, Landroidx/e/a/e;-><init>(Ljava/lang/Object;Landroidx/e/a/c;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/e;->g:Landroidx/e/a/e;

    .line 3128
    iput-object p2, p1, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/e;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/e;)F
    .locals 0

    .line 5201
    iget p0, p0, Lcom/google/android/material/progressindicator/e;->h:F

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/e<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/android/material/progressindicator/e;

    new-instance v1, Lcom/google/android/material/progressindicator/c;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/e<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/android/material/progressindicator/e;

    new-instance v1, Lcom/google/android/material/progressindicator/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/e;F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/e;->b(F)V

    return-void
.end method

.method private b(F)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/google/android/material/progressindicator/e;->h:F

    .line 206
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->a()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroidx/l/a/a/b$a;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->a(Landroidx/l/a/a/b$a;)Z

    move-result p1

    return p1
.end method

.method final a(ZZZ)Z
    .locals 1

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->a(ZZZ)Z

    move-result p1

    .line 115
    iget-object p2, p0, Lcom/google/android/material/progressindicator/e;->b:Landroid/content/Context;

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    .line 118
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/e;->i:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 120
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/e;->i:Z

    .line 121
    iget-object p3, p0, Lcom/google/android/material/progressindicator/e;->f:Landroidx/e/a/f;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Landroidx/e/a/f;->a(F)Landroidx/e/a/f;

    :goto_0
    return p1
.end method

.method public final bridge synthetic b(Landroidx/l/a/a/b$a;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->b(Landroidx/l/a/a/b$a;)V

    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(ZZZ)Z
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->c()Z

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->d()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->b(Landroid/graphics/Canvas;F)V

    .line 190
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->c:Lcom/google/android/material/progressindicator/b;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/b;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 193
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/b/a;->a(II)I

    move-result v7

    .line 194
    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->e:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 4201
    iget v6, p0, Lcom/google/android/material/progressindicator/e;->h:F

    move-object v3, p1

    .line 194
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic getAlpha()I
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->b()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->a()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isRunning()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->g:Landroidx/e/a/e;

    invoke-virtual {v0}, Landroidx/e/a/e;->b()V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/e;->b(F)V

    return-void
.end method

.method protected final onLevelChange(I)Z
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/e;->i:Z

    const/4 v1, 0x1

    const v2, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->g:Landroidx/e/a/e;

    invoke-virtual {v0}, Landroidx/e/a/e;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/e;->b(F)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->g:Landroidx/e/a/e;

    .line 3201
    iget v3, p0, Lcom/google/android/material/progressindicator/e;->h:F

    mul-float v3, v3, v2

    .line 3379
    iput v3, v0, Landroidx/e/a/b;->p:F

    .line 3380
    iput-boolean v1, v0, Landroidx/e/a/b;->q:Z

    .line 149
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->g:Landroidx/e/a/e;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/e/a/e;->a(F)V

    :goto_0
    return v1
.end method

.method public final bridge synthetic setAlpha(I)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setAlpha(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic start()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->start()V

    return-void
.end method

.method public final bridge synthetic stop()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->stop()V

    return-void
.end method
