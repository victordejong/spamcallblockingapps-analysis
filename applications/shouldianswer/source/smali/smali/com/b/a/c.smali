.class public Lcom/b/a/c;
.super Landroidx/appcompat/widget/j;
.source "MaterialEditText.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:F

.field private J:F

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Ljava/lang/String;

.field private N:F

.field private O:Z

.field private P:F

.field private Q:Landroid/graphics/Typeface;

.field private R:Landroid/graphics/Typeface;

.field private S:Ljava/lang/CharSequence;

.field private T:Z

.field private U:I

.field private V:Z

.field private W:Z

.field a:Landroid/graphics/Paint;

.field private aa:Z

.field private ab:Z

.field private ac:[Landroid/graphics/Bitmap;

.field private ad:[Landroid/graphics/Bitmap;

.field private ae:[Landroid/graphics/Bitmap;

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:Z

.field private an:Z

.field private ao:Landroid/content/res/ColorStateList;

.field private ap:Landroid/content/res/ColorStateList;

.field private aq:Lcom/nineoldandroids/a/b;

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private as:Lcom/b/a/a/a;

.field b:Landroid/text/TextPaint;

.field c:Landroid/text/StaticLayout;

.field d:Lcom/nineoldandroids/a/h;

.field e:Lcom/nineoldandroids/a/h;

.field f:Lcom/nineoldandroids/a/h;

.field g:Landroid/view/View$OnFocusChangeListener;

.field h:Landroid/view/View$OnFocusChangeListener;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 319
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 209
    iput v0, p0, Lcom/b/a/c;->L:I

    .line 306
    new-instance v0, Lcom/nineoldandroids/a/b;

    invoke-direct {v0}, Lcom/nineoldandroids/a/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/c;->aq:Lcom/nineoldandroids/a/b;

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    .line 308
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/b/a/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 324
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 209
    iput v0, p0, Lcom/b/a/c;->L:I

    .line 306
    new-instance v0, Lcom/nineoldandroids/a/b;

    invoke-direct {v0}, Lcom/nineoldandroids/a/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/c;->aq:Lcom/nineoldandroids/a/b;

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    .line 308
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/b/a/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 330
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 209
    iput p3, p0, Lcom/b/a/c;->L:I

    .line 306
    new-instance p3, Lcom/nineoldandroids/a/b;

    invoke-direct {p3}, Lcom/nineoldandroids/a/b;-><init>()V

    iput-object p3, p0, Lcom/b/a/c;->aq:Lcom/nineoldandroids/a/b;

    .line 307
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    .line 308
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/b/a/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/b/a/c;->as:Lcom/b/a/a/a;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1

    .line 1521
    :cond_0
    invoke-virtual {v0, p1}, Lcom/b/a/a/a;->a(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/b/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private a(F)Lcom/nineoldandroids/a/h;
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/b/a/c;->f:Lcom/nineoldandroids/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [F

    aput p1, v0, v1

    const-string p1, "currentBottomLines"

    .line 1264
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/a/h;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->f:Lcom/nineoldandroids/a/h;

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {v0}, Lcom/nineoldandroids/a/h;->b()V

    .line 1267
    iget-object v0, p0, Lcom/b/a/c;->f:Lcom/nineoldandroids/a/h;

    new-array v2, v2, [F

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/a/h;->a([F)V

    .line 1269
    :goto_0
    iget-object p1, p0, Lcom/b/a/c;->f:Lcom/nineoldandroids/a/h;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v0, 0x20

    .line 335
    invoke-direct {p0, v0}, Lcom/b/a/c;->b(I)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->ai:I

    const/16 v1, 0x30

    .line 336
    invoke-direct {p0, v1}, Lcom/b/a/c;->b(I)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->aj:I

    .line 337
    invoke-direct {p0, v0}, Lcom/b/a/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->ak:I

    .line 339
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/b/a/d$a;->inner_components_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->q:I

    .line 340
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/b/a/d$a;->bottom_ellipsis_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->F:I

    .line 345
    sget-object v0, Lcom/b/a/d$c;->MaterialEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    .line 347
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->ap:Landroid/content/res/ColorStateList;

    .line 348
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_baseColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->t:I

    .line 352
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    .line 354
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 356
    iget v1, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 358
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SDK_INT less than LOLLIPOP"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "colorPrimary"

    const-string v5, "attr"

    invoke-virtual {p0}, Lcom/b/a/c;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 365
    iget v1, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 367
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "colorPrimary not found"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    :catch_1
    iget v1, p0, Lcom/b/a/c;->t:I

    .line 374
    :goto_0
    sget v3, Lcom/b/a/d$c;->MaterialEditText_met_primaryColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->y:I

    .line 375
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->setFloatingLabelInternal(I)V

    .line 376
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_errorColor:I

    const-string v4, "#e7492E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->z:I

    .line 377
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_minCharacters:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->A:I

    .line 378
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_maxCharacters:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->B:I

    .line 379
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_singleLineEllipsis:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->C:Z

    .line 380
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_helperText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    .line 381
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_helperTextColor:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->L:I

    .line 382
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_minBottomTextLines:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->H:I

    .line 383
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_accentTypeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/b/a/c;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 385
    invoke-direct {p0, v1}, Lcom/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->Q:Landroid/graphics/Typeface;

    .line 386
    iget-object v1, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/b/a/c;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 388
    :cond_2
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/b/a/c;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 390
    invoke-direct {p0, v1}, Lcom/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->R:Landroid/graphics/Typeface;

    .line 391
    iget-object v1, p0, Lcom/b/a/c;->R:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/b/a/c;->setTypeface(Landroid/graphics/Typeface;)V

    .line 393
    :cond_3
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    .line 394
    iget-object v1, p0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/b/a/c;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    .line 397
    :cond_4
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelPadding:I

    iget v5, p0, Lcom/b/a/c;->q:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->p:I

    .line 398
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelTextSize:I

    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/b/a/d$a;->floating_label_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->m:I

    .line 399
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->n:I

    .line 400
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelAnimating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->aa:Z

    .line 401
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_bottomTextSize:I

    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/b/a/d$a;->bottom_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->o:I

    .line 402
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_hideUnderline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->T:Z

    .line 403
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_underlineColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->U:I

    .line 404
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_autoValidate:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->V:Z

    .line 405
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_iconLeft:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(I)[Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    .line 406
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_iconRight:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(I)[Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    .line 407
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_clearButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->ag:Z

    .line 408
    sget v1, Lcom/b/a/d$b;->met_ic_clear:I

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(I)[Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c;->ae:[Landroid/graphics/Bitmap;

    .line 409
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_iconPadding:I

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/b/a/c;->b(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/b/a/c;->al:I

    .line 410
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_floatingLabelAlwaysShown:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->D:Z

    .line 411
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_helperTextAlwaysShown:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->E:Z

    .line 412
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_validateOnFocusLost:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->af:Z

    .line 413
    sget v1, Lcom/b/a/d$c;->MaterialEditText_met_checkCharactersCountAtBeginning:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/c;->ab:Z

    .line 414
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 416
    fill-array-data v0, :array_0

    .line 423
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 424
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 425
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->w:I

    const/4 v0, 0x2

    .line 426
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->u:I

    const/4 v0, 0x3

    .line 427
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->x:I

    const/4 v0, 0x4

    .line 428
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/b/a/c;->v:I

    .line 429
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    if-lt p1, v4, :cond_5

    .line 432
    invoke-virtual {p0, p2}, Lcom/b/a/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 434
    :cond_5
    invoke-virtual {p0, p2}, Lcom/b/a/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    :goto_1
    iget-boolean p1, p0, Lcom/b/a/c;->C:Z

    if-eqz p1, :cond_6

    .line 437
    invoke-virtual {p0}, Lcom/b/a/c;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 438
    invoke-virtual {p0}, Lcom/b/a/c;->setSingleLine()V

    .line 439
    invoke-virtual {p0, p1}, Lcom/b/a/c;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 441
    :cond_6
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    .line 442
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 443
    invoke-direct {p0}, Lcom/b/a/c;->d()V

    .line 444
    invoke-direct {p0}, Lcom/b/a/c;->j()V

    .line 445
    invoke-direct {p0}, Lcom/b/a/c;->e()V

    .line 446
    invoke-direct {p0}, Lcom/b/a/c;->o()V

    return-void

    :array_0
    .array-data 4
        0x10100d5
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method static synthetic a(Lcom/b/a/c;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/b/a/c;->o()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1507
    invoke-virtual {p0}, Lcom/b/a/c;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/b/a/c;->aj:I

    iget v4, p0, Lcom/b/a/c;->al:I

    add-int/2addr v2, v4

    :goto_0
    add-int/2addr v1, v2

    .line 1508
    invoke-virtual {p0}, Lcom/b/a/c;->getScrollX()I

    move-result v2

    iget-object v4, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/b/a/c;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/c;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/b/a/c;->aj:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/b/a/c;->al:I

    sub-int/2addr v4, v5

    :goto_1
    add-int/2addr v2, v4

    .line 1510
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1513
    :cond_2
    iget v1, p0, Lcom/b/a/c;->aj:I

    sub-int v1, v2, v1

    .line 1515
    :goto_2
    invoke-virtual {p0}, Lcom/b/a/c;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/c;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/b/a/c;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/b/a/c;->q:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/b/a/c;->ak:I

    sub-int/2addr v2, v4

    int-to-float v5, v1

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_3

    .line 1516
    iget v5, p0, Lcom/b/a/c;->aj:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    int-to-float v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    add-int/2addr v2, v4

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method static synthetic a(Lcom/b/a/c;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/b/a/c;->O:Z

    return p1
.end method

.method private a(I)[Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 534
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 535
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 537
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 538
    iget v3, p0, Lcom/b/a/c;->ai:I

    if-le v2, v3, :cond_1

    div-int v1, v2, v3

    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 539
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 540
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 558
    invoke-direct {p0, p1}, Lcom/b/a/c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 559
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 560
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 561
    iget v3, p0, Lcom/b/a/c;->t:I

    const v4, 0xffffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/b/a/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x1000000

    goto :goto_0

    :cond_1
    const/high16 v3, -0x76000000

    :goto_0
    or-int/2addr v3, v5

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 562
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 563
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 564
    iget v3, p0, Lcom/b/a/c;->y:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 565
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 566
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 567
    iget v3, p0, Lcom/b/a/c;->t:I

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/b/a/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x42000000    # 32.0f

    :goto_1
    or-int/2addr v3, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 568
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 569
    new-instance p1, Landroid/graphics/Canvas;

    aget-object v1, v0, v1

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 570
    iget v1, p0, Lcom/b/a/c;->z:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 548
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 549
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 550
    iget p1, p0, Lcom/b/a/c;->ai:I

    invoke-static {v0, p1, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(I)I
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/b/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/b/a/b;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 576
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 577
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 578
    iget v3, p0, Lcom/b/a/c;->ai:I

    if-ne v2, v3, :cond_0

    return-object p1

    :cond_0
    if-le v2, v3, :cond_2

    if-le v0, v3, :cond_1

    int-to-float v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    move v4, v3

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_1
    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    :goto_0
    const/4 v1, 0x0

    .line 590
    invoke-static {p1, v0, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static synthetic b(Lcom/b/a/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/b/a/c;->V:Z

    return p0
.end method

.method static synthetic c(Lcom/b/a/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/b/a/c;->r:Z

    return p0
.end method

.method private d()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0, v1}, Lcom/b/a/c;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-direct {p0}, Lcom/b/a/c;->l()V

    .line 454
    invoke-virtual {p0, v0}, Lcom/b/a/c;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/c;->setSelection(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    iput v0, p0, Lcom/b/a/c;->N:F

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/b/a/c;->O:Z

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/b/a/c;->l()V

    .line 461
    :goto_0
    invoke-direct {p0}, Lcom/b/a/c;->k()V

    return-void
.end method

.method static synthetic d(Lcom/b/a/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/b/a/c;->O:Z

    return p0
.end method

.method static synthetic e(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/b/a/c;->getLabelAnimator()Lcom/nineoldandroids/a/h;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 465
    new-instance v0, Lcom/b/a/c$1;

    invoke-direct {v0, p0}, Lcom/b/a/c$1;-><init>(Lcom/b/a/c;)V

    invoke-virtual {p0, v0}, Lcom/b/a/c;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 736
    iget-boolean v0, p0, Lcom/b/a/c;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/c;->m:I

    iget v1, p0, Lcom/b/a/c;->p:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/b/a/c;->p:I

    :goto_0
    iput v0, p0, Lcom/b/a/c;->i:I

    .line 737
    iget-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/b/a/c;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 738
    iget-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 739
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/b/a/c;->I:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-boolean v1, p0, Lcom/b/a/c;->T:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/b/a/c;->q:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/b/a/c;->q:I

    mul-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/c;->j:I

    .line 740
    iget-object v0, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/b/a/c;->aj:I

    iget v2, p0, Lcom/b/a/c;->al:I

    add-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/b/a/c;->k:I

    .line 741
    iget-object v0, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/b/a/c;->aj:I

    iget v1, p0, Lcom/b/a/c;->al:I

    add-int/2addr v1, v0

    :goto_3
    iput v1, p0, Lcom/b/a/c;->l:I

    .line 742
    invoke-direct {p0}, Lcom/b/a/c;->h()V

    return-void
.end method

.method static synthetic f(Lcom/b/a/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/b/a/c;->s:Z

    return p0
.end method

.method static synthetic g(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/b/a/c;->getLabelFocusAnimator()Lcom/nineoldandroids/a/h;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 749
    iget v0, p0, Lcom/b/a/c;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/b/a/c;->B:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/c;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 750
    :goto_1
    iget v3, p0, Lcom/b/a/c;->H:I

    if-lez v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    iput v1, p0, Lcom/b/a/c;->G:I

    int-to-float v0, v1

    iput v0, p0, Lcom/b/a/c;->I:F

    return-void
.end method

.method private getBottomEllipsisWidth()I
    .locals 2

    .line 1427
    iget-boolean v0, p0, Lcom/b/a/c;->C:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/c;->F:I

    mul-int/lit8 v0, v0, 0x5

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/b/a/c;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBottomTextLeftOffset()I
    .locals 1

    .line 1415
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c;->getCharactersCounterWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c;->getBottomEllipsisWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getBottomTextRightOffset()I
    .locals 1

    .line 1419
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c;->getBottomEllipsisWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c;->getCharactersCounterWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getButtonsCount()I
    .locals 1

    .line 788
    invoke-virtual {p0}, Lcom/b/a/c;->a()Z

    move-result v0

    return v0
.end method

.method private getCharactersCounterText()Ljava/lang/String;
    .locals 4

    .line 1450
    iget v0, p0, Lcom/b/a/c;->A:I

    const-string v1, " / "

    if-gtz v0, :cond_1

    .line 1451
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/b/a/c;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/c;->B:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1452
    :cond_1
    iget v0, p0, Lcom/b/a/c;->B:I

    if-gtz v0, :cond_3

    .line 1453
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    const-string v2, "+"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/b/a/c;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/c;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1455
    :cond_3
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    const-string v2, "-"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/b/a/c;->B:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/b/a/c;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/c;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/c;->B:I

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private getCharactersCounterWidth()I
    .locals 2

    .line 1423
    invoke-direct {p0}, Lcom/b/a/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/b/a/c;->getCharactersCounterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLabelAnimator()Lcom/nineoldandroids/a/h;
    .locals 3

    .line 1248
    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/nineoldandroids/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1249
    fill-array-data v0, :array_0

    const-string v1, "floatingLabelFraction"

    invoke-static {p0, v1, v0}, Lcom/nineoldandroids/a/h;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c;->d:Lcom/nineoldandroids/a/h;

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/nineoldandroids/a/h;

    iget-boolean v1, p0, Lcom/b/a/c;->aa:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/a/h;->a(J)Lcom/nineoldandroids/a/h;

    .line 1252
    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/nineoldandroids/a/h;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLabelFocusAnimator()Lcom/nineoldandroids/a/h;
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/b/a/c;->e:Lcom/nineoldandroids/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1257
    fill-array-data v0, :array_0

    const-string v1, "focusFraction"

    invoke-static {p0, v1, v0}, Lcom/nineoldandroids/a/h;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c;->e:Lcom/nineoldandroids/a/h;

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/b/a/c;->e:Lcom/nineoldandroids/a/h;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private h()V
    .locals 6

    .line 778
    iget v0, p0, Lcom/b/a/c;->aj:I

    invoke-direct {p0}, Lcom/b/a/c;->getButtonsCount()I

    move-result v1

    mul-int/2addr v0, v1

    .line 779
    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    move v2, v0

    move v0, v5

    .line 784
    :goto_0
    iget v1, p0, Lcom/b/a/c;->w:I

    iget v3, p0, Lcom/b/a/c;->k:I

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, Lcom/b/a/c;->u:I

    iget v3, p0, Lcom/b/a/c;->i:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/b/a/c;->x:I

    iget v4, p0, Lcom/b/a/c;->l:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v2, p0, Lcom/b/a/c;->v:I

    iget v4, p0, Lcom/b/a/c;->j:I

    add-int/2addr v2, v4

    invoke-super {p0, v1, v0, v3, v2}, Landroidx/appcompat/widget/j;->setPadding(IIII)V

    return-void
.end method

.method static synthetic h(Lcom/b/a/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/b/a/c;->af:Z

    return p0
.end method

.method private i()Z
    .locals 9

    .line 812
    invoke-virtual {p0}, Lcom/b/a/c;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/b/a/c;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 817
    iget-object v0, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 824
    :cond_1
    iget v0, p0, Lcom/b/a/c;->G:I

    goto :goto_4

    .line 818
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/c;->getGravity()I

    move-result v0

    const/4 v1, 0x5

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/b/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/c;->getGravity()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 818
    :cond_5
    :goto_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v5, v0

    .line 821
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    :goto_3
    move-object v2, v1

    iget-object v3, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/b/a/c;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/b/a/c;->getBottomTextLeftOffset()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-direct {p0}, Lcom/b/a/c;->getBottomTextRightOffset()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/b/a/c;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/b/a/c;->getPaddingRight()I

    move-result v4

    sub-int v4, v1, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/b/a/c;->c:Landroid/text/StaticLayout;

    .line 822
    iget-object v0, p0, Lcom/b/a/c;->c:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/b/a/c;->H:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 826
    :goto_4
    iget v1, p0, Lcom/b/a/c;->J:F

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 827
    invoke-direct {p0, v0}, Lcom/b/a/c;->a(F)Lcom/nineoldandroids/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/a/h;->a()V

    .line 829
    :cond_7
    iput v0, p0, Lcom/b/a/c;->J:F

    const/4 v0, 0x1

    return v0
.end method

.method private j()V
    .locals 1

    .line 863
    new-instance v0, Lcom/b/a/c$2;

    invoke-direct {v0, p0}, Lcom/b/a/c$2;-><init>(Lcom/b/a/c;)V

    invoke-virtual {p0, v0}, Lcom/b/a/c;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 888
    new-instance v0, Lcom/b/a/c$3;

    invoke-direct {v0, p0}, Lcom/b/a/c$3;-><init>(Lcom/b/a/c;)V

    iput-object v0, p0, Lcom/b/a/c;->g:Landroid/view/View$OnFocusChangeListener;

    .line 906
    iget-object v0, p0, Lcom/b/a/c;->g:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/j;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private k()V
    .locals 9

    .line 949
    iget-object v0, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009e

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    sget-object v4, Lcom/b/a/c;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/b/a/c;->t:I

    const v5, 0xffffff

    and-int v7, v4, v5

    const/high16 v8, -0x21000000

    or-int/2addr v7, v8

    aput v7, v1, v6

    and-int/2addr v4, v5

    const/high16 v5, 0x44000000    # 512.0f

    or-int/2addr v4, v5

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    .line 951
    iget-object v0, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/b/a/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p0, v0}, Lcom/b/a/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/b/a/c;->ap:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 975
    iget v0, p0, Lcom/b/a/c;->t:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x44000000    # 512.0f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/c;->setHintTextColor(I)V

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0, v0}, Lcom/b/a/c;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private m()Z
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n()Z
    .locals 3

    .line 1407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    .line 1410
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1411
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private o()V
    .locals 4

    .line 1431
    iget-boolean v0, p0, Lcom/b/a/c;->ah:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c;->ab:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1432
    :cond_1
    iput-boolean v1, p0, Lcom/b/a/c;->W:Z

    goto :goto_2

    .line 1434
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 1435
    :cond_3
    invoke-direct {p0, v0}, Lcom/b/a/c;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1436
    :goto_0
    iget v3, p0, Lcom/b/a/c;->A:I

    if-lt v0, v3, :cond_4

    iget v3, p0, Lcom/b/a/c;->B:I

    if-lez v3, :cond_5

    if-gt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/b/a/c;->W:Z

    :goto_2
    return-void
.end method

.method private p()Z
    .locals 1

    .line 1445
    iget v0, p0, Lcom/b/a/c;->A:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/b/a/c;->B:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setFloatingLabelInternal(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 992
    iput-boolean v0, p0, Lcom/b/a/c;->r:Z

    .line 993
    iput-boolean v0, p0, Lcom/b/a/c;->s:Z

    goto :goto_0

    .line 988
    :cond_0
    iput-boolean v1, p0, Lcom/b/a/c;->r:Z

    .line 989
    iput-boolean v1, p0, Lcom/b/a/c;->s:Z

    goto :goto_0

    .line 984
    :cond_1
    iput-boolean v1, p0, Lcom/b/a/c;->r:Z

    .line 985
    iput-boolean v0, p0, Lcom/b/a/c;->s:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/b;)Lcom/b/a/c;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/b/a/c;->ag:Z

    return v0
.end method

.method public b()Z
    .locals 7

    .line 1179
    iget-object v0, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1184
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1187
    :goto_0
    iget-object v4, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/b/a/a/b;

    if-eqz v5, :cond_3

    .line 1189
    invoke-virtual {v6, v0, v2}, Lcom/b/a/a/b;->a(Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-nez v5, :cond_2

    .line 1191
    invoke-virtual {v6}, Lcom/b/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/c;->setError(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v5, :cond_5

    const/4 v0, 0x0

    .line 1196
    invoke-virtual {p0, v0}, Lcom/b/a/c;->setError(Ljava/lang/CharSequence;)V

    .line 1199
    :cond_5
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return v5

    :cond_6
    :goto_2
    return v1
.end method

.method public c()Z
    .locals 1

    .line 1441
    iget-boolean v0, p0, Lcom/b/a/c;->W:Z

    return v0
.end method

.method public getAccentTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/b/a/c;->Q:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getBottomTextSize()I
    .locals 1

    .line 723
    iget v0, p0, Lcom/b/a/c;->o:I

    return v0
.end method

.method public getCurrentBottomLines()F
    .locals 1

    .line 615
    iget v0, p0, Lcom/b/a/c;->I:F

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 1076
    iget v0, p0, Lcom/b/a/c;->z:I

    return v0
.end method

.method public getFloatingLabelFraction()F
    .locals 1

    .line 597
    iget v0, p0, Lcom/b/a/c;->N:F

    return v0
.end method

.method public getFloatingLabelPadding()I
    .locals 1

    .line 1004
    iget v0, p0, Lcom/b/a/c;->p:I

    return v0
.end method

.method public getFloatingLabelText()Ljava/lang/CharSequence;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFloatingLabelTextColor()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/b/a/c;->n:I

    return v0
.end method

.method public getFloatingLabelTextSize()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/b/a/c;->m:I

    return v0
.end method

.method public getFocusFraction()F
    .locals 1

    .line 606
    iget v0, p0, Lcom/b/a/c;->P:F

    return v0
.end method

.method public getHelperText()Ljava/lang/String;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getHelperTextColor()I
    .locals 1

    .line 1096
    iget v0, p0, Lcom/b/a/c;->L:I

    return v0
.end method

.method public getInnerPaddingBottom()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/b/a/c;->v:I

    return v0
.end method

.method public getInnerPaddingLeft()I
    .locals 1

    .line 851
    iget v0, p0, Lcom/b/a/c;->w:I

    return v0
.end method

.method public getInnerPaddingRight()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/b/a/c;->x:I

    return v0
.end method

.method public getInnerPaddingTop()I
    .locals 1

    .line 837
    iget v0, p0, Lcom/b/a/c;->u:I

    return v0
.end method

.method public getMaxCharacters()I
    .locals 1

    .line 1032
    iget v0, p0, Lcom/b/a/c;->B:I

    return v0
.end method

.method public getMinBottomTextLines()I
    .locals 1

    .line 1054
    iget v0, p0, Lcom/b/a/c;->H:I

    return v0
.end method

.method public getMinCharacters()I
    .locals 1

    .line 1043
    iget v0, p0, Lcom/b/a/c;->A:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 676
    iget v0, p0, Lcom/b/a/c;->U:I

    return v0
.end method

.method public getValidators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Lcom/b/a/c;->ar:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 793
    invoke-super {p0}, Landroidx/appcompat/widget/j;->onAttachedToWindow()V

    .line 794
    iget-boolean v0, p0, Lcom/b/a/c;->ah:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Lcom/b/a/c;->ah:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getScrollX()I

    move-result v1

    iget-object v2, v0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/b/a/c;->aj:I

    iget v4, v0, Lcom/b/a/c;->al:I

    add-int/2addr v2, v4

    :goto_0
    add-int v8, v1, v2

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getScrollX()I

    move-result v1

    iget-object v2, v0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getWidth()I

    move-result v2

    iget v4, v0, Lcom/b/a/c;->aj:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/b/a/c;->al:I

    sub-int/2addr v2, v4

    :goto_1
    add-int v9, v1, v2

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1279
    iget-object v2, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1280
    iget-object v2, v0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v2, :cond_5

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->m()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v12

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v11

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    aget-object v2, v2, v5

    .line 1282
    iget v5, v0, Lcom/b/a/c;->al:I

    sub-int v5, v8, v5

    iget v6, v0, Lcom/b/a/c;->aj:I

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v6, v13

    div-int/2addr v6, v12

    add-int/2addr v5, v6

    .line 1283
    iget v6, v0, Lcom/b/a/c;->q:I

    add-int/2addr v6, v1

    iget v13, v0, Lcom/b/a/c;->ak:I

    sub-int/2addr v6, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v12

    add-int/2addr v6, v13

    int-to-float v5, v5

    int-to-float v6, v6

    .line 1284
    iget-object v13, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1286
    :cond_5
    iget-object v2, v0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->m()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x3

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v12

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v11

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    aget-object v2, v2, v5

    .line 1288
    iget v5, v0, Lcom/b/a/c;->al:I

    add-int/2addr v5, v9

    iget v6, v0, Lcom/b/a/c;->aj:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v6, v13

    div-int/2addr v6, v12

    add-int/2addr v5, v6

    .line 1289
    iget v6, v0, Lcom/b/a/c;->q:I

    add-int/2addr v6, v1

    iget v13, v0, Lcom/b/a/c;->ak:I

    sub-int/2addr v6, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v12

    add-int/2addr v6, v13

    int-to-float v5, v5

    int-to-float v6, v6

    .line 1290
    iget-object v13, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1294
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/b/a/c;->ag:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1295
    iget-object v2, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1297
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v8

    goto :goto_4

    .line 1300
    :cond_a
    iget v2, v0, Lcom/b/a/c;->aj:I

    sub-int v2, v9, v2

    .line 1302
    :goto_4
    iget-object v4, v0, Lcom/b/a/c;->ae:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    .line 1303
    iget v4, v0, Lcom/b/a/c;->aj:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    .line 1304
    iget v4, v0, Lcom/b/a/c;->q:I

    add-int/2addr v4, v1

    iget v5, v0, Lcom/b/a/c;->ak:I

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v12

    add-int/2addr v4, v5

    int-to-float v2, v2

    int-to-float v4, v4

    .line 1305
    iget-object v5, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1309
    :cond_b
    iget-boolean v2, v0, Lcom/b/a/c;->T:Z

    const/high16 v13, 0x44000000    # 512.0f

    const v14, 0xffffff

    const/4 v15, -0x1

    if-nez v2, :cond_12

    .line 1310
    iget v2, v0, Lcom/b/a/c;->q:I

    add-int v6, v1, v2

    .line 1311
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->m()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1312
    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/b/a/c;->z:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v6

    int-to-float v4, v9

    .line 1313
    invoke-direct {v0, v12}, Lcom/b/a/c;->b(I)I

    move-result v1

    add-int/2addr v1, v6

    int-to-float v5, v1

    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move v10, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_c
    move v10, v6

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1315
    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/b/a/c;->U:I

    if-eq v2, v15, :cond_d

    goto :goto_5

    :cond_d
    iget v2, v0, Lcom/b/a/c;->t:I

    and-int/2addr v2, v14

    or-int/2addr v2, v13

    :goto_5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1316
    invoke-direct {v0, v11}, Lcom/b/a/c;->b(I)I

    move-result v1

    int-to-float v6, v1

    const/4 v1, 0x0

    move/from16 v16, v1

    .line 1317
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v16, v1

    if-gez v1, :cond_11

    int-to-float v1, v8

    add-float v2, v1, v16

    int-to-float v3, v10

    add-float v4, v2, v6

    .line 1318
    invoke-direct {v0, v11}, Lcom/b/a/c;->b(I)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v5, v1

    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v6, v18, v1

    add-float v16, v16, v6

    move/from16 v6, v18

    goto :goto_6

    .line 1320
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1321
    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/b/a/c;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v10

    int-to-float v4, v9

    .line 1322
    invoke-direct {v0, v12}, Lcom/b/a/c;->b(I)I

    move-result v1

    add-int v6, v10, v1

    int-to-float v5, v6

    iget-object v6, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 1324
    :cond_f
    iget-object v1, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/b/a/c;->U:I

    if-eq v2, v15, :cond_10

    goto :goto_7

    :cond_10
    iget v2, v0, Lcom/b/a/c;->t:I

    and-int/2addr v2, v14

    const/high16 v3, 0x1e000000

    or-int/2addr v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    int-to-float v3, v10

    int-to-float v4, v9

    .line 1325
    invoke-direct {v0, v11}, Lcom/b/a/c;->b(I)I

    move-result v1

    add-int v6, v10, v1

    int-to-float v5, v6

    iget-object v6, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11
    :goto_8
    move v1, v10

    .line 1329
    :cond_12
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget v3, v0, Lcom/b/a/c;->o:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1330
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1331
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v4

    .line 1332
    iget v4, v0, Lcom/b/a/c;->o:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v2

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->p()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->c()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1336
    :cond_14
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->c()Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v0, Lcom/b/a/c;->t:I

    and-int/2addr v5, v14

    or-int/2addr v5, v13

    goto :goto_9

    :cond_15
    iget v5, v0, Lcom/b/a/c;->z:I

    :goto_9
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->getCharactersCounterText()Ljava/lang/String;

    move-result-object v2

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v5

    if-eqz v5, :cond_16

    int-to-float v5, v8

    goto :goto_a

    :cond_16
    int-to-float v5, v9

    iget-object v6, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    :goto_a
    iget v6, v0, Lcom/b/a/c;->q:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    add-float/2addr v6, v3

    iget-object v3, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    :cond_17
    iget-object v2, v0, Lcom/b/a/c;->c:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1d

    .line 1343
    iget-object v2, v0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-nez v2, :cond_19

    iget-boolean v2, v0, Lcom/b/a/c;->E:Z

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_18
    iget-object v2, v0, Lcom/b/a/c;->K:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1344
    :cond_19
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/b/a/c;->M:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget v3, v0, Lcom/b/a/c;->z:I

    goto :goto_b

    :cond_1a
    iget v3, v0, Lcom/b/a/c;->L:I

    if-eq v3, v15, :cond_1b

    goto :goto_b

    :cond_1b
    iget v3, v0, Lcom/b/a/c;->t:I

    and-int/2addr v3, v14

    or-int/2addr v3, v13

    :goto_b
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1347
    iget-object v2, v0, Lcom/b/a/c;->c:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget v3, v0, Lcom/b/a/c;->q:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 1349
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->getBottomTextLeftOffset()I

    move-result v2

    add-int/2addr v2, v8

    int-to-float v2, v2

    iget v3, v0, Lcom/b/a/c;->q:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1351
    :goto_c
    iget-object v2, v0, Lcom/b/a/c;->c:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1357
    :cond_1d
    iget-boolean v2, v0, Lcom/b/a/c;->r:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1358
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget v4, v0, Lcom/b/a/c;->m:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1360
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/b/a/c;->aq:Lcom/nineoldandroids/a/b;

    iget v5, v0, Lcom/b/a/c;->P:F

    iget v6, v0, Lcom/b/a/c;->n:I

    if-eq v6, v15, :cond_1e

    goto :goto_d

    :cond_1e
    iget v6, v0, Lcom/b/a/c;->t:I

    and-int/2addr v6, v14

    or-int/2addr v6, v13

    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v10, v0, Lcom/b/a/c;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v5, v6, v10}, Lcom/nineoldandroids/a/b;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1363
    iget-object v2, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getGravity()I

    move-result v4

    and-int/2addr v4, v3

    if-eq v4, v3, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_e

    .line 1367
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getGravity()I

    move-result v4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_20

    move v2, v8

    goto :goto_f

    .line 1370
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getInnerPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getInnerPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getInnerPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    add-int/2addr v2, v8

    goto :goto_f

    :cond_21
    :goto_e
    int-to-float v4, v9

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 1374
    :goto_f
    iget v4, v0, Lcom/b/a/c;->p:I

    .line 1375
    iget v5, v0, Lcom/b/a/c;->u:I

    iget v6, v0, Lcom/b/a/c;->m:I

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v4, v4

    iget-boolean v6, v0, Lcom/b/a/c;->D:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v6, :cond_22

    move v6, v10

    goto :goto_10

    :cond_22
    iget v6, v0, Lcom/b/a/c;->N:F

    :goto_10
    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 1378
    iget-boolean v5, v0, Lcom/b/a/c;->D:Z

    if-eqz v5, :cond_23

    move v5, v10

    goto :goto_11

    :cond_23
    iget v5, v0, Lcom/b/a/c;->N:F

    :goto_11
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    const v6, 0x3f3d70a4    # 0.74f

    iget v13, v0, Lcom/b/a/c;->P:F

    mul-float/2addr v13, v6

    const v6, 0x3e851eb8    # 0.26f

    add-float/2addr v13, v6

    mul-float/2addr v5, v13

    iget v6, v0, Lcom/b/a/c;->n:I

    if-eq v6, v15, :cond_24

    goto :goto_12

    :cond_24
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x43800000    # 256.0f

    div-float v10, v6, v10

    :goto_12
    mul-float/2addr v5, v10

    float-to-int v5, v5

    .line 1379
    iget-object v6, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1382
    iget-object v5, v0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v2, v2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1386
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, v0, Lcom/b/a/c;->C:Z

    if-eqz v2, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_29

    .line 1387
    iget-object v2, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->m()Z

    move-result v4

    if-eqz v4, :cond_26

    iget v4, v0, Lcom/b/a/c;->y:I

    goto :goto_13

    :cond_26
    iget v4, v0, Lcom/b/a/c;->z:I

    :goto_13
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1388
    iget v2, v0, Lcom/b/a/c;->q:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1390
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v2

    if-eqz v2, :cond_27

    move v8, v9

    .line 1395
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/b/a/c;->n()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_14

    :cond_28
    move v15, v11

    .line 1396
    :goto_14
    iget v2, v0, Lcom/b/a/c;->F:I

    mul-int v4, v15, v2

    div-int/2addr v4, v12

    add-int/2addr v4, v8

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    div-int/2addr v2, v12

    int-to-float v2, v2

    iget-object v6, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1397
    iget v2, v0, Lcom/b/a/c;->F:I

    mul-int v4, v15, v2

    mul-int/2addr v4, v3

    div-int/2addr v4, v12

    add-int/2addr v4, v8

    int-to-float v3, v4

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    div-int/2addr v2, v12

    int-to-float v2, v2

    iget-object v5, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1398
    iget v2, v0, Lcom/b/a/c;->F:I

    mul-int/2addr v15, v2

    mul-int/lit8 v15, v15, 0x9

    div-int/2addr v15, v12

    add-int/2addr v8, v15

    int-to-float v3, v8

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-int/2addr v2, v12

    int-to-float v2, v2

    iget-object v4, v0, Lcom/b/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1402
    :cond_29
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/widget/j;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 801
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/j;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/b/a/c;->i()Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1462
    iget-boolean v0, p0, Lcom/b/a/c;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/c;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/b/a/c;->b(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/c;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/b/a/c;->j:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/b/a/c;->v:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/c;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/b/a/c;->v:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1463
    invoke-virtual {p0, v1}, Lcom/b/a/c;->setSelection(I)V

    return v1

    .line 1466
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/c;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/b/a/c;->ag:Z

    if-eqz v0, :cond_9

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1496
    :cond_1
    iput-boolean v1, p0, Lcom/b/a/c;->am:Z

    .line 1497
    iput-boolean v1, p0, Lcom/b/a/c;->an:Z

    goto :goto_0

    .line 1483
    :cond_2
    iget-boolean v0, p0, Lcom/b/a/c;->an:Z

    if-eqz v0, :cond_4

    .line 1484
    invoke-virtual {p0}, Lcom/b/a/c;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1485
    invoke-virtual {p0, v0}, Lcom/b/a/c;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    :cond_3
    iput-boolean v1, p0, Lcom/b/a/c;->an:Z

    .line 1489
    :cond_4
    iget-boolean v0, p0, Lcom/b/a/c;->am:Z

    if-eqz v0, :cond_5

    .line 1490
    iput-boolean v1, p0, Lcom/b/a/c;->am:Z

    return v2

    .line 1493
    :cond_5
    iput-boolean v1, p0, Lcom/b/a/c;->am:Z

    goto :goto_0

    .line 1469
    :cond_6
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1470
    iput-boolean v2, p0, Lcom/b/a/c;->am:Z

    .line 1471
    iput-boolean v2, p0, Lcom/b/a/c;->an:Z

    return v2

    .line 1475
    :cond_7
    iget-boolean v0, p0, Lcom/b/a/c;->an:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1476
    iput-boolean v1, p0, Lcom/b/a/c;->an:Z

    .line 1478
    :cond_8
    iget-boolean v0, p0, Lcom/b/a/c;->am:Z

    if-eqz v0, :cond_9

    return v2

    .line 1501
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAccentTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 650
    iput-object p1, p0, Lcom/b/a/c;->Q:Landroid/graphics/Typeface;

    .line 651
    iget-object v0, p0, Lcom/b/a/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 652
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setAutoValidate(Z)V
    .locals 0

    .line 1069
    iput-boolean p1, p0, Lcom/b/a/c;->V:Z

    if-eqz p1, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/b/a/c;->b()Z

    :cond_0
    return-void
.end method

.method public setBaseColor(I)V
    .locals 1

    .line 918
    iget v0, p0, Lcom/b/a/c;->t:I

    if-eq v0, p1, :cond_0

    .line 919
    iput p1, p0, Lcom/b/a/c;->t:I

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/b/a/c;->d()V

    .line 924
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setBottomTextSize(I)V
    .locals 0

    .line 727
    iput p1, p0, Lcom/b/a/c;->o:I

    .line 728
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setCurrentBottomLines(F)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/b/a/c;->I:F

    .line 620
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1106
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/b/a/c;->M:Ljava/lang/String;

    .line 1107
    invoke-direct {p0}, Lcom/b/a/c;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setErrorColor(I)V
    .locals 0

    .line 1080
    iput p1, p0, Lcom/b/a/c;->z:I

    .line 1081
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabel(I)V
    .locals 0

    .line 999
    invoke-direct {p0, p1}, Lcom/b/a/c;->setFloatingLabelInternal(I)V

    .line 1000
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setFloatingLabelAlwaysShown(Z)V
    .locals 0

    .line 628
    iput-boolean p1, p0, Lcom/b/a/c;->D:Z

    .line 629
    invoke-virtual {p0}, Lcom/b/a/c;->invalidate()V

    return-void
.end method

.method public setFloatingLabelAnimating(Z)V
    .locals 0

    .line 1017
    iput-boolean p1, p0, Lcom/b/a/c;->aa:Z

    return-void
.end method

.method public setFloatingLabelFraction(F)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/b/a/c;->N:F

    .line 602
    invoke-virtual {p0}, Lcom/b/a/c;->invalidate()V

    return-void
.end method

.method public setFloatingLabelPadding(I)V
    .locals 0

    .line 1008
    iput p1, p0, Lcom/b/a/c;->p:I

    .line 1009
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/b/a/c;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/b/a/c;->S:Ljava/lang/CharSequence;

    .line 701
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelTextColor(I)V
    .locals 0

    .line 718
    iput p1, p0, Lcom/b/a/c;->n:I

    .line 719
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setFloatingLabelTextSize(I)V
    .locals 0

    .line 709
    iput p1, p0, Lcom/b/a/c;->m:I

    .line 710
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setFocusFraction(F)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/b/a/c;->P:F

    .line 611
    invoke-virtual {p0}, Lcom/b/a/c;->invalidate()V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1085
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/b/a/c;->K:Ljava/lang/String;

    .line 1086
    invoke-direct {p0}, Lcom/b/a/c;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1087
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setHelperTextAlwaysShown(Z)V
    .locals 0

    .line 637
    iput-boolean p1, p0, Lcom/b/a/c;->E:Z

    .line 638
    invoke-virtual {p0}, Lcom/b/a/c;->invalidate()V

    return-void
.end method

.method public setHelperTextColor(I)V
    .locals 0

    .line 1100
    iput p1, p0, Lcom/b/a/c;->L:I

    .line 1101
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setHideUnderline(Z)V
    .locals 0

    .line 667
    iput-boolean p1, p0, Lcom/b/a/c;->T:Z

    .line 668
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 669
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setIconLeft(I)V
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    .line 493
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setIconLeft(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    .line 503
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setIconLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ac:[Landroid/graphics/Bitmap;

    .line 498
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setIconRight(I)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    .line 508
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setIconRight(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    .line 518
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setIconRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1}, Lcom/b/a/c;->a(Landroid/graphics/drawable/Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ad:[Landroid/graphics/Bitmap;

    .line 513
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public setLengthChecker(Lcom/b/a/a/a;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/b/a/c;->as:Lcom/b/a/a/a;

    return-void
.end method

.method public setMaxCharacters(I)V
    .locals 0

    .line 1036
    iput p1, p0, Lcom/b/a/c;->B:I

    .line 1037
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    .line 1038
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 1039
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setMetHintTextColor(I)V
    .locals 0

    .line 961
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ap:Landroid/content/res/ColorStateList;

    .line 962
    invoke-direct {p0}, Lcom/b/a/c;->l()V

    return-void
.end method

.method public setMetHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/b/a/c;->ap:Landroid/content/res/ColorStateList;

    .line 970
    invoke-direct {p0}, Lcom/b/a/c;->l()V

    return-void
.end method

.method public setMetTextColor(I)V
    .locals 0

    .line 936
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    .line 937
    invoke-direct {p0}, Lcom/b/a/c;->k()V

    return-void
.end method

.method public setMetTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/b/a/c;->ao:Landroid/content/res/ColorStateList;

    .line 945
    invoke-direct {p0}, Lcom/b/a/c;->k()V

    return-void
.end method

.method public setMinBottomTextLines(I)V
    .locals 0

    .line 1058
    iput p1, p0, Lcom/b/a/c;->H:I

    .line 1059
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    .line 1060
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 1061
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setMinCharacters(I)V
    .locals 0

    .line 1047
    iput p1, p0, Lcom/b/a/c;->A:I

    .line 1048
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    .line 1049
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 1050
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/b/a/c;->g:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_0

    .line 1241
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 1243
    :cond_0
    iput-object p1, p0, Lcom/b/a/c;->h:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/j;->setPadding(IIII)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 928
    iput p1, p0, Lcom/b/a/c;->y:I

    .line 929
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setShowClearButton(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/b/a/c;->ag:Z

    .line 527
    invoke-direct {p0}, Lcom/b/a/c;->h()V

    return-void
.end method

.method public setSingleLineEllipsis(Z)V
    .locals 0

    .line 1025
    iput-boolean p1, p0, Lcom/b/a/c;->C:Z

    .line 1026
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    .line 1027
    invoke-direct {p0}, Lcom/b/a/c;->f()V

    .line 1028
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 684
    iput p1, p0, Lcom/b/a/c;->U:I

    .line 685
    invoke-virtual {p0}, Lcom/b/a/c;->postInvalidate()V

    return-void
.end method

.method public setValidateOnFocusLost(Z)V
    .locals 0

    .line 914
    iput-boolean p1, p0, Lcom/b/a/c;->af:Z

    return-void
.end method
