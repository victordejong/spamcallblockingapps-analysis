.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/facebook/internal/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p4, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->a()I

    move-result p4

    :cond_0
    if-nez p4, :cond_1

    .line 63
    sget p4, Lcom/facebook/common/a$g;->com_facebook_button:I

    .line 64
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->a:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int p1, v0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic a(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 3

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 44
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/FacebookButtonBase;->d:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic a(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 2225
    :try_start_1
    new-instance v1, Lcom/facebook/appevents/m;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    .line 2226
    iget-object p1, p0, Lcom/facebook/FacebookButtonBase;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2227
    :try_start_2
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    .line 44
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 3

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 44
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method protected a()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1235
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [I

    const v3, 0x10100d4

    aput v3, v0, v2

    .line 1243
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1246
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1248
    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V

    goto :goto_0

    .line 1250
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V

    goto :goto_0

    .line 1254
    :cond_2
    sget v3, Lcom/facebook/common/a$a;->com_facebook_blue:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1258
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 1259
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 203
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    :try_start_5
    new-array v0, v0, [I

    const v6, 0x101016f

    aput v6, v0, v2

    const v6, 0x101016d

    aput v6, v0, v1

    const v6, 0x1010170

    aput v6, v0, v5

    const v6, 0x101016e

    aput v6, v0, v4

    const v6, 0x1010171

    aput v6, v0, v3

    .line 1275
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1278
    :try_start_6
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1279
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1280
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1281
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1277
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1282
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1285
    :try_start_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_2
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1286
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 1287
    :try_start_8
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 204
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-nez v0, :cond_5

    :try_start_9
    new-array v0, v3, [I

    const v3, 0x10100d6

    aput v3, v0, v2

    const v3, 0x10100d7

    aput v3, v0, v1

    const v3, 0x10100d8

    aput v3, v0, v5

    const v3, 0x10100d9

    aput v3, v0, v4

    .line 1302
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1305
    :try_start_a
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1306
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1307
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 1308
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1304
    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1310
    :try_start_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_4
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1311
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    .line 1312
    :try_start_c
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 205
    :cond_5
    :goto_3
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-nez v0, :cond_6

    :try_start_d
    new-array v0, v1, [I

    const v3, 0x1010098

    aput v3, v0, v2

    .line 1324
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 1326
    :try_start_e
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1328
    :try_start_f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v1, [I

    const v3, 0x10100af

    aput v3, v0, v2

    .line 1335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1336
    invoke-virtual {v3, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    const/16 v3, 0x11

    .line 1338
    :try_start_10
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 1340
    :try_start_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v4, [I

    const v3, 0x1010095

    aput v3, v0, v2

    const v3, 0x1010097

    aput v3, v0, v1

    const v3, 0x101014f

    aput v3, v0, v5

    .line 1346
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1348
    :try_start_12
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, v2, p2}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 1349
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1350
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1352
    :try_start_13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :catchall_6
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1353
    throw p2

    :catchall_7
    move-exception p1

    .line 1340
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1341
    throw p1

    :catchall_8
    move-exception p1

    .line 1328
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1329
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception p1

    .line 1354
    :try_start_14
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 206
    :cond_6
    :goto_4
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    if-nez p1, :cond_7

    .line 1359
    :try_start_15
    new-instance p1, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {p1, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    .line 1371
    :try_start_16
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_7
    return-void

    :catchall_b
    move-exception p1

    .line 207
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->f:I

    return v0

    .line 167
    :cond_1
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 165
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 172
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->g:I

    return v0

    .line 174
    :cond_1
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 172
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 1220
    :try_start_1
    new-instance v1, Lcom/facebook/appevents/m;

    invoke-direct {v1, v0}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    .line 1221
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1222
    :try_start_2
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 133
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 148
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v4

    add-int/2addr v4, v0

    .line 150
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    .line 151
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/FacebookButtonBase;->a(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v5, v4

    .line 152
    div-int/lit8 v5, v5, 0x2

    .line 153
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    .line 154
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v4

    .line 155
    iput v0, p0, Lcom/facebook/FacebookButtonBase;->f:I

    add-int/2addr v3, v4

    .line 156
    iput v3, p0, Lcom/facebook/FacebookButtonBase;->g:I

    .line 157
    iput-boolean v1, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    .line 159
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iput-boolean v2, p0, Lcom/facebook/FacebookButtonBase;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 161
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 93
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
