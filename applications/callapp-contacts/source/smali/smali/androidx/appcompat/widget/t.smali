.class public final Landroidx/appcompat/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/t$a;,
        Landroidx/appcompat/widget/t$b;,
        Landroidx/appcompat/widget/t$f;,
        Landroidx/appcompat/widget/t$c;,
        Landroidx/appcompat/widget/t$d;,
        Landroidx/appcompat/widget/t$e;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/t;

.field private static final c:Landroidx/appcompat/widget/t$c;


# instance fields
.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/b/h<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/t$d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/b/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/util/TypedValue;

.field private i:Z

.field private j:Landroidx/appcompat/widget/t$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/t;->a:Landroid/graphics/PorterDuff$Mode;

    .line 112
    new-instance v0, Landroidx/appcompat/widget/t$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/t$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/t$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    .line 167
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/t$e;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/t;

    monitor-enter v0

    .line 470
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/t$c;

    .line 6420
    invoke-static {p0, p1}, Landroidx/appcompat/widget/t$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/t$c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_0

    .line 474
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6424
    invoke-static {p0, p1}, Landroidx/appcompat/widget/t$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroidx/appcompat/widget/t$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 200
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/t;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {p4}, Landroidx/appcompat/widget/p;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 206
    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 207
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/t;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 212
    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/t$e;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x0

    :cond_3
    :goto_0
    return-object p4
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    monitor-exit p0

    return-object v1

    .line 4109
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 320
    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 328
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/b/d;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/t;
    .locals 4

    const-class v0, Landroidx/appcompat/widget/t;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/t;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroidx/appcompat/widget/t;

    invoke-direct {v1}, Landroidx/appcompat/widget/t;-><init>()V

    .line 96
    sput-object v1, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/t;

    .line 1105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const-string v2, "vector"

    .line 1106
    new-instance v3, Landroidx/appcompat/widget/t$f;

    invoke-direct {v3}, Landroidx/appcompat/widget/t$f;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/t;->a(Ljava/lang/String;Landroidx/appcompat/widget/t$d;)V

    const-string v2, "animated-vector"

    .line 1107
    new-instance v3, Landroidx/appcompat/widget/t$b;

    invoke-direct {v3}, Landroidx/appcompat/widget/t$b;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/t;->a(Ljava/lang/String;Landroidx/appcompat/widget/t$d;)V

    const-string v2, "animated-selector"

    .line 1108
    new-instance v3, Landroidx/appcompat/widget/t$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/t$a;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/t;->a(Ljava/lang/String;Landroidx/appcompat/widget/t$d;)V

    .line 98
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/z;[I)V
    .locals 3

    .line 436
    invoke-static {p0}, Landroidx/appcompat/widget/p;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/z;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/widget/z;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 444
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/z;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/z;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 445
    :goto_1
    iget-boolean v2, p1, Landroidx/appcompat/widget/z;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/z;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/t;->a:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 5463
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 5464
    invoke-static {p2, p1}, Landroidx/appcompat/widget/t;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 443
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 451
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    .line 454
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/t$d;)V
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    .line 370
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    invoke-virtual {v0, p1, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    .line 341
    iget-object v1, p0, Landroidx/appcompat/widget/t;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/b/d;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 344
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 346
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/b/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/b/h;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    .line 3109
    invoke-virtual {v0, p2, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    .line 233
    invoke-virtual {v3, v0}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    .line 244
    :cond_1
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/b/h;

    .line 247
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    .line 250
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    .line 252
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-static {v0}, Landroidx/appcompat/widget/t;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 256
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    .line 266
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 269
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 270
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 272
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    if-ne v8, v3, :cond_5

    :cond_6
    if-ne v8, v9, :cond_8

    .line 280
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v8, p0, Landroidx/appcompat/widget/t;->f:Landroidx/b/h;

    invoke-virtual {v8, p2, v3}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    .line 285
    iget-object v8, p0, Landroidx/appcompat/widget/t;->e:Landroidx/b/g;

    invoke-virtual {v8, v3}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/t$d;

    if-eqz v3, :cond_7

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 287
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/t$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_7
    if-eqz v6, :cond_9

    .line 292
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 293
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 277
    :cond_8
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "ResourceManagerInternal"

    const-string v1, "Exception while inflating drawable"

    .line 299
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_0
    if-nez v6, :cond_a

    .line 305
    iget-object p1, p0, Landroidx/appcompat/widget/t;->f:Landroidx/b/h;

    invoke-virtual {p1, p2, v2}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    :cond_a
    return-object v6

    :cond_b
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    monitor-enter p0

    .line 1482
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1488
    iput-boolean v1, p0, Landroidx/appcompat/widget/t;->i:Z

    .line 1489
    sget v0, Landroidx/appcompat/c/a$a;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1498
    instance-of v3, v0, Landroidx/l/a/a/i;

    if-nez v3, :cond_1

    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 1499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 1491
    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/t;->i:Z

    .line 1492
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/t;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2172
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 2173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    .line 2175
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroid/util/TypedValue;

    .line 2176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2177
    invoke-static {v0}, Landroidx/appcompat/widget/t;->a(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 2179
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 2186
    iget-object v3, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    .line 2187
    :cond_5
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/t$e;->a(Landroidx/appcompat/widget/t;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_6

    .line 2190
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2192
    invoke-direct {p0, p1, v1, v2, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_6
    move-object v0, v3

    :cond_7
    if-nez v0, :cond_8

    .line 144
    invoke-static {p1, p2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 153
    invoke-static {v0}, Landroidx/appcompat/widget/p;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/ag;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/t;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ag;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 356
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 358
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/b/d;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroidx/b/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroidx/appcompat/widget/t$e;)V
    .locals 0

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/t$e;->b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    .line 4393
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4394
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    if-eqz v0, :cond_0

    .line 5109
    invoke-virtual {v0, p2, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4395
    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/t;->j:Landroidx/appcompat/widget/t$e;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/t$e;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 5402
    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    .line 5403
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->d:Ljava/util/WeakHashMap;

    .line 5405
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    if-nez v0, :cond_3

    .line 5407
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    .line 5408
    iget-object v2, p0, Landroidx/appcompat/widget/t;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5410
    :cond_3
    invoke-virtual {v0, p2, v1}, Landroidx/b/h;->c(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v1

    .line 389
    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
