.class Lhani/momanii/supernova_emoji_library/Helper/e;
.super Landroid/text/style/DynamicDrawableSpan;
.source ""


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    invoke-direct {p0, p4}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->b:Landroid/content/Context;

    iput p2, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->c:I

    iput p3, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->d:I

    iput p3, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->f:I

    iput p3, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->g:I

    iput p5, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->e:I

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Helper/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->j:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p8, p3

    iget p4, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 p7, 0x1

    if-ne p4, p7, :cond_0

    sub-int/2addr p8, p6

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p6, p8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p6, p3

    iget p3, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->h:I

    sub-int p3, p6, p3

    :cond_0
    int-to-float p3, p3

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->i:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->d:I

    iput v1, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->f:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int v1, v1, v0

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->g:I

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->e:I

    iget v2, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->f:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->h:I

    iget-object v3, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->i:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    add-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/e;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
