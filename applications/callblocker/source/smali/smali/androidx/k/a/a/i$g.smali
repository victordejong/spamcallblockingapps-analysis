.class Landroidx/k/a/a/i$g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/k/a/a/i$f;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Landroidx/k/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1122
    new-instance v0, Landroidx/k/a/a/i$f;

    invoke-direct {v0}, Landroidx/k/a/a/i$f;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 1123
    return-void
.end method

.method public constructor <init>(Landroidx/k/a/a/i$g;)V
    .locals 3

    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Landroidx/k/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1034
    if-eqz p1, :cond_2

    .line 1035
    iget v0, p1, Landroidx/k/a/a/i$g;->a:I

    iput v0, p0, Landroidx/k/a/a/i$g;->a:I

    .line 1036
    new-instance v0, Landroidx/k/a/a/i$f;

    iget-object v1, p1, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-direct {v0, v1}, Landroidx/k/a/a/i$f;-><init>(Landroidx/k/a/a/i$f;)V

    iput-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 1037
    iget-object v0, p1, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget-object v0, v0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget-object v2, v2, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 1040
    :cond_0
    iget-object v0, p1, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget-object v0, v0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    iget-object v2, v2, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 1043
    :cond_1
    iget-object v0, p1, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1044
    iget-object v0, p1, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1045
    iget-boolean v0, p1, Landroidx/k/a/a/i$g;->e:Z

    iput-boolean v0, p0, Landroidx/k/a/a/i$g;->e:Z

    .line 1047
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroidx/k/a/a/i$g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1074
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 1069
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    .line 1070
    iget-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1072
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v1}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1073
    iget-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1074
    iget-object v0, p0, Landroidx/k/a/a/i$g;->l:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 1078
    iget-object v0, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1079
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1080
    iget-object v1, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroidx/k/a/a/i$f;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1081
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 1052
    invoke-virtual {p0, p2}, Landroidx/k/a/a/i$g;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .line 1053
    iget-object v1, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1054
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([I)Z
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0, p1}, Landroidx/k/a/a/i$f;->a([I)Z

    move-result v0

    .line 1148
    iget-boolean v1, p0, Landroidx/k/a/a/i$g;->k:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/k/a/a/i$g;->k:Z

    .line 1149
    return v0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/k/a/a/i$g;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/k/a/a/i$g;->k:Z

    .line 1090
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Landroidx/k/a/a/i$g;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/k/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/k/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/k/a/a/i$g;->j:Z

    iget-boolean v1, p0, Landroidx/k/a/a/i$g;->e:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/k/a/a/i$g;->i:I

    iget-object v1, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    .line 1105
    invoke-virtual {v1}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1106
    const/4 v0, 0x1

    .line 1108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroidx/k/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    .line 1115
    iget-object v0, p0, Landroidx/k/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/k/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1116
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$g;->i:I

    .line 1117
    iget-boolean v0, p0, Landroidx/k/a/a/i$g;->e:Z

    iput-boolean v0, p0, Landroidx/k/a/a/i$g;->j:Z

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/k/a/a/i$g;->k:Z

    .line 1119
    return-void
.end method

.method public c(II)Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/k/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 1094
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1095
    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Landroidx/k/a/a/i$g;->b:Landroidx/k/a/a/i$f;

    invoke-virtual {v0}, Landroidx/k/a/a/i$f;->a()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Landroidx/k/a/a/i$g;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1128
    new-instance v0, Landroidx/k/a/a/i;

    invoke-direct {v0, p0}, Landroidx/k/a/a/i;-><init>(Landroidx/k/a/a/i$g;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1134
    new-instance v0, Landroidx/k/a/a/i;

    invoke-direct {v0, p0}, Landroidx/k/a/a/i;-><init>(Landroidx/k/a/a/i$g;)V

    return-object v0
.end method
