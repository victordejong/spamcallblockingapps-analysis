.class public final Landroidx/appcompat/widget/af;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/af$a;,
        Landroidx/appcompat/widget/af$b;,
        Landroidx/appcompat/widget/af$f;,
        Landroidx/appcompat/widget/af$c;,
        Landroidx/appcompat/widget/af$d;,
        Landroidx/appcompat/widget/af$e;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/af;

.field private static final c:Landroidx/appcompat/widget/af$c;


# instance fields
.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroidx/b/h",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/af$d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroidx/b/d",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/util/TypedValue;

.field private i:Z

.field private j:Landroidx/appcompat/widget/af$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/af;->a:Landroid/graphics/PorterDuff$Mode;

    .line 112
    new-instance v0, Landroidx/appcompat/widget/af$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/af$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/af$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    .prologue
    .line 167
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .prologue
    .line 485
    const-class v1, Landroidx/appcompat/widget/af;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/af$c;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/af$c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 487
    if-nez v0, :cond_0

    .line 489
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 490
    sget-object v2, Landroidx/appcompat/widget/af;->c:Landroidx/appcompat/widget/af$c;

    invoke-virtual {v2, p0, p1, v0}, Landroidx/appcompat/widget/af$c;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    monitor-exit v1

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 475
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    .line 478
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 479
    invoke-static {v0, p1}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/af;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2

    .line 203
    invoke-static {p4}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 206
    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 207
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/af;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 225
    :cond_1
    :goto_0
    return-object p4

    .line 214
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/af$e;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 219
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 222
    const/4 p4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-nez v0, :cond_0

    move-object v0, v2

    .line 331
    :goto_0
    monitor-exit p0

    return-object v0

    .line 320
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 321
    if-eqz v1, :cond_2

    .line 323
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 324
    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/b/d;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v2

    .line 331
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/af;
    .locals 2

    .prologue
    .line 94
    const-class v1, Landroidx/appcompat/widget/af;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/af;->b:Landroidx/appcompat/widget/af;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroidx/appcompat/widget/af;

    invoke-direct {v0}, Landroidx/appcompat/widget/af;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/af;->b:Landroidx/appcompat/widget/af;

    .line 96
    sget-object v0, Landroidx/appcompat/widget/af;->b:Landroidx/appcompat/widget/af;

    invoke-static {v0}, Landroidx/appcompat/widget/af;->a(Landroidx/appcompat/widget/af;)V

    .line 98
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/af;->b:Landroidx/appcompat/widget/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    .line 420
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    .line 421
    if-nez v0, :cond_1

    .line 422
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    .line 423
    iget-object v1, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    .line 426
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;[I)V
    .locals 2

    .prologue
    .line 451
    invoke-static {p0}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 453
    const-string/jumbo v0, "ResourceManagerInternal"

    const-string/jumbo v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-boolean v0, p1, Landroidx/appcompat/widget/an;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/widget/an;->c:Z

    if-eqz v0, :cond_5

    .line 458
    :cond_2
    iget-boolean v0, p1, Landroidx/appcompat/widget/an;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/an;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Landroidx/appcompat/widget/an;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroidx/appcompat/widget/an;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Landroidx/appcompat/widget/af;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 466
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 458
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Landroidx/appcompat/widget/af;->a:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 463
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method private static a(Landroidx/appcompat/widget/af;)V
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 106
    const-string/jumbo v0, "vector"

    new-instance v1, Landroidx/appcompat/widget/af$f;

    invoke-direct {v1}, Landroidx/appcompat/widget/af$f;-><init>()V

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/af;->a(Ljava/lang/String;Landroidx/appcompat/widget/af$d;)V

    .line 107
    const-string/jumbo v0, "animated-vector"

    new-instance v1, Landroidx/appcompat/widget/af$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/af$b;-><init>()V

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/af;->a(Ljava/lang/String;Landroidx/appcompat/widget/af$d;)V

    .line 108
    const-string/jumbo v0, "animated-selector"

    new-instance v1, Landroidx/appcompat/widget/af$a;

    invoke-direct {v1}, Landroidx/appcompat/widget/af$a;-><init>()V

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/af;->a(Ljava/lang/String;Landroidx/appcompat/widget/af$d;)V

    .line 110
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/af$d;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    .line 370
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_1

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/af;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    .line 339
    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    .line 341
    iget-object v2, p0, Landroidx/appcompat/widget/af;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v2}, Landroidx/b/d;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .prologue
    .line 513
    instance-of v0, p0, Landroidx/k/a/a/i;

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.graphics.drawable.VectorDrawable"

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 513
    :goto_0
    return v0

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 497
    iget-boolean v0, p0, Landroidx/appcompat/widget/af;->i:Z

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    return-void

    .line 503
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/af;->i:Z

    .line 504
    sget v0, Landroidx/appcompat/c/a$a;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/af;->i:Z

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    .line 175
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 177
    invoke-static {v1}, Landroidx/appcompat/widget/af;->a(Landroid/util/TypedValue;)J

    move-result-wide v2

    .line 179
    invoke-direct {p0, p1, v2, v3}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 195
    :cond_1
    :goto_0
    return-object v0

    .line 186
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 189
    :goto_1
    if-eqz v0, :cond_1

    .line 190
    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 192
    invoke-direct {p0, p1, v2, v3, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    .line 187
    invoke-interface {v0, p0, p1, p2}, Landroidx/appcompat/widget/af$e;->a(Landroidx/appcompat/widget/af;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/af;->f:Landroidx/b/h;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/af;->f:Landroidx/b/h;

    invoke-virtual {v0, p2}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    const-string/jumbo v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    .line 233
    invoke-virtual {v2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    .line 310
    :cond_1
    :goto_0
    return-object v0

    .line 244
    :cond_2
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->f:Landroidx/b/h;

    .line 247
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 248
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    .line 250
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/af;->h:Landroid/util/TypedValue;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p2, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-static {v2}, Landroidx/appcompat/widget/af;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 256
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_5
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 270
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 272
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_7

    if-ne v0, v7, :cond_6

    .line 276
    :cond_7
    if-eq v0, v8, :cond_9

    .line 277
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string/jumbo v2, "ResourceManagerInternal"

    const-string/jumbo v3, "Exception while inflating drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-object v0, v1

    .line 302
    :goto_1
    if-nez v0, :cond_1

    .line 305
    iget-object v1, p0, Landroidx/appcompat/widget/af;->f:Landroidx/b/h;

    const-string/jumbo v2, "appcompat_skip_skip"

    invoke-virtual {v1, p2, v2}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_9
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v7, p0, Landroidx/appcompat/widget/af;->f:Landroidx/b/h;

    invoke-virtual {v7, p2, v0}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    .line 285
    iget-object v7, p0, Landroidx/appcompat/widget/af;->e:Landroidx/b/a;

    invoke-virtual {v7, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/af$d;

    .line 286
    if-eqz v0, :cond_a

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 287
    invoke-interface {v0, p1, v3, v6, v7}, Landroidx/appcompat/widget/af$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    :cond_a
    if-eqz v1, :cond_b

    .line 292
    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 293
    invoke-direct {p0, p1, v4, v5, v1}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_b

    :cond_b
    move-object v0, v1

    .line 300
    goto :goto_1

    :cond_c
    move-object v0, v1

    .line 310
    goto/16 :goto_0
.end method

.method private e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Landroidx/appcompat/widget/af;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    .line 410
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 412
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 410
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 412
    goto :goto_0
.end method


# virtual methods
.method a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/af$e;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/af;->b(Landroid/content/Context;)V

    .line 139
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/af;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/af;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 144
    invoke-static {p1, p2}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    :cond_2
    if-eqz v0, :cond_3

    .line 153
    invoke-static {v0}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_3
    monitor-exit p0

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/au;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/af;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    :cond_0
    if-eqz v0, :cond_1

    .line 356
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 358
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    .line 160
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroidx/b/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroidx/appcompat/widget/af$e;)V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/af$e;->b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/af;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 396
    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 400
    :goto_0
    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_0
    monitor-exit p0

    return-object v0

    .line 398
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/af;->j:Landroidx/appcompat/widget/af$e;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/af$e;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
