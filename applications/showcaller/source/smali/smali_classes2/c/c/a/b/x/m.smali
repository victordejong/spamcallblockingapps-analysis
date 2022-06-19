.class public Lc/c/a/b/x/m;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/x/m$c;,
        Lc/c/a/b/x/m$b;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/b/x/c;


# instance fields
.field b:Lc/c/a/b/x/d;

.field c:Lc/c/a/b/x/d;

.field d:Lc/c/a/b/x/d;

.field e:Lc/c/a/b/x/d;

.field f:Lc/c/a/b/x/c;

.field g:Lc/c/a/b/x/c;

.field h:Lc/c/a/b/x/c;

.field i:Lc/c/a/b/x/c;

.field j:Lc/c/a/b/x/f;

.field k:Lc/c/a/b/x/f;

.field l:Lc/c/a/b/x/f;

.field m:Lc/c/a/b/x/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/b/x/k;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lc/c/a/b/x/k;-><init>(F)V

    sput-object v0, Lc/c/a/b/x/m;->a:Lc/c/a/b/x/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lc/c/a/b/x/i;->b()Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->b:Lc/c/a/b/x/d;

    .line 17
    invoke-static {}, Lc/c/a/b/x/i;->b()Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->c:Lc/c/a/b/x/d;

    .line 18
    invoke-static {}, Lc/c/a/b/x/i;->b()Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->d:Lc/c/a/b/x/d;

    .line 19
    invoke-static {}, Lc/c/a/b/x/i;->b()Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->e:Lc/c/a/b/x/d;

    .line 20
    new-instance v0, Lc/c/a/b/x/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/b/x/a;-><init>(F)V

    iput-object v0, p0, Lc/c/a/b/x/m;->f:Lc/c/a/b/x/c;

    .line 21
    new-instance v0, Lc/c/a/b/x/a;

    invoke-direct {v0, v1}, Lc/c/a/b/x/a;-><init>(F)V

    iput-object v0, p0, Lc/c/a/b/x/m;->g:Lc/c/a/b/x/c;

    .line 22
    new-instance v0, Lc/c/a/b/x/a;

    invoke-direct {v0, v1}, Lc/c/a/b/x/a;-><init>(F)V

    iput-object v0, p0, Lc/c/a/b/x/m;->h:Lc/c/a/b/x/c;

    .line 23
    new-instance v0, Lc/c/a/b/x/a;

    invoke-direct {v0, v1}, Lc/c/a/b/x/a;-><init>(F)V

    iput-object v0, p0, Lc/c/a/b/x/m;->i:Lc/c/a/b/x/c;

    .line 24
    invoke-static {}, Lc/c/a/b/x/i;->c()Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->j:Lc/c/a/b/x/f;

    .line 25
    invoke-static {}, Lc/c/a/b/x/i;->c()Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->k:Lc/c/a/b/x/f;

    .line 26
    invoke-static {}, Lc/c/a/b/x/i;->c()Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->l:Lc/c/a/b/x/f;

    .line 27
    invoke-static {}, Lc/c/a/b/x/i;->c()Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->m:Lc/c/a/b/x/f;

    return-void
.end method

.method private constructor <init>(Lc/c/a/b/x/m$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc/c/a/b/x/m$b;->a(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->b:Lc/c/a/b/x/d;

    .line 4
    invoke-static {p1}, Lc/c/a/b/x/m$b;->e(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->c:Lc/c/a/b/x/d;

    .line 5
    invoke-static {p1}, Lc/c/a/b/x/m$b;->f(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->d:Lc/c/a/b/x/d;

    .line 6
    invoke-static {p1}, Lc/c/a/b/x/m$b;->g(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->e:Lc/c/a/b/x/d;

    .line 7
    invoke-static {p1}, Lc/c/a/b/x/m$b;->h(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->f:Lc/c/a/b/x/c;

    .line 8
    invoke-static {p1}, Lc/c/a/b/x/m$b;->i(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->g:Lc/c/a/b/x/c;

    .line 9
    invoke-static {p1}, Lc/c/a/b/x/m$b;->j(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->h:Lc/c/a/b/x/c;

    .line 10
    invoke-static {p1}, Lc/c/a/b/x/m$b;->k(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->i:Lc/c/a/b/x/c;

    .line 11
    invoke-static {p1}, Lc/c/a/b/x/m$b;->l(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->j:Lc/c/a/b/x/f;

    .line 12
    invoke-static {p1}, Lc/c/a/b/x/m$b;->b(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->k:Lc/c/a/b/x/f;

    .line 13
    invoke-static {p1}, Lc/c/a/b/x/m$b;->c(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/b/x/m;->l:Lc/c/a/b/x/f;

    .line 14
    invoke-static {p1}, Lc/c/a/b/x/m$b;->d(Lc/c/a/b/x/m$b;)Lc/c/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/x/m;->m:Lc/c/a/b/x/f;

    return-void
.end method

.method synthetic constructor <init>(Lc/c/a/b/x/m$b;Lc/c/a/b/x/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/b/x/m;-><init>(Lc/c/a/b/x/m$b;)V

    return-void
.end method

.method public static a()Lc/c/a/b/x/m$b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/m$b;

    invoke-direct {v0}, Lc/c/a/b/x/m$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lc/c/a/b/x/m$b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lc/c/a/b/x/m;->c(Landroid/content/Context;III)Lc/c/a/b/x/m$b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;III)Lc/c/a/b/x/m$b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lc/c/a/b/x/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lc/c/a/b/x/m;->d(Landroid/content/Context;IILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;IILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Lc/c/a/b/l;->ShapeAppearance:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 4
    :try_start_0
    sget p1, Lc/c/a/b/l;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 5
    sget p2, Lc/c/a/b/l;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    sget v0, Lc/c/a/b/l;->ShapeAppearance_cornerFamilyTopRight:I

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 9
    sget v1, Lc/c/a/b/l;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 11
    sget v2, Lc/c/a/b/l;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 12
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 13
    sget v2, Lc/c/a/b/l;->ShapeAppearance_cornerSize:I

    .line 14
    invoke-static {p0, v2, p3}, Lc/c/a/b/x/m;->m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object p3

    .line 15
    sget v2, Lc/c/a/b/l;->ShapeAppearance_cornerSizeTopLeft:I

    .line 16
    invoke-static {p0, v2, p3}, Lc/c/a/b/x/m;->m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v2

    .line 17
    sget v3, Lc/c/a/b/l;->ShapeAppearance_cornerSizeTopRight:I

    .line 18
    invoke-static {p0, v3, p3}, Lc/c/a/b/x/m;->m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v3

    .line 19
    sget v4, Lc/c/a/b/l;->ShapeAppearance_cornerSizeBottomRight:I

    .line 20
    invoke-static {p0, v4, p3}, Lc/c/a/b/x/m;->m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v4

    .line 21
    sget v5, Lc/c/a/b/l;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 22
    invoke-static {p0, v5, p3}, Lc/c/a/b/x/m;->m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object p3

    .line 23
    new-instance v5, Lc/c/a/b/x/m$b;

    invoke-direct {v5}, Lc/c/a/b/x/m$b;-><init>()V

    .line 24
    invoke-virtual {v5, p2, v2}, Lc/c/a/b/x/m$b;->C(ILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p2

    .line 25
    invoke-virtual {p2, v0, v3}, Lc/c/a/b/x/m$b;->G(ILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p2

    .line 26
    invoke-virtual {p2, v1, v4}, Lc/c/a/b/x/m$b;->x(ILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1, p3}, Lc/c/a/b/x/m$b;->t(ILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc/c/a/b/x/m$b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lc/c/a/b/x/m;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lc/c/a/b/x/m$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lc/c/a/b/x/m$b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lc/c/a/b/x/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lc/c/a/b/x/m;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/b/l;->MaterialShape:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lc/c/a/b/l;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    sget v0, Lc/c/a/b/l;->MaterialShape_shapeAppearanceOverlay:I

    .line 5
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-static {p0, p2, p3, p4}, Lc/c/a/b/x/m;->d(Landroid/content/Context;IILc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/res/TypedArray;ILc/c/a/b/x/c;)Lc/c/a/b/x/c;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p2, Lc/c/a/b/x/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lc/c/a/b/x/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Lc/c/a/b/x/k;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lc/c/a/b/x/k;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Lc/c/a/b/x/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->l:Lc/c/a/b/x/f;

    return-object v0
.end method

.method public i()Lc/c/a/b/x/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->e:Lc/c/a/b/x/d;

    return-object v0
.end method

.method public j()Lc/c/a/b/x/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->i:Lc/c/a/b/x/c;

    return-object v0
.end method

.method public k()Lc/c/a/b/x/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->d:Lc/c/a/b/x/d;

    return-object v0
.end method

.method public l()Lc/c/a/b/x/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->h:Lc/c/a/b/x/c;

    return-object v0
.end method

.method public n()Lc/c/a/b/x/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->m:Lc/c/a/b/x/f;

    return-object v0
.end method

.method public o()Lc/c/a/b/x/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->k:Lc/c/a/b/x/f;

    return-object v0
.end method

.method public p()Lc/c/a/b/x/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->j:Lc/c/a/b/x/f;

    return-object v0
.end method

.method public q()Lc/c/a/b/x/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->b:Lc/c/a/b/x/d;

    return-object v0
.end method

.method public r()Lc/c/a/b/x/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->f:Lc/c/a/b/x/c;

    return-object v0
.end method

.method public s()Lc/c/a/b/x/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->c:Lc/c/a/b/x/d;

    return-object v0
.end method

.method public t()Lc/c/a/b/x/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/m;->g:Lc/c/a/b/x/c;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Lc/c/a/b/x/f;

    iget-object v1, p0, Lc/c/a/b/x/m;->m:Lc/c/a/b/x/f;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/b/x/m;->k:Lc/c/a/b/x/f;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/b/x/m;->j:Lc/c/a/b/x/f;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/b/x/m;->l:Lc/c/a/b/x/f;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lc/c/a/b/x/m;->f:Lc/c/a/b/x/c;

    invoke-interface {v1, p1}, Lc/c/a/b/x/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lc/c/a/b/x/m;->g:Lc/c/a/b/x/c;

    .line 8
    invoke-interface {v4, p1}, Lc/c/a/b/x/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc/c/a/b/x/m;->i:Lc/c/a/b/x/c;

    .line 9
    invoke-interface {v4, p1}, Lc/c/a/b/x/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc/c/a/b/x/m;->h:Lc/c/a/b/x/c;

    .line 10
    invoke-interface {v4, p1}, Lc/c/a/b/x/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v1, p0, Lc/c/a/b/x/m;->c:Lc/c/a/b/x/d;

    instance-of v1, v1, Lc/c/a/b/x/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/b/x/m;->b:Lc/c/a/b/x/d;

    instance-of v1, v1, Lc/c/a/b/x/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/b/x/m;->d:Lc/c/a/b/x/d;

    instance-of v1, v1, Lc/c/a/b/x/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/b/x/m;->e:Lc/c/a/b/x/d;

    instance-of v1, v1, Lc/c/a/b/x/l;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public v()Lc/c/a/b/x/m$b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/b/x/m$b;

    invoke-direct {v0, p0}, Lc/c/a/b/x/m$b;-><init>(Lc/c/a/b/x/m;)V

    return-object v0
.end method

.method public w(F)Lc/c/a/b/x/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/x/m;->v()Lc/c/a/b/x/m$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/b/x/m$b;->o(F)Lc/c/a/b/x/m$b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/x/m$b;->m()Lc/c/a/b/x/m;

    move-result-object p1

    return-object p1
.end method

.method public x(Lc/c/a/b/x/c;)Lc/c/a/b/x/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/x/m;->v()Lc/c/a/b/x/m$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/b/x/m$b;->p(Lc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/x/m$b;->m()Lc/c/a/b/x/m;

    move-result-object p1

    return-object p1
.end method

.method public y(Lc/c/a/b/x/m$c;)Lc/c/a/b/x/m;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/x/m;->v()Lc/c/a/b/x/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/x/m;->r()Lc/c/a/b/x/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/c/a/b/x/m$c;->a(Lc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/x/m$b;->F(Lc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lc/c/a/b/x/m;->t()Lc/c/a/b/x/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/c/a/b/x/m$c;->a(Lc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/x/m$b;->J(Lc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lc/c/a/b/x/m;->j()Lc/c/a/b/x/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/c/a/b/x/m$c;->a(Lc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/x/m$b;->w(Lc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lc/c/a/b/x/m;->l()Lc/c/a/b/x/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/c/a/b/x/m$c;->a(Lc/c/a/b/x/c;)Lc/c/a/b/x/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/x/m$b;->A(Lc/c/a/b/x/c;)Lc/c/a/b/x/m$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lc/c/a/b/x/m$b;->m()Lc/c/a/b/x/m;

    move-result-object p1

    return-object p1
.end method
