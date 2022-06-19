.class final Landroidx/appcompat/view/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroid/content/res/ColorStateList;

.field private F:Landroid/graphics/PorterDuff$Mode;

.field a:Z

.field b:Landroidx/core/view/b;

.field final synthetic c:Landroidx/appcompat/view/g;

.field private d:Landroid/view/Menu;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:I

.field private p:C

.field private q:I

.field private r:C

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/g;Landroid/view/Menu;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 338
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Landroidx/appcompat/view/g$b;->d:Landroid/view/Menu;

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/g$b;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v1, v1, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 552
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 554
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 7

    .line 467
    iget-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/g$b;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 472
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    iget v0, p0, Landroidx/appcompat/view/g$b;->x:I

    if-ltz v0, :cond_1

    .line 475
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 483
    new-instance v0, Landroidx/appcompat/view/g$a;

    iget-object v1, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    .line 2224
    iget-object v4, v1, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 2225
    iget-object v4, v1, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    .line 2227
    :cond_2
    iget-object v1, v1, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    .line 484
    iget-object v4, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/view/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 480
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_4
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/g$b;->t:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 488
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_5

    .line 489
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/i;->a(Z)V

    goto :goto_2

    .line 490
    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_7

    .line 491
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/j;

    .line 2387
    :try_start_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    .line 2388
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setExclusiveCheckable"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 2389
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    .line 2391
    :cond_6
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->c:Ljava/lang/reflect/Method;

    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->b:Landroidx/core/a/a/b;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    .line 2393
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 497
    sget-object v1, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    iget-object v2, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v2, v2, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 499
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 502
    :cond_8
    iget v0, p0, Landroidx/appcompat/view/g$b;->y:I

    if-lez v0, :cond_a

    if-nez v2, :cond_9

    .line 504
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_a
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/core/view/b;

    if-eqz v0, :cond_c

    .line 3207
    instance-of v1, p1, Landroidx/core/a/a/b;

    if-eqz v1, :cond_b

    .line 3208
    move-object v1, p1

    check-cast v1, Landroidx/core/a/a/b;

    invoke-interface {v1, v0}, Landroidx/core/a/a/b;->a(Landroidx/core/view/b;)Landroidx/core/a/a/b;

    goto :goto_4

    :cond_b
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 3211
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_c
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    .line 3322
    instance-of v1, p1, Landroidx/core/a/a/b;

    const/16 v2, 0x1a

    if-eqz v1, :cond_d

    .line 3323
    move-object v3, p1

    check-cast v3, Landroidx/core/a/a/b;

    invoke-interface {v3, v0}, Landroidx/core/a/a/b;->a(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    goto :goto_5

    .line 3324
    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_e

    .line 3325
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 516
    :cond_e
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 3352
    move-object v3, p1

    check-cast v3, Landroidx/core/a/a/b;

    invoke-interface {v3, v0}, Landroidx/core/a/a/b;->b(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    goto :goto_6

    .line 3353
    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_10

    .line 3354
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 517
    :cond_10
    :goto_6
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    iget v3, p0, Landroidx/appcompat/view/g$b;->q:I

    if-eqz v1, :cond_11

    .line 3464
    move-object v4, p1

    check-cast v4, Landroidx/core/a/a/b;

    invoke-interface {v4, v0, v3}, Landroidx/core/a/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_7

    .line 3465
    :cond_11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_12

    .line 3466
    invoke-interface {p1, v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 519
    :cond_12
    :goto_7
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    iget v3, p0, Landroidx/appcompat/view/g$b;->s:I

    if-eqz v1, :cond_13

    .line 4419
    move-object v4, p1

    check-cast v4, Landroidx/core/a/a/b;

    invoke-interface {v4, v0, v3}, Landroidx/core/a/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_8

    .line 4420
    :cond_13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_14

    .line 4421
    invoke-interface {p1, v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 521
    :cond_14
    :goto_8
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_16

    if-eqz v1, :cond_15

    .line 4535
    move-object v3, p1

    check-cast v3, Landroidx/core/a/a/b;

    invoke-interface {v3, v0}, Landroidx/core/a/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_9

    .line 4536
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_16

    .line 4537
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 524
    :cond_16
    :goto_9
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_18

    if-eqz v1, :cond_17

    .line 5504
    check-cast p1, Landroidx/core/a/a/b;

    invoke-interface {p1, v0}, Landroidx/core/a/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void

    .line 5505
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_18

    .line 5506
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 357
    iput v0, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 358
    iput v0, p0, Landroidx/appcompat/view/g$b;->g:I

    .line 359
    iput v0, p0, Landroidx/appcompat/view/g$b;->h:I

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->i:Z

    .line 361
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    return-void
.end method

.method public final a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 370
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 371
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 373
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->g:I

    .line 374
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->h:I

    .line 376
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->i:Z

    .line 377
    sget v0, Landroidx/appcompat/a$j;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 379
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->a:Z

    .line 531
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->d:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->e:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 6

    .line 386
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->MenuItem:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ab;

    move-result-object p1

    .line 390
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->k:I

    .line 391
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_menuCategory:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->f:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v0

    .line 392
    sget v2, Landroidx/appcompat/a$j;->MenuItem_android_orderInCategory:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->g:I

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 393
    iput v0, p0, Landroidx/appcompat/view/g$b;->l:I

    .line 395
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    .line 396
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 397
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 398
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_alphabeticShortcut:I

    .line 399
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    .line 400
    sget v0, Landroidx/appcompat/a$j;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    .line 401
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->q:I

    .line 402
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_numericShortcut:I

    .line 403
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    .line 404
    sget v0, Landroidx/appcompat/a$j;->MenuItem_numericModifiers:I

    .line 405
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->s:I

    .line 406
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    goto :goto_0

    .line 412
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/g$b;->h:I

    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    .line 414
    :goto_0
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    .line 415
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_visible:I

    iget-boolean v2, p0, Landroidx/appcompat/view/g$b;->i:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 416
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Landroidx/appcompat/view/g$b;->j:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 417
    sget v0, Landroidx/appcompat/a$j;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->x:I

    .line 418
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    .line 419
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->y:I

    .line 420
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    .line 421
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 424
    iget v5, p0, Landroidx/appcompat/view/g$b;->y:I

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 425
    sget-object v3, Landroidx/appcompat/view/g;->b:[Ljava/lang/Class;

    iget-object v5, p0, Landroidx/appcompat/view/g$b;->c:Landroidx/appcompat/view/g;

    iget-object v5, v5, Landroidx/appcompat/view/g;->d:[Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v5}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/b;

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/core/view/b;

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 430
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_3
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/core/view/b;

    .line 436
    :goto_2
    sget v0, Landroidx/appcompat/a$j;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    .line 437
    sget v0, Landroidx/appcompat/a$j;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    .line 438
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/p;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 444
    :cond_4
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_3
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 450
    :cond_5
    iput-object v4, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 1252
    :goto_4
    iget-object p1, p1, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 455
    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->a:Z

    return-void
.end method

.method public final c()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->a:Z

    .line 536
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->d:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->e:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method
