.class public Landroidx/appcompat/b/a/a;
.super Landroidx/appcompat/b/a/d;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/b/a/a$e;,
        Landroidx/appcompat/b/a/a$b;,
        Landroidx/appcompat/b/a/a$c;,
        Landroidx/appcompat/b/a/a$d;,
        Landroidx/appcompat/b/a/a$a;,
        Landroidx/appcompat/b/a/a$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroidx/appcompat/b/a/a$b;

.field private c:Landroidx/appcompat/b/a/a$f;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Landroidx/appcompat/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/b/a/a;-><init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V

    .line 112
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;)V

    .line 105
    iput v1, p0, Landroidx/appcompat/b/a/a;->d:I

    .line 107
    iput v1, p0, Landroidx/appcompat/b/a/a;->e:I

    .line 118
    new-instance v0, Landroidx/appcompat/b/a/a$b;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/b/a/a$b;-><init>(Landroidx/appcompat/b/a/a$b;Landroidx/appcompat/b/a/a;Landroid/content/res/Resources;)V

    .line 119
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->onStateChange([I)Z

    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->jumpToCurrentState()V

    .line 122
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/b/a/a;
    .locals 6

    .prologue
    .line 171
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": invalid animated-selector tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    new-instance v0, Landroidx/appcompat/b/a/a;

    invoke-direct {v0}, Landroidx/appcompat/b/a/a;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 177
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/b/a/a;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 178
    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    .line 451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 452
    iget v1, v0, Landroidx/appcompat/b/a/a$b;->f:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/b/a/a$b;->f:I

    .line 455
    :cond_0
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Landroidx/appcompat/b/a/a$b;->k:Z

    .line 456
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 455
    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/a$b;->a(Z)V

    .line 458
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Landroidx/appcompat/b/a/a$b;->n:Z

    .line 459
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 458
    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/a$b;->b(Z)V

    .line 461
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Landroidx/appcompat/b/a/a$b;->C:I

    .line 462
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/a$b;->c(I)V

    .line 464
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Landroidx/appcompat/b/a/a$b;->D:I

    .line 465
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 464
    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/a$b;->d(I)V

    .line 467
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Landroidx/appcompat/b/a/a$b;->z:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->setDither(Z)V

    .line 469
    return-void
.end method

.method private b(I)Z
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    .line 294
    if-eqz v1, :cond_3

    .line 295
    iget v0, p0, Landroidx/appcompat/b/a/a;->d:I

    if-ne p1, v0, :cond_0

    move v0, v3

    .line 350
    :goto_0
    return v0

    .line 298
    :cond_0
    iget v0, p0, Landroidx/appcompat/b/a/a;->e:I

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->d()V

    .line 301
    iget v0, p0, Landroidx/appcompat/b/a/a;->e:I

    iput v0, p0, Landroidx/appcompat/b/a/a;->d:I

    .line 302
    iput p1, p0, Landroidx/appcompat/b/a/a;->e:I

    move v0, v3

    .line 303
    goto :goto_0

    .line 306
    :cond_1
    iget v0, p0, Landroidx/appcompat/b/a/a;->d:I

    .line 308
    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->b()V

    move v1, v0

    .line 313
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    .line 314
    iput v4, p0, Landroidx/appcompat/b/a/a;->e:I

    .line 315
    iput v4, p0, Landroidx/appcompat/b/a/a;->d:I

    .line 316
    iget-object v4, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    .line 317
    invoke-virtual {v4, v1}, Landroidx/appcompat/b/a/a$b;->a(I)I

    move-result v5

    .line 318
    invoke-virtual {v4, p1}, Landroidx/appcompat/b/a/a$b;->a(I)I

    move-result v6

    .line 319
    if-eqz v6, :cond_2

    if-nez v5, :cond_4

    :cond_2
    move v0, v2

    .line 321
    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->d()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/b/a/a$b;->a(II)I

    move-result v0

    .line 324
    if-gez v0, :cond_5

    move v0, v2

    .line 326
    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/b/a/a$b;->c(II)Z

    move-result v7

    .line 330
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(I)Z

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    instance-of v8, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_6

    .line 334
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/b/a/a$b;->b(II)Z

    move-result v4

    .line 335
    new-instance v2, Landroidx/appcompat/b/a/a$d;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2, v0, v4, v7}, Landroidx/appcompat/b/a/a$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    move-object v0, v2

    .line 346
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/b/a/a$f;->a()V

    .line 347
    iput-object v0, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    .line 348
    iput v1, p0, Landroidx/appcompat/b/a/a;->e:I

    .line 349
    iput p1, p0, Landroidx/appcompat/b/a/a;->d:I

    move v0, v3

    .line 350
    goto :goto_0

    .line 337
    :cond_6
    instance-of v4, v0, Landroidx/k/a/a/c;

    if-eqz v4, :cond_7

    .line 339
    new-instance v2, Landroidx/appcompat/b/a/a$c;

    check-cast v0, Landroidx/k/a/a/c;

    invoke-direct {v2, v0}, Landroidx/appcompat/b/a/a$c;-><init>(Landroidx/k/a/a/c;)V

    move-object v0, v2

    goto :goto_2

    .line 340
    :cond_7
    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_8

    .line 341
    new-instance v2, Landroidx/appcompat/b/a/a$a;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-direct {v2, v0}, Landroidx/appcompat/b/a/a$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    move-object v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    .line 344
    goto/16 :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 483
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 485
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 486
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v0, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 488
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 491
    if-gt v2, v0, :cond_0

    .line 494
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/b/a/a;->e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 496
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/b/a/a;->d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 500
    :cond_3
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 510
    sget-object v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 512
    sget v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 514
    sget v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 516
    const/4 v0, 0x0

    .line 517
    sget v4, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 519
    if-lez v4, :cond_0

    .line 520
    invoke-static {}, Landroidx/appcompat/widget/af;->a()Landroidx/appcompat/widget/af;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 522
    :cond_0
    sget v4, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 524
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 527
    if-nez v0, :cond_3

    .line 529
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 532
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 533
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "animated-vector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/k/a/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/k/a/a/c;

    move-result-object v0

    .line 546
    :cond_3
    :goto_0
    if-nez v0, :cond_6

    .line 547
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 541
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_5
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_6
    if-eq v2, v6, :cond_7

    if-ne v3, v6, :cond_8

    .line 551
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/appcompat/b/a/a$b;->a(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v0

    return v0
.end method

.method private e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 5

    .prologue
    .line 564
    sget-object v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 566
    sget v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 568
    const/4 v0, 0x0

    .line 569
    sget v3, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v4, -0x1

    .line 570
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 571
    if-lez v3, :cond_0

    .line 572
    invoke-static {}, Landroidx/appcompat/widget/af;->a()Landroidx/appcompat/widget/af;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroidx/appcompat/widget/af;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 574
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    invoke-virtual {p0, p4}, Landroidx/appcompat/b/a/a;->a(Landroid/util/AttributeSet;)[I

    move-result-object v1

    .line 578
    if-nez v0, :cond_3

    .line 580
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 583
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 584
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "vector"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    invoke-static {p2, p3, p4, p5}, Landroidx/k/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/k/a/a/i;

    move-result-object v0

    .line 596
    :cond_3
    :goto_0
    if-nez v0, :cond_6

    .line 597
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_5

    .line 591
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_5
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_6
    iget-object v3, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v3, v1, v0, v2}, Landroidx/appcompat/b/a/a$b;->a([ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->onStateChange([I)Z

    .line 473
    return-void
.end method


# virtual methods
.method a()Landroidx/appcompat/b/a/a$b;
    .locals 3

    .prologue
    .line 614
    new-instance v0, Landroidx/appcompat/b/a/a$b;

    iget-object v1, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/b/a/a$b;-><init>(Landroidx/appcompat/b/a/a$b;Landroidx/appcompat/b/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method a(Landroidx/appcompat/b/a/b$b;)V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 719
    instance-of v0, p1, Landroidx/appcompat/b/a/a$b;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Landroidx/appcompat/b/a/a$b;

    iput-object p1, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    .line 722
    :cond_0
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method synthetic b()Landroidx/appcompat/b/a/d$a;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->a()Landroidx/appcompat/b/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    sget-object v0, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    sget v1, Landroidx/appcompat/c/a$b;->AnimatedStateListDrawableCompat_android_visible:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/b/a/a;->setVisible(ZZ)Z

    .line 205
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a;->a(Landroid/content/res/TypedArray;)V

    .line 206
    invoke-virtual {p0, p2}, Landroidx/appcompat/b/a/a;->a(Landroid/content/res/Resources;)V

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/b/a/a;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 209
    invoke-direct {p0}, Landroidx/appcompat/b/a/a;->e()V

    .line 210
    return-void
.end method

.method synthetic c()Landroidx/appcompat/b/a/b$b;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->a()Landroidx/appcompat/b/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 264
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->jumpToCurrentState()V

    .line 265
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/a$f;->b()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    .line 268
    iget v0, p0, Landroidx/appcompat/b/a/a;->d:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(I)Z

    .line 269
    iput v1, p0, Landroidx/appcompat/b/a/a;->d:I

    .line 270
    iput v1, p0, Landroidx/appcompat/b/a/a;->e:I

    .line 272
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Landroidx/appcompat/b/a/a;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/b/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 606
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/a$b;->a()V

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/b/a/a;->f:Z

    .line 609
    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->b:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/a$b;->a([I)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->d()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 280
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 284
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 288
    :cond_1
    return v0

    .line 280
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/b/a/d;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/b/a/d;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->setVisible(ZZ)Z

    move-result v0

    .line 215
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 216
    :cond_0
    if-eqz p1, :cond_2

    .line 217
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->c:Landroidx/appcompat/b/a/a$f;

    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->a()V

    .line 223
    :cond_1
    :goto_0
    return v0

    .line 220
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
