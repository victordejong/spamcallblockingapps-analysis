.class public Lc4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/i$b;
    }
.end annotation


# static fields
.field public static final m:Lc4/c;


# instance fields
.field public a:Li4/d;

.field public b:Li4/d;

.field public c:Li4/d;

.field public d:Li4/d;

.field public e:Lc4/c;

.field public f:Lc4/c;

.field public g:Lc4/c;

.field public h:Lc4/c;

.field public i:Lc4/e;

.field public j:Lc4/e;

.field public k:Lc4/e;

.field public l:Lc4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc4/g;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lc4/g;-><init>(F)V

    sput-object v0, Lc4/i;->m:Lc4/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lc4/h;

    invoke-direct {v0}, Lc4/h;-><init>()V

    .line 28
    iput-object v0, p0, Lc4/i;->a:Li4/d;

    .line 29
    new-instance v0, Lc4/h;

    invoke-direct {v0}, Lc4/h;-><init>()V

    .line 30
    iput-object v0, p0, Lc4/i;->b:Li4/d;

    .line 31
    new-instance v0, Lc4/h;

    invoke-direct {v0}, Lc4/h;-><init>()V

    .line 32
    iput-object v0, p0, Lc4/i;->c:Li4/d;

    .line 33
    new-instance v0, Lc4/h;

    invoke-direct {v0}, Lc4/h;-><init>()V

    .line 34
    iput-object v0, p0, Lc4/i;->d:Li4/d;

    .line 35
    new-instance v0, Lc4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc4/a;-><init>(F)V

    iput-object v0, p0, Lc4/i;->e:Lc4/c;

    .line 36
    new-instance v0, Lc4/a;

    invoke-direct {v0, v1}, Lc4/a;-><init>(F)V

    iput-object v0, p0, Lc4/i;->f:Lc4/c;

    .line 37
    new-instance v0, Lc4/a;

    invoke-direct {v0, v1}, Lc4/a;-><init>(F)V

    iput-object v0, p0, Lc4/i;->g:Lc4/c;

    .line 38
    new-instance v0, Lc4/a;

    invoke-direct {v0, v1}, Lc4/a;-><init>(F)V

    iput-object v0, p0, Lc4/i;->h:Lc4/c;

    .line 39
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    .line 40
    iput-object v0, p0, Lc4/i;->i:Lc4/e;

    .line 41
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    .line 42
    iput-object v0, p0, Lc4/i;->j:Lc4/e;

    .line 43
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    .line 44
    iput-object v0, p0, Lc4/i;->k:Lc4/e;

    .line 45
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    .line 46
    iput-object v0, p0, Lc4/i;->l:Lc4/e;

    return-void
.end method

.method public constructor <init>(Lc4/i$b;Lc4/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lc4/i$b;->a:Li4/d;

    .line 3
    iput-object p2, p0, Lc4/i;->a:Li4/d;

    .line 4
    iget-object p2, p1, Lc4/i$b;->b:Li4/d;

    .line 5
    iput-object p2, p0, Lc4/i;->b:Li4/d;

    .line 6
    iget-object p2, p1, Lc4/i$b;->c:Li4/d;

    .line 7
    iput-object p2, p0, Lc4/i;->c:Li4/d;

    .line 8
    iget-object p2, p1, Lc4/i$b;->d:Li4/d;

    .line 9
    iput-object p2, p0, Lc4/i;->d:Li4/d;

    .line 10
    iget-object p2, p1, Lc4/i$b;->e:Lc4/c;

    .line 11
    iput-object p2, p0, Lc4/i;->e:Lc4/c;

    .line 12
    iget-object p2, p1, Lc4/i$b;->f:Lc4/c;

    .line 13
    iput-object p2, p0, Lc4/i;->f:Lc4/c;

    .line 14
    iget-object p2, p1, Lc4/i$b;->g:Lc4/c;

    .line 15
    iput-object p2, p0, Lc4/i;->g:Lc4/c;

    .line 16
    iget-object p2, p1, Lc4/i$b;->h:Lc4/c;

    .line 17
    iput-object p2, p0, Lc4/i;->h:Lc4/c;

    .line 18
    iget-object p2, p1, Lc4/i$b;->i:Lc4/e;

    .line 19
    iput-object p2, p0, Lc4/i;->i:Lc4/e;

    .line 20
    iget-object p2, p1, Lc4/i$b;->j:Lc4/e;

    .line 21
    iput-object p2, p0, Lc4/i;->j:Lc4/e;

    .line 22
    iget-object p2, p1, Lc4/i$b;->k:Lc4/e;

    .line 23
    iput-object p2, p0, Lc4/i;->k:Lc4/e;

    .line 24
    iget-object p1, p1, Lc4/i$b;->l:Lc4/e;

    .line 25
    iput-object p1, p0, Lc4/i;->l:Lc4/e;

    return-void
.end method

.method public static a(Landroid/content/Context;IILc4/c;)Lc4/i$b;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Lj4/w0;->E:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    .line 9
    invoke-static {p0, v2, p3}, Lc4/i;->d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;

    move-result-object p3

    const/16 v2, 0x8

    .line 10
    invoke-static {p0, v2, p3}, Lc4/i;->d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;

    move-result-object v2

    const/16 v3, 0x9

    .line 11
    invoke-static {p0, v3, p3}, Lc4/i;->d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;

    move-result-object v3

    const/4 v4, 0x7

    .line 12
    invoke-static {p0, v4, p3}, Lc4/i;->d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;

    move-result-object v4

    const/4 v5, 0x6

    .line 13
    invoke-static {p0, v5, p3}, Lc4/i;->d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;

    move-result-object p3

    .line 14
    new-instance v5, Lc4/i$b;

    invoke-direct {v5}, Lc4/i$b;-><init>()V

    .line 15
    invoke-static {p2}, Li4/d;->n(I)Li4/d;

    move-result-object p2

    .line 16
    iput-object p2, v5, Lc4/i$b;->a:Li4/d;

    .line 17
    invoke-static {p2}, Lc4/i$b;->b(Li4/d;)F

    .line 18
    iput-object v2, v5, Lc4/i$b;->e:Lc4/c;

    .line 19
    invoke-static {v0}, Li4/d;->n(I)Li4/d;

    move-result-object p2

    .line 20
    iput-object p2, v5, Lc4/i$b;->b:Li4/d;

    .line 21
    invoke-static {p2}, Lc4/i$b;->b(Li4/d;)F

    .line 22
    iput-object v3, v5, Lc4/i$b;->f:Lc4/c;

    .line 23
    invoke-static {v1}, Li4/d;->n(I)Li4/d;

    move-result-object p2

    .line 24
    iput-object p2, v5, Lc4/i$b;->c:Li4/d;

    .line 25
    invoke-static {p2}, Lc4/i$b;->b(Li4/d;)F

    .line 26
    iput-object v4, v5, Lc4/i$b;->g:Lc4/c;

    .line 27
    invoke-static {p1}, Li4/d;->n(I)Li4/d;

    move-result-object p1

    .line 28
    iput-object p1, v5, Lc4/i$b;->d:Li4/d;

    .line 29
    invoke-static {p1}, Lc4/i$b;->b(Li4/d;)F

    .line 30
    iput-object p3, v5, Lc4/i$b;->h:Lc4/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc4/i$b;
    .locals 2

    .line 1
    new-instance v0, Lc4/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lc4/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lc4/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILc4/c;)Lc4/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILc4/c;)Lc4/i$b;
    .locals 1

    .line 1
    sget-object v0, Lj4/w0;->w:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-static {p0, p3, p2, p4}, Lc4/i;->a(Landroid/content/Context;IILc4/c;)Lc4/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;ILc4/c;)Lc4/c;
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
    new-instance p2, Lc4/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lc4/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Lc4/g;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lc4/g;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public e(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Lc4/e;

    iget-object v1, p0, Lc4/i;->l:Lc4/e;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc4/i;->j:Lc4/e;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc4/i;->i:Lc4/e;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc4/i;->k:Lc4/e;

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
    iget-object v1, p0, Lc4/i;->e:Lc4/c;

    invoke-interface {v1, p1}, Lc4/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lc4/i;->f:Lc4/c;

    .line 8
    invoke-interface {v4, p1}, Lc4/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc4/i;->h:Lc4/c;

    .line 9
    invoke-interface {v4, p1}, Lc4/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lc4/i;->g:Lc4/c;

    .line 10
    invoke-interface {v4, p1}, Lc4/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v1, p0, Lc4/i;->b:Li4/d;

    instance-of v1, v1, Lc4/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc4/i;->a:Li4/d;

    instance-of v1, v1, Lc4/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc4/i;->c:Li4/d;

    instance-of v1, v1, Lc4/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc4/i;->d:Li4/d;

    instance-of v1, v1, Lc4/h;

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

.method public f(F)Lc4/i;
    .locals 1

    .line 1
    new-instance v0, Lc4/i$b;

    invoke-direct {v0, p0}, Lc4/i$b;-><init>(Lc4/i;)V

    .line 2
    invoke-virtual {v0, p1}, Lc4/i$b;->e(F)Lc4/i$b;

    .line 3
    invoke-virtual {v0, p1}, Lc4/i$b;->f(F)Lc4/i$b;

    .line 4
    invoke-virtual {v0, p1}, Lc4/i$b;->d(F)Lc4/i$b;

    .line 5
    invoke-virtual {v0, p1}, Lc4/i$b;->c(F)Lc4/i$b;

    .line 6
    invoke-virtual {v0}, Lc4/i$b;->a()Lc4/i;

    move-result-object p1

    return-object p1
.end method
