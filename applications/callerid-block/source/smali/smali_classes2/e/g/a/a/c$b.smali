.class public Le/g/a/a/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/animation/Interpolator;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/graphics/Paint$Cap;

.field private l:Landroid/graphics/Paint$Join;

.field private m:Z

.field private n:[Le/g/a/a/c$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Le/g/a/a/c$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/callerid/block/R$styleable;->LineMorphingDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xa

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3}, Le/g/a/a/c$b;->k(Landroid/content/Context;I)[Le/g/a/a/c$c;

    move-result-object p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->m([Le/g/a/a/c$c;)Le/g/a/a/c$b;

    :cond_0
    const/4 p3, 0x2

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->d(I)Le/g/a/a/c$b;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->f(I)Le/g/a/a/c$b;

    const/4 p3, 0x7

    iget v0, p0, Le/g/a/a/c$b;->b:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->h(I)Le/g/a/a/c$b;

    const/16 p3, 0x9

    iget v0, p0, Le/g/a/a/c$b;->c:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->j(I)Le/g/a/a/c$b;

    const/16 p3, 0x8

    iget v0, p0, Le/g/a/a/c$b;->d:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->i(I)Le/g/a/a/c$b;

    const/4 p3, 0x6

    iget v0, p0, Le/g/a/a/c$b;->e:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->g(I)Le/g/a/a/c$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0001

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/c$b;->a(I)Le/g/a/a/c$b;

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/g/a/a/c$b;->e(Landroid/view/animation/Interpolator;)Le/g/a/a/c$b;

    :cond_1
    const/16 v0, 0xe

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/c$b;->q(I)Le/g/a/a/c$b;

    const/16 p1, 0xc

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/c$b;->o(I)Le/g/a/a/c$b;

    const/16 p1, 0xb

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {p0, p1}, Le/g/a/a/c$b;->n(Landroid/graphics/Paint$Cap;)Le/g/a/a/c$b;

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :goto_1
    const/16 p1, 0xd

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_2
    invoke-virtual {p0, p1}, Le/g/a/a/c$b;->p(Landroid/graphics/Paint$Join;)Le/g/a/a/c$b;

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_5
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/a/c$b;->c(Z)Le/g/a/a/c$b;

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    if-ne p1, p3, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ld/h/k/f;->b(Ljava/util/Locale;)I

    move-result p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    :goto_4
    const/4 p4, 0x1

    :cond_7
    invoke-virtual {p0, p4}, Le/g/a/a/c$b;->l(Z)Le/g/a/a/c$b;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private k(Landroid/content/Context;I)[Le/g/a/a/c$c;
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-string v4, "state-list"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting menu, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_0

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-nez v10, :cond_15

    if-eq v3, v6, :cond_14

    const-string v14, "state"

    const-string v15, "links"

    const-string v1, "item"

    const-string v9, "points"

    const/16 v16, -0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_c

    const/4 v5, 0x4

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    goto/16 :goto_6

    :cond_3
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_5

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_b

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v13, Le/g/a/a/c$c;->b:[I

    const/4 v1, 0x0

    :goto_4
    iget-object v3, v13, Le/g/a/a/c$c;->b:[I

    array-length v5, v3

    if-ge v1, v5, :cond_d

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v13, Le/g/a/a/c$c;->a:[F

    const/4 v1, 0x0

    :goto_5
    iget-object v3, v13, Le/g/a/a/c$c;->a:[F

    array-length v5, v3

    if-ge v1, v5, :cond_d

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    if-eqz v11, :cond_e

    :cond_d
    :goto_6
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    goto :goto_a

    :cond_e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_7

    :sswitch_5
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_8

    :sswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_8

    :sswitch_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    goto :goto_8

    :sswitch_8
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v1, -0x1

    :goto_8
    if-eqz v1, :cond_13

    const/4 v5, 0x1

    if-eq v1, v5, :cond_12

    const/4 v9, 0x2

    if-eq v1, v9, :cond_11

    if-eq v1, v6, :cond_10

    move-object v12, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    const/4 v9, 0x2

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    new-instance v13, Le/g/a/a/c$c;

    invoke-direct {v13}, Le/g/a/a/c$c;-><init>()V

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    :goto_a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_15
    if-eqz v2, :cond_17

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catch_0
    nop

    goto :goto_c

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_16
    throw v0

    :catch_1
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_17

    :goto_d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    return-object v1

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Le/g/a/a/c$c;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/g/a/a/c$c;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a93a31d -> :sswitch_4
        -0x1054bfa6 -> :sswitch_3
        0x317b13 -> :sswitch_2
        0x6234fb9 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a93a31d -> :sswitch_8
        0x317b13 -> :sswitch_7
        0x6234fb9 -> :sswitch_6
        0x68ac491 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->f:I

    return-object p0
.end method

.method public b()Le/g/a/a/c;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Le/g/a/a/c$b;->k:Landroid/graphics/Paint$Cap;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v1, v0, Le/g/a/a/c$b;->k:Landroid/graphics/Paint$Cap;

    :cond_0
    iget-object v1, v0, Le/g/a/a/c$b;->l:Landroid/graphics/Paint$Join;

    if-nez v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v1, v0, Le/g/a/a/c$b;->l:Landroid/graphics/Paint$Join;

    :cond_1
    iget-object v1, v0, Le/g/a/a/c$b;->g:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, v0, Le/g/a/a/c$b;->g:Landroid/view/animation/Interpolator;

    :cond_2
    new-instance v1, Le/g/a/a/c;

    iget-object v3, v0, Le/g/a/a/c$b;->n:[Le/g/a/a/c$c;

    iget v4, v0, Le/g/a/a/c$b;->a:I

    iget v5, v0, Le/g/a/a/c$b;->b:I

    iget v6, v0, Le/g/a/a/c$b;->c:I

    iget v7, v0, Le/g/a/a/c$b;->d:I

    iget v8, v0, Le/g/a/a/c$b;->e:I

    iget v9, v0, Le/g/a/a/c$b;->f:I

    iget-object v10, v0, Le/g/a/a/c$b;->g:Landroid/view/animation/Interpolator;

    iget v11, v0, Le/g/a/a/c$b;->h:I

    iget v12, v0, Le/g/a/a/c$b;->i:I

    iget-object v13, v0, Le/g/a/a/c$b;->k:Landroid/graphics/Paint$Cap;

    iget-object v14, v0, Le/g/a/a/c$b;->l:Landroid/graphics/Paint$Join;

    iget-boolean v15, v0, Le/g/a/a/c$b;->j:Z

    iget-boolean v2, v0, Le/g/a/a/c$b;->m:Z

    const/16 v17, 0x0

    move/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Le/g/a/a/c;-><init>([Le/g/a/a/c$c;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZLe/g/a/a/c$a;)V

    return-object v1
.end method

.method public c(Z)Le/g/a/a/c$b;
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/c$b;->j:Z

    return-object p0
.end method

.method public d(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->a:I

    return-object p0
.end method

.method public e(Landroid/view/animation/Interpolator;)Le/g/a/a/c$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/c$b;->g:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public f(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->b:I

    iput p1, p0, Le/g/a/a/c$b;->c:I

    iput p1, p0, Le/g/a/a/c$b;->d:I

    iput p1, p0, Le/g/a/a/c$b;->e:I

    return-object p0
.end method

.method public g(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->e:I

    return-object p0
.end method

.method public h(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->b:I

    return-object p0
.end method

.method public i(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->d:I

    return-object p0
.end method

.method public j(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->c:I

    return-object p0
.end method

.method public l(Z)Le/g/a/a/c$b;
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/c$b;->m:Z

    return-object p0
.end method

.method public varargs m([Le/g/a/a/c$c;)Le/g/a/a/c$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/c$b;->n:[Le/g/a/a/c$c;

    return-object p0
.end method

.method public n(Landroid/graphics/Paint$Cap;)Le/g/a/a/c$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/c$b;->k:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public o(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->i:I

    return-object p0
.end method

.method public p(Landroid/graphics/Paint$Join;)Le/g/a/a/c$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/c$b;->l:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method public q(I)Le/g/a/a/c$b;
    .locals 0

    iput p1, p0, Le/g/a/a/c$b;->h:I

    return-object p0
.end method
