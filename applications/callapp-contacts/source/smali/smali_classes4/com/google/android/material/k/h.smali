.class public Lcom/google/android/material/k/h;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/k/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "h"

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private final c:[Lcom/google/android/material/k/o$f;

.field private final d:[Lcom/google/android/material/k/o$f;

.field private final e:Ljava/util/BitSet;

.field private f:Z

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/Region;

.field private final m:Landroid/graphics/Region;

.field private n:Lcom/google/android/material/k/m;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Lcom/google/android/material/j/a;

.field private final r:Lcom/google/android/material/k/n$b;

.field private final s:Lcom/google/android/material/k/n;

.field public t:Lcom/google/android/material/k/h$a;

.field public u:Z

.field private v:Landroid/graphics/PorterDuffColorFilter;

.field private w:Landroid/graphics/PorterDuffColorFilter;

.field private final x:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/k/h;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    new-instance v0, Lcom/google/android/material/k/m;

    invoke-direct {v0}, Lcom/google/android/material/k/m;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 189
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/k/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/k/h$a;)V
    .locals 5

    .line 205
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/k/o$f;

    .line 114
    iput-object v1, p0, Lcom/google/android/material/k/h;->c:[Lcom/google/android/material/k/o$f;

    new-array v0, v0, [Lcom/google/android/material/k/o$f;

    .line 115
    iput-object v0, p0, Lcom/google/android/material/k/h;->d:[Lcom/google/android/material/k/o$f;

    .line 116
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/k/h;->e:Ljava/util/BitSet;

    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->g:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->i:Landroid/graphics/Path;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->j:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->k:Landroid/graphics/RectF;

    .line 125
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->l:Landroid/graphics/Region;

    .line 126
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/h;->m:Landroid/graphics/Region;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    .line 132
    new-instance v3, Lcom/google/android/material/j/a;

    invoke-direct {v3}, Lcom/google/android/material/j/a;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 2083
    sget-object v3, Lcom/google/android/material/k/n$a;->a:Lcom/google/android/material/k/n;

    goto :goto_0

    .line 139
    :cond_0
    new-instance v3, Lcom/google/android/material/k/n;

    invoke-direct {v3}, Lcom/google/android/material/k/n;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/android/material/k/h;->s:Lcom/google/android/material/k/n;

    .line 145
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    .line 147
    iput-boolean v1, p0, Lcom/google/android/material/k/h;->u:Z

    .line 206
    iput-object p1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    .line 207
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    sget-object p1, Lcom/google/android/material/k/h;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 211
    invoke-direct {p0}, Lcom/google/android/material/k/h;->p()Z

    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;->a([I)Z

    .line 214
    new-instance p1, Lcom/google/android/material/k/h$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/k/h$1;-><init>(Lcom/google/android/material/k/h;)V

    iput-object p1, p0, Lcom/google/android/material/k/h;->r:Lcom/google/android/material/k/n$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/k/h$a;Lcom/google/android/material/k/h$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/h$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/k/m;)V
    .locals 2

    .line 202
    new-instance v0, Lcom/google/android/material/k/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/k/h$a;-><init>(Lcom/google/android/material/k/m;Lcom/google/android/material/e/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/h$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/k/p;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method private a()F
    .locals 2

    .line 7657
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->o:F

    .line 7678
    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v1, v1, Lcom/google/android/material/k/h$a;->p:F

    add-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/k/h;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    return-object p1

    .line 1244
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1266
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->b(I)I

    move-result p1

    .line 1270
    :cond_0
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3
.end method

.method private a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_0

    .line 1252
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1253
    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->b(I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 1255
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Landroid/content/Context;F)Lcom/google/android/material/k/h;
    .locals 2

    .line 170
    sget v0, Lcom/google/android/material/a$b;->colorSurface:I

    const-class v1, Lcom/google/android/material/k/h;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2064
    invoke-static {p0, v0, v1}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 173
    new-instance v1, Lcom/google/android/material/k/h;

    invoke-direct {v1}, Lcom/google/android/material/k/h;-><init>()V

    .line 174
    invoke-virtual {v1, p0}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 175
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 176
    invoke-virtual {v1, p1}, Lcom/google/android/material/k/h;->r(F)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/android/material/k/h;)Ljava/util/BitSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/material/k/h;->e:Ljava/util/BitSet;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1087
    iget-object v0, p0, Lcom/google/android/material/k/h;->e:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 1088
    sget-object v0, Lcom/google/android/material/k/h;->a:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->s:I

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    .line 19187
    iget-object v1, v1, Lcom/google/android/material/j/a;->a:Landroid/graphics/Paint;

    .line 1094
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/google/android/material/k/h;->c:[Lcom/google/android/material/k/o$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v3, v3, Lcom/google/android/material/k/h$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/k/o$f;->a(Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V

    .line 1100
    iget-object v1, p0, Lcom/google/android/material/k/h;->d:[Lcom/google/android/material/k/o$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v3, v3, Lcom/google/android/material/k/h$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/k/o$f;->a(Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/k/h;->u:Z

    if-eqz v0, :cond_3

    .line 1104
    invoke-direct {p0}, Lcom/google/android/material/k/h;->d()I

    move-result v0

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->j()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 1107
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1108
    iget-object v2, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    sget-object v3, Lcom/google/android/material/k/h;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1109
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/k/m;Landroid/graphics/RectF;)V
    .locals 1

    .line 1038
    invoke-virtual {p4, p5}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18672
    iget-object p3, p4, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 1040
    invoke-interface {p3, p5}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget p4, p4, Lcom/google/android/material/k/h$a;->k:F

    mul-float p3, p3, p4

    .line 1042
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 1044
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a([I)Z
    .locals 4

    .line 1296
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1298
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1305
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1306
    iget-object v2, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1307
    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v3, v3, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 1308
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private static b(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private b()V
    .locals 4

    .line 712
    invoke-direct {p0}, Lcom/google/android/material/k/h;->a()F

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/k/h$a;->r:I

    .line 714
    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/k/h$a;->s:I

    .line 716
    invoke-direct {p0}, Lcom/google/android/material/k/h;->p()Z

    .line 7863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 5

    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/k/h;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1203
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/google/android/material/k/h;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1205
    iget-object v0, p0, Lcom/google/android/material/k/h;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v1, v1, Lcom/google/android/material/k/h$a;->j:F

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->j:F

    .line 1206
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    .line 1205
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1207
    iget-object p1, p0, Lcom/google/android/material/k/h;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1211
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/k/h;)[Lcom/google/android/material/k/o$f;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/material/k/h;->c:[Lcom/google/android/material/k/o$f;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    .line 931
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/k/h;)[Lcom/google/android/material/k/o$f;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/material/k/h;->d:[Lcom/google/android/material/k/o$f;

    return-object p0
.end method

.method private d()I
    .locals 4

    .line 1115
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->t:I

    int-to-double v2, v2

    .line 1117
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/k/h;)Z
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/android/material/k/h;->f:Z

    return v0
.end method

.method private p()Z
    .locals 7

    .line 1215
    iget-object v0, p0, Lcom/google/android/material/k/h;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 1216
    iget-object v1, p0, Lcom/google/android/material/k/h;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 1217
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v3, v3, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 1218
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/material/k/h;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/k/h;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 1223
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v3, v3, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 1224
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/google/android/material/k/h;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/k/h;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 1229
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-boolean v2, v2, Lcom/google/android/material/k/h$a;->u:Z

    if-eqz v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v3, v3, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1230
    invoke-virtual {v2, v3}, Lcom/google/android/material/j/a;->a(I)V

    .line 1233
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/k/h;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/k/h;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 1234
    invoke-static {v1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    :goto_0
    return v5
.end method

.method private q()F
    .locals 2

    .line 1319
    invoke-direct {p0}, Lcom/google/android/material/k/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()Landroid/graphics/RectF;
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/google/android/material/k/h;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1328
    invoke-direct {p0}, Lcom/google/android/material/k/h;->q()F

    move-result v0

    .line 1329
    iget-object v1, p0, Lcom/google/android/material/k/h;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/k/h;->k:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public final a(FI)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->n(F)V

    .line 407
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final a(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->n(F)V

    .line 418
    invoke-virtual {p0, p2}, Lcom/google/android/material/k/h;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 529
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    new-instance v1, Lcom/google/android/material/e/a;

    invoke-direct {v1, p1}, Lcom/google/android/material/e/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    .line 600
    invoke-direct {p0}, Lcom/google/android/material/k/h;->b()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    .line 1028
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v5, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/k/m;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1140
    iget-object v0, p0, Lcom/google/android/material/k/h;->s:Lcom/google/android/material/k/n;

    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v1, v1, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->k:F

    iget-object v4, p0, Lcom/google/android/material/k/h;->r:Lcom/google/android/material/k/n$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Lcom/google/android/material/k/n$b;Landroid/graphics/Path;)V

    return-void
.end method

.method protected final b(I)I
    .locals 2

    .line 606
    invoke-direct {p0}, Lcom/google/android/material/k/h;->a()F

    move-result v0

    .line 7640
    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v1, v1, Lcom/google/android/material/k/h$a;->n:F

    add-float/2addr v0, v1

    .line 607
    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v1, v1, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v1, v1, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    .line 608
    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/e/a;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 942
    iget-object v0, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/k/h;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 943
    iget-object v0, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 944
    iget-object v1, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->m:I

    invoke-static {v0, v2}, Lcom/google/android/material/k/h;->b(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 946
    iget-object v1, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/k/h;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 947
    iget-object v1, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 949
    iget-object v1, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 950
    iget-object v2, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v3, v3, Lcom/google/android/material/k/h$a;->m:I

    invoke-static {v1, v3}, Lcom/google/android/material/k/h;->b(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 952
    iget-boolean v2, p0, Lcom/google/android/material/k/h;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 9152
    invoke-direct {p0}, Lcom/google/android/material/k/h;->q()F

    move-result v2

    neg-float v2, v2

    .line 9271
    iget-object v4, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v4, v4, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 9154
    new-instance v5, Lcom/google/android/material/k/h$2;

    invoke-direct {v5, p0, v2}, Lcom/google/android/material/k/h$2;-><init>(Lcom/google/android/material/k/h;F)V

    .line 9775
    invoke-virtual {v4}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object v2

    .line 10662
    iget-object v6, v4, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 9776
    invoke-interface {v5, v6}, Lcom/google/android/material/k/m$b;->a(Lcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v6

    .line 11147
    iput-object v6, v2, Lcom/google/android/material/k/m$a;->e:Lcom/google/android/material/k/c;

    .line 11672
    iget-object v6, v4, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 9777
    invoke-interface {v5, v6}, Lcom/google/android/material/k/m$b;->a(Lcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v6

    .line 12161
    iput-object v6, v2, Lcom/google/android/material/k/m$a;->f:Lcom/google/android/material/k/c;

    .line 12692
    iget-object v6, v4, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 9778
    invoke-interface {v5, v6}, Lcom/google/android/material/k/m$b;->a(Lcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v6

    .line 13189
    iput-object v6, v2, Lcom/google/android/material/k/m$a;->h:Lcom/google/android/material/k/c;

    .line 13682
    iget-object v4, v4, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 9779
    invoke-interface {v5, v4}, Lcom/google/android/material/k/m$b;->a(Lcom/google/android/material/k/c;)Lcom/google/android/material/k/c;

    move-result-object v4

    .line 14175
    iput-object v4, v2, Lcom/google/android/material/k/m$a;->g:Lcom/google/android/material/k/c;

    .line 9780
    invoke-virtual {v2}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v2

    .line 9155
    iput-object v2, p0, Lcom/google/android/material/k/h;->n:Lcom/google/android/material/k/m;

    .line 9168
    iget-object v4, p0, Lcom/google/android/material/k/h;->s:Lcom/google/android/material/k/n;

    iget-object v5, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v5, v5, Lcom/google/android/material/k/h$a;->k:F

    .line 9171
    invoke-direct {p0}, Lcom/google/android/material/k/h;->r()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/material/k/h;->i:Landroid/graphics/Path;

    .line 9168
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-direct {p0, v2, v4}, Lcom/google/android/material/k/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 955
    iput-boolean v3, p0, Lcom/google/android/material/k/h;->f:Z

    .line 15916
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->q:I

    const/16 v4, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->r:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->q:I

    if-eq v2, v5, :cond_3

    .line 16827
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    .line 16828
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->o()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-ge v2, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 14975
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17059
    invoke-direct {p0}, Lcom/google/android/material/k/h;->d()I

    move-result v2

    .line 17060
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->j()I

    move-result v7

    .line 17065
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v4, :cond_5

    iget-boolean v4, p0, Lcom/google/android/material/k/h;->u:Z

    if-eqz v4, :cond_5

    .line 17068
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 17069
    iget-object v8, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v8, v8, Lcom/google/android/material/k/h$a;->r:I

    neg-int v8, v8

    iget-object v9, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v9, v9, Lcom/google/android/material/k/h$a;->r:I

    neg-int v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 17070
    invoke-virtual {v4, v2, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 17071
    sget-object v8, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_5
    int-to-float v2, v2

    int-to-float v4, v7

    .line 17076
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14977
    iget-boolean v2, p0, Lcom/google/android/material/k/h;->u:Z

    if-nez v2, :cond_6

    .line 14978
    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;)V

    .line 14979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 14985
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 14986
    iget-object v4, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    if-ltz v2, :cond_7

    if-ltz v4, :cond_7

    .line 14995
    iget-object v7, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    .line 14997
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v8, v8, Lcom/google/android/material/k/h$a;->r:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/material/k/h;->x:Landroid/graphics/RectF;

    .line 14998
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v9, v9, Lcom/google/android/material/k/h$a;->r:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14996
    invoke-static {v7, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 15000
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15004
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v9, v9, Lcom/google/android/material/k/h$a;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v2, v8

    .line 15005
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v9, v9, Lcom/google/android/material/k/h$a;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v4, v8

    neg-float v8, v2

    neg-float v9, v4

    .line 15006
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15007
    invoke-direct {p0, v7}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;)V

    const/4 v7, 0x0

    .line 15008
    invoke-virtual {p1, v5, v2, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 15011
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 15014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 14989
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17923
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v4, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    .line 18049
    iget-object v6, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v8, v2, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/k/m;Landroid/graphics/RectF;)V

    .line 962
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/k/h;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 18053
    iget-object v5, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/google/android/material/k/h;->i:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/google/android/material/k/h;->n:Lcom/google/android/material/k/m;

    .line 18054
    invoke-direct {p0}, Lcom/google/android/material/k/h;->r()Landroid/graphics/RectF;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 18053
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/k/m;Landroid/graphics/RectF;)V

    .line 966
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/k/h;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 967
    iget-object p1, p0, Lcom/google/android/material/k/h;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected final e()Landroid/graphics/RectF;
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/google/android/material/k/h;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/k/h;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput v1, v0, Lcom/google/android/material/k/h$a;->q:I

    .line 6863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 306
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    .line 7149
    iget-boolean v0, v0, Lcom/google/android/material/e/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v1, v1, Lcom/google/android/material/k/h$a;->k:F

    mul-float v0, v0, v1

    .line 1185
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1189
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/k/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1190
    iget-object v0, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 1192
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 511
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/google/android/material/k/h;->l:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 465
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/k/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/material/k/h;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/k/h;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/k/h;->l:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 467
    iget-object v0, p0, Lcom/google/android/material/k/h;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/k/h;->m:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 468
    iget-object v0, p0, Lcom/google/android/material/k/h;->l:Landroid/graphics/Region;

    return-object v0
.end method

.method public final h()V
    .locals 0

    .line 863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/google/android/material/k/h;->q:Lcom/google/android/material/j/a;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lcom/google/android/material/j/a;->a(I)V

    .line 891
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/k/h$a;->u:Z

    .line 8863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lcom/google/android/material/k/h;->f:Z

    .line 855
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1275
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 1276
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    .line 1277
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 1278
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 1279
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .locals 4

    .line 1122
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v2, v2, Lcom/google/android/material/k/h$a;->t:I

    int-to-double v2, v2

    .line 1124
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final k()F
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 19662
    iget-object v0, v0, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 1338
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final l()F
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 19672
    iget-object v0, v0, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final m()F
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 19692
    iget-object v0, v0, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 1354
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 240
    new-instance v0, Lcom/google/android/material/k/h$a;

    iget-object v1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/h$a;-><init>(Lcom/google/android/material/k/h$a;)V

    .line 241
    iput-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    return-object p0
.end method

.method public final n()F
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 20682
    iget-object v0, v0, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final n(F)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput p1, v0, Lcom/google/android/material/k/h$a;->l:F

    .line 437
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    return-void
.end method

.method public final o(F)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/m;->a(F)Lcom/google/android/material/k/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public final o()Z
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    invoke-virtual {p0}, Lcom/google/android/material/k/h;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcom/google/android/material/k/h;->f:Z

    .line 937
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1284
    invoke-direct {p0, p1}, Lcom/google/android/material/k/h;->a([I)Z

    move-result p1

    .line 1285
    invoke-direct {p0}, Lcom/google/android/material/k/h;->p()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public final p(F)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput p1, v0, Lcom/google/android/material/k/h$a;->k:F

    const/4 p1, 0x1

    .line 633
    iput-boolean p1, p0, Lcom/google/android/material/k/h;->f:Z

    .line 634
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final q(F)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput p1, v0, Lcom/google/android/material/k/h$a;->n:F

    .line 647
    invoke-direct {p0}, Lcom/google/android/material/k/h;->b()V

    :cond_0
    return-void
.end method

.method public final r(F)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput p1, v0, Lcom/google/android/material/k/h$a;->o:F

    .line 668
    invoke-direct {p0}, Lcom/google/android/material/k/h;->b()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->m:I

    if-eq v0, p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput p1, v0, Lcom/google/android/material/k/h$a;->m:I

    .line 4863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->c:Landroid/graphics/ColorFilter;

    .line 5863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 376
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 354
    invoke-direct {p0}, Lcom/google/android/material/k/h;->p()Z

    .line 3863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iput-object p1, v0, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 346
    invoke-direct {p0}, Lcom/google/android/material/k/h;->p()Z

    .line 2863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
