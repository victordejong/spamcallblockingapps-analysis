.class public Lcom/jjoe64/graphview/GraphView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/GraphView$b;,
        Lcom/jjoe64/graphview/GraphView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/jjoe64/graphview/c;

.field public c:Lcom/jjoe64/graphview/j;

.field protected d:Lcom/jjoe64/graphview/h;

.field public e:Z

.field f:Lcom/jjoe64/graphview/a;

.field private g:Ljava/lang/String;

.field private h:Lcom/jjoe64/graphview/GraphView$a;

.field private i:Lcom/jjoe64/graphview/GraphView$b;

.field private j:Lcom/jjoe64/graphview/e;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->l:Landroid/graphics/Paint;

    .line 207
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->l:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->l:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    new-instance v0, Lcom/jjoe64/graphview/GraphView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jjoe64/graphview/GraphView$a;-><init>(Lcom/jjoe64/graphview/GraphView$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    .line 212
    new-instance v0, Lcom/jjoe64/graphview/j;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/j;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 213
    new-instance v0, Lcom/jjoe64/graphview/c;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/c;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 214
    new-instance v0, Lcom/jjoe64/graphview/e;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/e;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->j:Lcom/jjoe64/graphview/e;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    .line 219
    new-instance v0, Lcom/jjoe64/graphview/GraphView$b;

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/GraphView$b;-><init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/GraphView$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->i:Lcom/jjoe64/graphview/GraphView$b;

    .line 221
    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->b()I

    move-result v1

    iput v1, v0, Lcom/jjoe64/graphview/GraphView$a;->b:I

    .line 229
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->a()F

    move-result v1

    iput v1, v0, Lcom/jjoe64/graphview/GraphView$a;->a:F

    return-void
.end method

.method private i()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 6236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 403
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->e()Lcom/jjoe64/graphview/c$b;

    move-result-object v0

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->i:I

    .line 7236
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 404
    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 8236
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 404
    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GraphView"

    const-string v1, "GraphView should be used in hardware accelerated mode.You can use android:hardwareAccelerated=\"true\" on your activity. Read this for more info:https://developer.android.com/guide/topics/graphics/hardware-accel.html"

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iget v1, v1, Lcom/jjoe64/graphview/GraphView$a;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1350
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iget v1, v1, Lcom/jjoe64/graphview/GraphView$a;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1351
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1353
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1354
    iget-object v2, p0, Lcom/jjoe64/graphview/GraphView;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/jjoe64/graphview/GraphView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/j;->a(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/c;->a(Landroid/graphics/Canvas;)V

    .line 308
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    .line 309
    invoke-interface {v1, p0, p1, v2}, Lcom/jjoe64/graphview/a/h;->a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    .line 313
    invoke-interface {v3, p0, p1, v1}, Lcom/jjoe64/graphview/a/h;->a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    if-eqz v0, :cond_4

    .line 318
    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/a;->a(Landroid/graphics/Canvas;)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 2977
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    .line 3075
    iget-object v3, v3, Landroidx/core/widget/d;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2979
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2980
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    iget-object v4, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v4

    iget-object v5, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/d;->a(II)V

    .line 2981
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    invoke-virtual {v3, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    .line 2984
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v2, v3

    .line 2987
    :cond_5
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    .line 4075
    iget-object v3, v3, Landroidx/core/widget/d;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 2988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2989
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v6

    iget-object v7, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x43340000    # 180.0f

    .line 2990
    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2991
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v6

    iget-object v7, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/d;->a(II)V

    .line 2992
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    invoke-virtual {v5, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    .line 2995
    :cond_6
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2998
    :cond_7
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    .line 5075
    iget-object v3, v3, Landroidx/core/widget/d;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3000
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v6

    iget-object v7, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 3001
    invoke-virtual {p1, v5, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3002
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v6

    iget-object v7, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/d;->a(II)V

    .line 3003
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    invoke-virtual {v5, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v2, 0x1

    .line 3006
    :cond_8
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3009
    :cond_9
    iget-object v3, v0, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    .line 6075
    iget-object v3, v3, Landroidx/core/widget/d;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3010
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3011
    iget-object v5, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v5

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x42b40000    # 90.0f

    .line 3012
    invoke-virtual {p1, v5, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3013
    iget-object v4, v0, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    iget-object v5, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v5

    iget-object v6, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/d;->a(II)V

    .line 3014
    iget-object v4, v0, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    invoke-virtual {v4, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    .line 3017
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v2, v1

    :cond_b
    if-eqz v2, :cond_c

    .line 3021
    iget-object v0, v0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v0}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->j:Lcom/jjoe64/graphview/e;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/e;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/a/h;)V
    .locals 1

    .line 245
    invoke-interface {p1, p0}, Lcom/jjoe64/graphview/a/h;->a(Lcom/jjoe64/graphview/GraphView;)V

    .line 246
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 247
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/GraphView;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/j;->b()V

    .line 284
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/jjoe64/graphview/h;->e()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jjoe64/graphview/c;->a(ZZ)V

    .line 288
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphView;->postInvalidate()V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 9236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 413
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->e()Lcom/jjoe64/graphview/c$b;

    move-result-object v0

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->i:I

    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .line 10236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 421
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->e()Lcom/jjoe64/graphview/c$b;

    move-result-object v0

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->i:I

    .line 422
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphView;->getHeight()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 11236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 422
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lcom/jjoe64/graphview/GraphView;->i()I

    move-result v0

    sub-int/2addr v1, v0

    .line 12236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 423
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->c()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public computeScroll()V
    .locals 0

    .line 471
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public final d()I
    .locals 2

    .line 13236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 431
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->e()Lcom/jjoe64/graphview/c$b;

    move-result-object v0

    iget v0, v0, Lcom/jjoe64/graphview/c$b;->i:I

    .line 432
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphView;->getWidth()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 14236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 432
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->f()I

    move-result v0

    sub-int/2addr v1, v0

    .line 433
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v0, :cond_0

    .line 15236
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 434
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->k()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 435
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/h;->f()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :cond_0
    return v1
.end method

.method public final e()Lcom/jjoe64/graphview/e;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->j:Lcom/jjoe64/graphview/e;

    return-object v0
.end method

.method public final f()Lcom/jjoe64/graphview/h;
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/jjoe64/graphview/h;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/h;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    .line 555
    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    iget-object v1, v1, Lcom/jjoe64/graphview/c;->a:Lcom/jjoe64/graphview/c$b;

    iget v1, v1, Lcom/jjoe64/graphview/c$b;->a:F

    .line 16288
    iput v1, v0, Lcom/jjoe64/graphview/h;->j:F

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    .line 333
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jjoe64/graphview/GraphView;->l:Landroid/graphics/Paint;

    const-string v3, "GraphView: No Preview available"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/GraphView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 394
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/GraphView;->a(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 448
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/j;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 449
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 452
    iget-object v2, p0, Lcom/jjoe64/graphview/GraphView;->i:Lcom/jjoe64/graphview/GraphView$b;

    .line 16092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 16093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/jjoe64/graphview/GraphView$b;->a:J

    .line 16094
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lcom/jjoe64/graphview/GraphView$b;->b:Landroid/graphics/PointF;

    goto :goto_0

    .line 16095
    :cond_0
    iget-wide v6, v2, Lcom/jjoe64/graphview/GraphView$b;->a:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 16096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, v2, Lcom/jjoe64/graphview/GraphView$b;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x42700000    # 60.0f

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    .line 16097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v7, v2, Lcom/jjoe64/graphview/GraphView$b;->b:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    .line 16098
    :cond_1
    iput-wide v8, v2, Lcom/jjoe64/graphview/GraphView$b;->a:J

    goto :goto_0

    .line 16100
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 16101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v2, v2, Lcom/jjoe64/graphview/GraphView$b;->a:J

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x190

    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 453
    iget-object v2, p0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/jjoe64/graphview/a/h;->b(FF)V

    goto :goto_2

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v2, :cond_5

    .line 457
    invoke-virtual {v2}, Lcom/jjoe64/graphview/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/jjoe64/graphview/a/h;->b(FF)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    return v4

    :cond_7
    :goto_4
    return v5
.end method

.method public setCursorMode(Z)V
    .locals 3

    .line 635
    iput-boolean p1, p0, Lcom/jjoe64/graphview/GraphView;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    if-nez p1, :cond_1

    .line 638
    new-instance p1, Lcom/jjoe64/graphview/a;

    invoke-direct {p1, p0}, Lcom/jjoe64/graphview/a;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    iput-object p1, p0, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    goto :goto_0

    .line 641
    :cond_0
    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    .line 642
    invoke-virtual {p0}, Lcom/jjoe64/graphview/GraphView;->invalidate()V

    .line 644
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    .line 645
    instance-of v2, v1, Lcom/jjoe64/graphview/a/b;

    if-eqz v2, :cond_2

    .line 646
    check-cast v1, Lcom/jjoe64/graphview/a/b;

    .line 16544
    iput-object v0, v1, Lcom/jjoe64/graphview/a/b;->e:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setLegendRenderer(Lcom/jjoe64/graphview/e;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphView;->j:Lcom/jjoe64/graphview/e;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphView;->g:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iput p1, v0, Lcom/jjoe64/graphview/GraphView$a;->b:I

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/jjoe64/graphview/GraphView;->h:Lcom/jjoe64/graphview/GraphView$a;

    iput p1, v0, Lcom/jjoe64/graphview/GraphView$a;->a:F

    return-void
.end method
