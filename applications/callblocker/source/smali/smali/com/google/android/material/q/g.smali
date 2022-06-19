.class public Lcom/google/android/material/q/g;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/q/g$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Paint;


# instance fields
.field private b:Lcom/google/android/material/q/g$a;

.field private final c:[Lcom/google/android/material/q/m$f;

.field private final d:[Lcom/google/android/material/q/m$f;

.field private e:Z

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Region;

.field private final l:Landroid/graphics/Region;

.field private m:Lcom/google/android/material/q/k;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Lcom/google/android/material/p/a;

.field private final q:Lcom/google/android/material/q/l$a;

.field private final r:Lcom/google/android/material/q/l;

.field private s:Landroid/graphics/PorterDuffColorFilter;

.field private t:Landroid/graphics/PorterDuffColorFilter;

.field private u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/q/g;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/material/q/k;

    invoke-direct {v0}, Lcom/google/android/material/q/k;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 175
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/q/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 176
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/q/g$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 191
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 108
    new-array v0, v2, [Lcom/google/android/material/q/m$f;

    iput-object v0, p0, Lcom/google/android/material/q/g;->c:[Lcom/google/android/material/q/m$f;

    .line 109
    new-array v0, v2, [Lcom/google/android/material/q/m$f;

    iput-object v0, p0, Lcom/google/android/material/q/g;->d:[Lcom/google/android/material/q/m$f;

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->f:Landroid/graphics/Matrix;

    .line 114
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    .line 115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->h:Landroid/graphics/Path;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->i:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->j:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->k:Landroid/graphics/Region;

    .line 119
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->l:Landroid/graphics/Region;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    .line 125
    new-instance v0, Lcom/google/android/material/p/a;

    invoke-direct {v0}, Lcom/google/android/material/p/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    .line 127
    new-instance v0, Lcom/google/android/material/q/l;

    invoke-direct {v0}, Lcom/google/android/material/q/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->r:Lcom/google/android/material/q/l;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    .line 192
    iput-object p1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    .line 193
    iget-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    sget-object v0, Lcom/google/android/material/q/g;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget-object v0, Lcom/google/android/material/q/g;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    invoke-direct {p0}, Lcom/google/android/material/q/g;->h()Z

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;->a([I)Z

    .line 200
    new-instance v0, Lcom/google/android/material/q/g$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/q/g$1;-><init>(Lcom/google/android/material/q/g;)V

    iput-object v0, p0, Lcom/google/android/material/q/g;->q:Lcom/google/android/material/q/l$a;

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/q/g$a;Lcom/google/android/material/q/g$1;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/g$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/q/k;)V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/material/q/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/q/g$a;-><init>(Lcom/google/android/material/q/k;Lcom/google/android/material/j/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/g$a;)V

    .line 189
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->U()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->R()F

    move-result v1

    add-float/2addr v0, v1

    .line 592
    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v1, v1, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v1, v1, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    .line 593
    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/j/a;->a(IF)I

    move-result p1

    .line 592
    :cond_0
    return p1
.end method

.method private static a(II)I
    .locals 1

    .prologue
    .line 230
    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 231
    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1193
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 1192
    :goto_0
    return-object v0

    .line 1194
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/q/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1216
    if-eqz p3, :cond_0

    .line 1217
    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;->a(I)I

    move-result v0

    .line 1219
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1
.end method

.method private a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .prologue
    .line 1200
    if-eqz p2, :cond_0

    .line 1201
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1202
    invoke-direct {p0, v0}, Lcom/google/android/material/q/g;->a(I)I

    move-result v1

    .line 1203
    if-eq v1, v0, :cond_0

    .line 1204
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;F)Lcom/google/android/material/q/g;
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/google/android/material/a$b;->colorSurface:I

    const-class v1, Lcom/google/android/material/q/g;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {p0, v0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 159
    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1}, Lcom/google/android/material/q/g;-><init>()V

    .line 160
    invoke-virtual {v1, p0}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 161
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 162
    invoke-virtual {v1, p1}, Lcom/google/android/material/q/g;->r(F)V

    .line 163
    return-object v1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->U()F

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/q/g$a;->r:I

    .line 699
    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/q/g$a;->s:I

    .line 701
    invoke-direct {p0}, Lcom/google/android/material/q/g;->h()Z

    .line 702
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 703
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1011
    iget-object v2, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v4, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/q/k;Landroid/graphics/RectF;)V

    .line 1012
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/q/k;Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p4, p5}, Lcom/google/android/material/q/k;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p4}, Lcom/google/android/material/q/k;->g()Lcom/google/android/material/q/c;

    move-result-object v0

    invoke-interface {v0, p5}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 1004
    invoke-virtual {p1, p5, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/q/g;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/android/material/q/g;->e:Z

    return p1
.end method

.method private a([I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1243
    const/4 v0, 0x0

    .line 1245
    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v2, v2, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1247
    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v3, v3, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1248
    if-eq v2, v3, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 1254
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v2, v2, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1255
    iget-object v2, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1256
    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v3, v3, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 1257
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1258
    if-eq v2, v3, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 1264
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/q/g;)[Lcom/google/android/material/q/m$f;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/material/q/g;->c:[Lcom/google/android/material/q/m$f;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1015
    iget-object v2, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/q/g;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/google/android/material/q/g;->m:Lcom/google/android/material/q/k;

    .line 1016
    invoke-direct {p0}, Lcom/google/android/material/q/g;->j()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 1015
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/q/k;Landroid/graphics/RectF;)V

    .line 1017
    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1150
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/q/g;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1152
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/google/android/material/q/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1154
    iget-object v0, p0, Lcom/google/android/material/q/g;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v1, v1, Lcom/google/android/material/q/g$a;->j:F

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->j:F

    .line 1155
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v5

    .line 1154
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1156
    iget-object v0, p0, Lcom/google/android/material/q/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1161
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/q/g;)[Lcom/google/android/material/q/m$f;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/material/q/g;->d:[Lcom/google/android/material/q/m$f;

    return-object v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 838
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->W()I

    move-result v0

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->X()I

    move-result v1

    .line 1027
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 1030
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1031
    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v3, v3, Lcom/google/android/material/q/g$a;->r:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v4, v4, Lcom/google/android/material/q/g$a;->r:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1032
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1033
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1038
    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1039
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->s:I

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    invoke-virtual {v1}, Lcom/google/android/material/p/a;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1054
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/google/android/material/q/g;->c:[Lcom/google/android/material/q/m$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v3, v3, Lcom/google/android/material/q/g$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/q/m$f;->a(Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V

    .line 1056
    iget-object v1, p0, Lcom/google/android/material/q/g;->d:[Lcom/google/android/material/q/m$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v3, v3, Lcom/google/android/material/q/g$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/q/m$f;->a(Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->W()I

    move-result v0

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->X()I

    move-result v1

    .line 1062
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1063
    iget-object v2, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    sget-object v3, Lcom/google/android/material/q/g;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1064
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1065
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 890
    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v1, v1, Lcom/google/android/material/q/g$a;->q:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v1, v1, Lcom/google/android/material/q/g$a;->r:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v1, v1, Lcom/google/android/material/q/g$a;->q:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/google/android/material/q/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    .line 905
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 903
    :goto_0
    return v0

    .line 905
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/google/android/material/q/g;->i()F

    move-result v0

    neg-float v0, v0

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/q/g$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/q/g$2;-><init>(Lcom/google/android/material/q/g;F)V

    .line 1109
    invoke-virtual {v1, v2}, Lcom/google/android/material/q/k;->a(Lcom/google/android/material/q/k$b;)Lcom/google/android/material/q/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/q/g;->m:Lcom/google/android/material/q/k;

    .line 1122
    iget-object v0, p0, Lcom/google/android/material/q/g;->r:Lcom/google/android/material/q/l;

    iget-object v1, p0, Lcom/google/android/material/q/g;->m:Lcom/google/android/material/q/k;

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->k:F

    .line 1125
    invoke-direct {p0}, Lcom/google/android/material/q/g;->j()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/q/g;->h:Landroid/graphics/Path;

    .line 1122
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/q/l;->a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1127
    return-void
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1164
    iget-object v2, p0, Lcom/google/android/material/q/g;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 1165
    iget-object v3, p0, Lcom/google/android/material/q/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1166
    iget-object v4, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v4, v4, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v5, v5, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    .line 1167
    invoke-direct {p0, v4, v5, v6, v1}, Lcom/google/android/material/q/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/q/g;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 1172
    iget-object v4, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v4, v4, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v5, v5, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    .line 1173
    invoke-direct {p0, v4, v5, v6, v0}, Lcom/google/android/material/q/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/q/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1178
    iget-object v4, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-boolean v4, v4, Lcom/google/android/material/q/g$a;->u:Z

    if-eqz v4, :cond_0

    .line 1179
    iget-object v4, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    iget-object v5, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v5, v5, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 1180
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getState()[I

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 1179
    invoke-virtual {v4, v5}, Lcom/google/android/material/p/a;->a(I)V

    .line 1182
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/q/g;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2, v4}, Landroidx/core/g/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/q/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 1183
    invoke-static {v3, v2}, Landroidx/core/g/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 1182
    :cond_2
    return v0
.end method

.method private i()F
    .locals 2

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/google/android/material/q/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v0

    .line 1277
    invoke-direct {p0}, Lcom/google/android/material/q/g;->i()F

    move-result v1

    .line 1278
    iget-object v2, p0, Lcom/google/android/material/q/g;->j:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1280
    iget-object v0, p0, Lcom/google/android/material/q/g;->j:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public C(I)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->t:I

    if-eq v0, p1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->t:I

    .line 773
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 775
    :cond_0
    return-void
.end method

.method public D(I)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/material/q/g;->p:Lcom/google/android/material/p/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/p/a;->a(I)V

    .line 865
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/q/g$a;->u:Z

    .line 866
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 867
    return-void
.end method

.method public L()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    return-object v0
.end method

.method public M()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public N()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected O()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/google/android/material/q/g;->i:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 459
    iget-object v0, p0, Lcom/google/android/material/q/g;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    .line 570
    invoke-virtual {v0}, Lcom/google/android/material/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 569
    :goto_0
    return v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()F
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->k:F

    return v0
.end method

.method public R()F
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->n:F

    return v0
.end method

.method public S()F
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->o:F

    return v0
.end method

.method public T()F
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->p:F

    return v0
.end method

.method public U()F
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->S()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->T()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public V()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->r:I

    return v0
.end method

.method public W()I
    .locals 4

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->t:I

    int-to-double v2, v2

    .line 1071
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1069
    return v0
.end method

.method public X()I
    .locals 4

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->t:I

    int-to-double v2, v2

    .line 1078
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1076
    return v0
.end method

.method public Y()F
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1287
    invoke-virtual {v0}, Lcom/google/android/material/q/k;->f()Lcom/google/android/material/q/c;

    move-result-object v0

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 1285
    return v0
.end method

.method public Z()F
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1295
    invoke-virtual {v0}, Lcom/google/android/material/q/k;->g()Lcom/google/android/material/q/c;

    move-result-object v0

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 1293
    return v0
.end method

.method public a(FI)V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/google/android/material/q/g;->n(F)V

    .line 391
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/q/g;->g(Landroid/content/res/ColorStateList;)V

    .line 392
    return-void
.end method

.method public a(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/google/android/material/q/g;->n(F)V

    .line 402
    invoke-virtual {p0, p2}, Lcom/google/android/material/q/g;->g(Landroid/content/res/ColorStateList;)V

    .line 403
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/material/q/g;->u:Landroid/graphics/Rect;

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 516
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    new-instance v1, Lcom/google/android/material/j/a;

    invoke-direct {v1, p1}, Lcom/google/android/material/j/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    .line 586
    invoke-direct {p0}, Lcom/google/android/material/q/g;->a()V

    .line 587
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v4, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/q/k;Landroid/graphics/RectF;)V

    .line 993
    return-void
.end method

.method protected final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/android/material/q/g;->r:Lcom/google/android/material/q/l;

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v1, v1, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->k:F

    iget-object v4, p0, Lcom/google/android/material/q/g;->q:Lcom/google/android/material/q/l$a;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/q/l;->a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Lcom/google/android/material/q/l$a;Landroid/graphics/Path;)V

    .line 1100
    return-void
.end method

.method public aa()F
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1303
    invoke-virtual {v0}, Lcom/google/android/material/q/k;->i()Lcom/google/android/material/q/c;

    move-result-object v0

    .line 1304
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 1301
    return v0
.end method

.method public ab()F
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1311
    invoke-virtual {v0}, Lcom/google/android/material/q/k;->h()Lcom/google/android/material/q/c;

    move-result-object v0

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 1309
    return v0
.end method

.method public ac()Z
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/k;->a(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/q/g;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 917
    iget-object v0, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->m:I

    invoke-static {v0, v2}, Lcom/google/android/material/q/g;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 920
    iget-object v1, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/q/g;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 921
    iget-object v1, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v2, v2, Lcom/google/android/material/q/g$a;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 923
    iget-object v1, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 924
    iget-object v2, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v3, v3, Lcom/google/android/material/q/g$a;->m:I

    invoke-static {v1, v3}, Lcom/google/android/material/q/g;->a(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 926
    iget-boolean v2, p0, Lcom/google/android/material/q/g;->e:Z

    if-eqz v2, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/google/android/material/q/g;->g()V

    .line 928
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/q/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 929
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/q/g;->e:Z

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/q/g;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 936
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;->c(Landroid/graphics/Canvas;)V

    .line 940
    iget-object v2, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 941
    iget-object v3, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 945
    iget-object v4, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    .line 947
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v5, v5, Lcom/google/android/material/q/g$a;->r:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/material/q/g;->v:Landroid/graphics/RectF;

    .line 948
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v6, v6, Lcom/google/android/material/q/g$a;->r:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 946
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 950
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v7, v7, Lcom/google/android/material/q/g$a;->r:I

    sub-int/2addr v6, v7

    sub-int v2, v6, v2

    int-to-float v2, v2

    .line 955
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v7, v7, Lcom/google/android/material/q/g$a;->r:I

    sub-int/2addr v6, v7

    sub-int v3, v6, v3

    int-to-float v3, v3

    .line 956
    neg-float v6, v2

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 958
    invoke-direct {p0, v5}, Lcom/google/android/material/q/g;->d(Landroid/graphics/Canvas;)V

    .line 960
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 964
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 970
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/q/g;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 971
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Canvas;)V

    .line 973
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/q/g;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 974
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;->b(Landroid/graphics/Canvas;)V

    .line 977
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/q/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 978
    iget-object v0, p0, Lcom/google/android/material/q/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 979
    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    .line 290
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/q/g;->onStateChange([I)Z

    .line 292
    :cond_0
    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 312
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/q/g;->onStateChange([I)Z

    .line 314
    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->ac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->Y()F

    move-result v0

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 1143
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/q/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/material/q/g;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/android/material/q/g;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 494
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/google/android/material/q/g;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->O()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/q/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 450
    iget-object v0, p0, Lcom/google/android/material/q/g;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/q/g;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/q/g;->k:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 451
    iget-object v0, p0, Lcom/google/android/material/q/g;->k:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/q/g;->l:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 452
    iget-object v0, p0, Lcom/google/android/material/q/g;->k:Landroid/graphics/Region;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/q/g;->e:Z

    .line 829
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 830
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 1225
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    .line 1226
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 1227
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    .line 1228
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1224
    :goto_0
    return v0

    .line 1228
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/google/android/material/q/g$a;

    iget-object v1, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g$a;-><init>(Lcom/google/android/material/q/g$a;)V

    .line 225
    iput-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    .line 226
    return-object p0
.end method

.method public n(F)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->l:F

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 422
    return-void
.end method

.method public o(F)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k;->a(F)Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 465
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/q/g;->e:Z

    .line 911
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 912
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/google/android/material/q/g;->a([I)Z

    move-result v0

    .line 1234
    invoke-direct {p0}, Lcom/google/android/material/q/g;->h()Z

    move-result v1

    .line 1235
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1236
    :goto_0
    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 1239
    :cond_1
    return v0

    .line 1235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(F)V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->k:F

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/q/g;->e:Z

    .line 619
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 621
    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->n:F

    .line 632
    invoke-direct {p0}, Lcom/google/android/material/q/g;->a()V

    .line 634
    :cond_0
    return-void
.end method

.method public r(F)V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->o:F

    .line 653
    invoke-direct {p0}, Lcom/google/android/material/q/g;->a()V

    .line 655
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget v0, v0, Lcom/google/android/material/q/g$a;->m:I

    if-eq v0, p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput p1, v0, Lcom/google/android/material/q/g$a;->m:I

    .line 435
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 437
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->c:Landroid/graphics/ColorFilter;

    .line 442
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 443
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 243
    invoke-virtual {p0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 244
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 360
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/q/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 361
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 338
    invoke-direct {p0}, Lcom/google/android/material/q/g;->h()Z

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 340
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iget-object v0, v0, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/material/q/g;->b:Lcom/google/android/material/q/g$a;

    iput-object p1, v0, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 330
    invoke-direct {p0}, Lcom/google/android/material/q/g;->h()Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/material/q/g;->c()V

    .line 333
    :cond_0
    return-void
.end method
