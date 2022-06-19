.class public Lorg/xutils/image/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageOptions$Builder;,
        Lorg/xutils/image/ImageOptions$ParamsBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/xutils/image/ImageOptions;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/Bitmap$Config;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z

.field private r:Landroid/widget/ImageView$ScaleType;

.field private s:Landroid/widget/ImageView$ScaleType;

.field private t:Z

.field private u:Landroid/view/animation/Animation;

.field private v:Z

.field private w:Lorg/xutils/image/ImageOptions$ParamsBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 3
    iput v0, p0, Lorg/xutils/image/ImageOptions;->b:I

    .line 4
    iput v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    .line 5
    iput v0, p0, Lorg/xutils/image/ImageOptions;->d:I

    .line 6
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->e:Z

    .line 7
    iput v0, p0, Lorg/xutils/image/ImageOptions;->f:I

    .line 8
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->g:Z

    .line 9
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->h:Z

    .line 10
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->i:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->j:Z

    .line 12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    .line 13
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->l:Z

    .line 14
    iput v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    .line 15
    iput v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->q:Z

    .line 19
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    .line 20
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    .line 21
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->t:Z

    .line 22
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    .line 23
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return-void
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/ImageOptions;->c:I

    return p1
.end method

.method static synthetic b(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic c(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/ImageOptions;->d:I

    return p1
.end method

.method static synthetic d(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/ImageOptions;->n:I

    return p1
.end method

.method static synthetic e(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic f(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->t:Z

    return p1
.end method

.method static synthetic g(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic h(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic i(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic j(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->q:Z

    return p1
.end method

.method static synthetic k(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return p1
.end method

.method static synthetic l(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->w:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p1
.end method

.method static synthetic m(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->e:Z

    return p1
.end method

.method static synthetic n(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/ImageOptions;->f:I

    return p1
.end method

.method static synthetic o(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->g:Z

    return p1
.end method

.method static synthetic p(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->h:Z

    return p1
.end method

.method static synthetic q(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->i:Z

    return p1
.end method

.method static synthetic r(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic s(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->l:Z

    return p1
.end method

.method static synthetic t(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/image/ImageOptions;->m:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lorg/xutils/image/ImageOptions;

    .line 3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->c:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->d:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->e:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->e:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lorg/xutils/image/ImageOptions;->f:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->f:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->g:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->g:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->h:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->h:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 11
    :cond_9
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->i:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->i:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->j:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->j:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    if-ne v2, p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_d
    :goto_1
    return v1
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->d:I

    return v0
.end method

.method public getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->b:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    return v0
.end method

.method public getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->w:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object v0
.end method

.method public getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->f:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lorg/xutils/image/ImageOptions;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lorg/xutils/image/ImageOptions;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lorg/xutils/image/ImageOptions;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isAutoRotate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->i:Z

    return v0
.end method

.method public isCircular()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->h:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->j:Z

    return v0
.end method

.method public isCrop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->e:Z

    return v0
.end method

.method public isFadeIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->t:Z

    return v0
.end method

.method public isForceLoadingDrawable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->q:Z

    return v0
.end method

.method public isIgnoreGif()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->l:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->g:Z

    return v0
.end method

.method public isUseMemCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p0, Lorg/xutils/image/ImageOptions;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u(Landroid/widget/ImageView;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-lez v1, :cond_0

    .line 2
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 3
    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenWidth()I

    move-result v0

    .line 5
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenHeight()I

    move-result v1

    .line 6
    sget-object v2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    if-ne p0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x3

    .line 7
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    mul-int/lit8 v1, v1, 0x3

    .line 8
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/xutils/image/ImageOptions;->d:I

    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    return-void

    .line 9
    :cond_1
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    const/4 v3, 0x0

    if-gez v2, :cond_2

    mul-int/lit8 v2, v0, 0x3

    .line 10
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 11
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->j:Z

    .line 12
    :cond_2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-gez v2, :cond_3

    mul-int/lit8 v2, v1, 0x3

    .line 13
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    .line 14
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->j:Z

    :cond_3
    if-nez p1, :cond_4

    .line 15
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    if-gtz v2, :cond_4

    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    if-gtz v2, :cond_4

    .line 16
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 17
    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    goto :goto_4

    .line 18
    :cond_4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 19
    iget v3, p0, Lorg/xutils/image/ImageOptions;->b:I

    if-eqz p1, :cond_c

    .line 20
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v5, -0x2

    if-gtz v2, :cond_7

    .line 21
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_6

    .line 22
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    if-gtz v2, :cond_5

    .line 23
    iput v6, p0, Lorg/xutils/image/ImageOptions;->c:I

    :cond_5
    move v2, v6

    goto :goto_0

    :cond_6
    if-eq v6, v5, :cond_7

    .line 24
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    :cond_7
    :goto_0
    if-gtz v3, :cond_a

    .line 25
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_9

    .line 26
    iget v3, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-gtz v3, :cond_8

    .line 27
    iput v4, p0, Lorg/xutils/image/ImageOptions;->d:I

    :cond_8
    move v3, v4

    goto :goto_1

    :cond_9
    if-eq v4, v5, :cond_a

    .line 28
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 29
    :cond_a
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_c

    if-gtz v2, :cond_b

    .line 30
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v2

    :cond_b
    if-gtz v3, :cond_c

    .line 31
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v3

    :cond_c
    if-gtz v2, :cond_d

    goto :goto_2

    :cond_d
    move v0, v2

    :goto_2
    if-gtz v3, :cond_e

    goto :goto_3

    :cond_e
    move v1, v3

    .line 32
    :goto_3
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 33
    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    :goto_4
    return-void
.end method
