.class Landroidx/appcompat/view/g$b;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroid/content/res/ColorStateList;

.field private F:Landroid/graphics/PorterDuff$Mode;

.field a:Landroidx/core/h/b;

.field final synthetic b:Landroidx/appcompat/view/g;

.field private c:Landroid/view/Menu;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 349
    iput-object p1, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 338
    iput-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 350
    iput-object p2, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/g$b;->a()V

    .line 353
    return-void
.end method

.method private a(Ljava/lang/String;)C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 462
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v1, v1, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 553
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    const-string/jumbo v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 467
    iget-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 468
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 469
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroidx/appcompat/view/g$b;->t:I

    if-lt v0, v1, :cond_1

    move v0, v1

    .line 470
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 471
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 472
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    iget v0, p0, Landroidx/appcompat/view/g$b;->x:I

    if-ltz v0, :cond_0

    .line 475
    iget v0, p0, Landroidx/appcompat/view/g$b;->x:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 469
    goto :goto_0

    .line 483
    :cond_2
    new-instance v0, Landroidx/appcompat/view/g$a;

    iget-object v3, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    .line 484
    invoke-virtual {v3}, Landroidx/appcompat/view/g;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 487
    :cond_3
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/i;

    .line 488
    :cond_4
    iget v0, p0, Landroidx/appcompat/view/g$b;->t:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 489
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 490
    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/i;->a(Z)V

    .line 497
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 498
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    sget-object v2, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    iget-object v3, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v3, v3, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 500
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 503
    :goto_2
    iget v0, p0, Landroidx/appcompat/view/g$b;->y:I

    if-lez v0, :cond_6

    .line 504
    if-nez v1, :cond_b

    .line 505
    iget v0, p0, Landroidx/appcompat/view/g$b;->y:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 512
    :cond_6
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    if-eqz v0, :cond_7

    .line 513
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    invoke-static {p1, v0}, Landroidx/core/h/g;->a(Landroid/view/MenuItem;Landroidx/core/h/b;)Landroid/view/MenuItem;

    .line 516
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/h/g;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/h/g;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 518
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    iget v1, p0, Landroidx/appcompat/view/g$b;->q:I

    invoke-static {p1, v0, v1}, Landroidx/core/h/g;->b(Landroid/view/MenuItem;CI)V

    .line 520
    iget-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    iget v1, p0, Landroidx/appcompat/view/g$b;->s:I

    invoke-static {p1, v0, v1}, Landroidx/core/h/g;->a(Landroid/view/MenuItem;CI)V

    .line 522
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_8

    .line 523
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/h/g;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 525
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/h/g;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 528
    :cond_9
    return-void

    .line 491
    :cond_a
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 492
    check-cast v0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/j;->a(Z)V

    goto :goto_1

    .line 508
    :cond_b
    const-string/jumbo v0, "SupportMenuInflater"

    const-string/jumbo v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Landroidx/appcompat/view/g$b;->d:I

    .line 357
    iput v0, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 358
    iput v0, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 359
    iput v0, p0, Landroidx/appcompat/view/g$b;->g:I

    .line 360
    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->h:Z

    .line 361
    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->i:Z

    .line 362
    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/g$b;->d:I

    .line 371
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/g$b;->e:I

    .line 373
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/g$b;->f:I

    .line 374
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/g$b;->g:I

    .line 376
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->h:Z

    .line 377
    sget v1, Landroidx/appcompat/a$j;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/g$b;->i:Z

    .line 379
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 532
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->d:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    .line 533
    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/16 v8, 0x1000

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v0, v0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    sget-object v3, Landroidx/appcompat/a$j;->MenuItem:[I

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ap;

    move-result-object v3

    .line 390
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_id:I

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->k:I

    .line 391
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_menuCategory:I

    iget v4, p0, Landroidx/appcompat/view/g$b;->e:I

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    .line 392
    sget v4, Landroidx/appcompat/a$j;->MenuItem_android_orderInCategory:I

    iget v5, p0, Landroidx/appcompat/view/g$b;->f:I

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v4

    .line 393
    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/appcompat/view/g$b;->l:I

    .line 395
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_title:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    .line 396
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_titleCondensed:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->n:Ljava/lang/CharSequence;

    .line 397
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_icon:I

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->o:I

    .line 398
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_alphabeticShortcut:I

    .line 399
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->p:C

    .line 400
    sget v0, Landroidx/appcompat/a$j;->MenuItem_alphabeticModifiers:I

    .line 401
    invoke-virtual {v3, v0, v8}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->q:I

    .line 402
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_numericShortcut:I

    .line 403
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/g$b;->r:C

    .line 404
    sget v0, Landroidx/appcompat/a$j;->MenuItem_numericModifiers:I

    .line 405
    invoke-virtual {v3, v0, v8}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->s:I

    .line 406
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    .line 414
    :goto_1
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_checked:I

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->u:Z

    .line 415
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_visible:I

    iget-boolean v4, p0, Landroidx/appcompat/view/g$b;->h:Z

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->v:Z

    .line 416
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_enabled:I

    iget-boolean v4, p0, Landroidx/appcompat/view/g$b;->i:Z

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->w:Z

    .line 417
    sget v0, Landroidx/appcompat/a$j;->MenuItem_showAsAction:I

    invoke-virtual {v3, v0, v7}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->x:I

    .line 418
    sget v0, Landroidx/appcompat/a$j;->MenuItem_android_onClick:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->B:Ljava/lang/String;

    .line 419
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionLayout:I

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/g$b;->y:I

    .line 420
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionViewClass:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    .line 421
    sget v0, Landroidx/appcompat/a$j;->MenuItem_actionProviderClass:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->A:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->A:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 424
    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Landroidx/appcompat/view/g$b;->y:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/g$b;->z:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 425
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->A:Ljava/lang/String;

    sget-object v1, Landroidx/appcompat/view/g;->b:[Ljava/lang/Class;

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->b:Landroidx/appcompat/view/g;

    iget-object v4, v4, Landroidx/appcompat/view/g;->d:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v4}, Landroidx/appcompat/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/b;

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    .line 436
    :goto_3
    sget v0, Landroidx/appcompat/a$j;->MenuItem_contentDescription:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->C:Ljava/lang/CharSequence;

    .line 437
    sget v0, Landroidx/appcompat/a$j;->MenuItem_tooltipText:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->D:Ljava/lang/CharSequence;

    .line 438
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTintMode:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTintMode:I

    invoke-virtual {v3, v0, v7}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/y;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_4
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTint:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    sget v0, Landroidx/appcompat/a$j;->MenuItem_iconTint:I

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    .line 453
    :goto_5
    invoke-virtual {v3}, Landroidx/appcompat/widget/ap;->a()V

    .line 455
    iput-boolean v2, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 456
    return-void

    :cond_0
    move v0, v2

    .line 408
    goto/16 :goto_0

    .line 412
    :cond_1
    iget v0, p0, Landroidx/appcompat/view/g$b;->g:I

    iput v0, p0, Landroidx/appcompat/view/g$b;->t:I

    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 423
    goto :goto_2

    .line 429
    :cond_3
    if-eqz v1, :cond_4

    .line 430
    const-string/jumbo v0, "SupportMenuInflater"

    const-string/jumbo v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_4
    iput-object v6, p0, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    goto :goto_3

    .line 444
    :cond_5
    iput-object v6, p0, Landroidx/appcompat/view/g$b;->F:Landroid/graphics/PorterDuff$Mode;

    goto :goto_4

    .line 450
    :cond_6
    iput-object v6, p0, Landroidx/appcompat/view/g$b;->E:Landroid/content/res/ColorStateList;

    goto :goto_5
.end method

.method public c()Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    .line 537
    iget-object v0, p0, Landroidx/appcompat/view/g$b;->c:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/g$b;->d:I

    iget v2, p0, Landroidx/appcompat/view/g$b;->k:I

    iget v3, p0, Landroidx/appcompat/view/g$b;->l:I

    iget-object v4, p0, Landroidx/appcompat/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/view/g$b;->a(Landroid/view/MenuItem;)V

    .line 539
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Landroidx/appcompat/view/g$b;->j:Z

    return v0
.end method
