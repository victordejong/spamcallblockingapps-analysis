.class public final Landroidx/l/a/a/i;
.super Landroidx/l/a/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/l/a/a/i$b;,
        Landroidx/l/a/a/i$a;,
        Landroidx/l/a/a/i$e;,
        Landroidx/l/a/a/i$c;,
        Landroidx/l/a/a/i$d;,
        Landroidx/l/a/a/i$f;,
        Landroidx/l/a/a/i$g;,
        Landroidx/l/a/a/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field b:Z

.field private d:Landroidx/l/a/a/i$g;

.field private e:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/l/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Landroidx/l/a/a/h;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/l/a/a/i;->b:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 317
    iput-object v0, p0, Landroidx/l/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/l/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Landroidx/l/a/a/i$g;

    invoke-direct {v0}, Landroidx/l/a/a/i$g;-><init>()V

    iput-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    return-void
.end method

.method constructor <init>(Landroidx/l/a/a/i$g;)V
    .locals 1

    .line 325
    invoke-direct {p0}, Landroidx/l/a/a/h;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/l/a/a/i;->b:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 317
    iput-object v0, p0, Landroidx/l/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/l/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    .line 326
    iput-object p1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 327
    iget-object v0, p1, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1}, Landroidx/l/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .locals 2

    .line 687
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroidx/l/a/a/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 483
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/l/a/a/i;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 645
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 646
    new-instance v0, Landroidx/l/a/a/i;

    invoke-direct {v0}, Landroidx/l/a/a/i;-><init>()V

    .line 647
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 648
    new-instance p0, Landroidx/l/a/a/i$h;

    iget-object p1, v0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/l/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroidx/l/a/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 657
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    :cond_2
    if-ne v3, v4, :cond_3

    .line 664
    invoke-static {p0, p1, v2, p2}, Landroidx/l/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/l/a/a/i;

    move-result-object p0

    return-object p0

    .line 662
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 668
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 666
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/l/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    new-instance v0, Landroidx/l/a/a/i;

    invoke-direct {v0}, Landroidx/l/a/a/i;-><init>()V

    .line 682
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/l/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    .line 816
    iget-object v5, v3, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 817
    iget-object v6, v5, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    .line 822
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 823
    iget-object v8, v6, Landroidx/l/a/a/i$f;->c:Landroidx/l/a/a/i$c;

    invoke-virtual {v7, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 825
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 826
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x1

    :goto_0
    if-eq v8, v10, :cond_a

    .line 830
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v9, :cond_0

    if-eq v8, v13, :cond_a

    :cond_0
    const-string v14, "group"

    const/4 v15, 0x2

    if-ne v8, v15, :cond_8

    .line 832
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 833
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroidx/l/a/a/i$c;

    const-string v13, "path"

    .line 834
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 835
    new-instance v8, Landroidx/l/a/a/i$b;

    invoke-direct {v8}, Landroidx/l/a/a/i$b;-><init>()V

    .line 7890
    sget-object v11, Landroidx/l/a/a/a;->c:[I

    invoke-static {v0, v4, v2, v11}, Landroidx/core/content/res/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 7892
    invoke-virtual {v8, v11, v1, v4}, Landroidx/l/a/a/i$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 7893
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 837
    iget-object v11, v12, Landroidx/l/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v8}, Landroidx/l/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 839
    iget-object v11, v6, Landroidx/l/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v8}, Landroidx/l/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_1
    iget v11, v5, Landroidx/l/a/a/i$g;->a:I

    iget v8, v8, Landroidx/l/a/a/i$b;->o:I

    or-int/2addr v8, v11

    iput v8, v5, Landroidx/l/a/a/i$g;->a:I

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_2
    const-string v13, "clip-path"

    .line 843
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 844
    new-instance v8, Landroidx/l/a/a/i$a;

    invoke-direct {v8}, Landroidx/l/a/a/i$a;-><init>()V

    const-string v13, "pathData"

    .line 8778
    invoke-static {v1, v13}, Landroidx/core/content/res/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 8782
    sget-object v13, Landroidx/l/a/a/a;->d:[I

    invoke-static {v0, v4, v2, v13}, Landroidx/core/content/res/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 8784
    invoke-virtual {v8, v13, v1}, Landroidx/l/a/a/i$a;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 8785
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 846
    :cond_3
    iget-object v12, v12, Landroidx/l/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v8}, Landroidx/l/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 848
    iget-object v12, v6, Landroidx/l/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v8}, Landroidx/l/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_4
    iget v12, v5, Landroidx/l/a/a/i$g;->a:I

    iget v8, v8, Landroidx/l/a/a/i$a;->o:I

    or-int/2addr v8, v12

    iput v8, v5, Landroidx/l/a/a/i$g;->a:I

    goto/16 :goto_1

    .line 851
    :cond_5
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 852
    new-instance v8, Landroidx/l/a/a/i$c;

    invoke-direct {v8}, Landroidx/l/a/a/i$c;-><init>()V

    .line 9518
    sget-object v13, Landroidx/l/a/a/a;->b:[I

    invoke-static {v0, v4, v2, v13}, Landroidx/core/content/res/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v14, 0x0

    .line 9529
    iput-object v14, v8, Landroidx/l/a/a/i$c;->l:[I

    const/4 v14, 0x5

    .line 9532
    iget v15, v8, Landroidx/l/a/a/i$c;->c:F

    const-string v10, "rotation"

    invoke-static {v13, v1, v10, v14, v15}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->c:F

    .line 9535
    iget v10, v8, Landroidx/l/a/a/i$c;->d:F

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->d:F

    .line 9536
    iget v10, v8, Landroidx/l/a/a/i$c;->e:F

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->e:F

    .line 9539
    iget v10, v8, Landroidx/l/a/a/i$c;->f:F

    const-string v14, "scaleX"

    const/4 v15, 0x3

    invoke-static {v13, v1, v14, v15, v10}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->f:F

    const/4 v10, 0x4

    .line 9543
    iget v14, v8, Landroidx/l/a/a/i$c;->g:F

    const-string v15, "scaleY"

    invoke-static {v13, v1, v15, v10, v14}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->g:F

    const/4 v10, 0x6

    .line 9546
    iget v14, v8, Landroidx/l/a/a/i$c;->h:F

    const-string v15, "translateX"

    invoke-static {v13, v1, v15, v10, v14}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->h:F

    const/4 v10, 0x7

    .line 9548
    iget v14, v8, Landroidx/l/a/a/i$c;->i:F

    const-string v15, "translateY"

    invoke-static {v13, v1, v15, v10, v14}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroidx/l/a/a/i$c;->i:F

    const/4 v10, 0x0

    .line 9552
    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 9554
    iput-object v10, v8, Landroidx/l/a/a/i$c;->m:Ljava/lang/String;

    .line 9557
    :cond_6
    invoke-virtual {v8}, Landroidx/l/a/a/i$c;->a()V

    .line 9521
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 854
    iget-object v10, v12, Landroidx/l/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v7, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 856
    invoke-virtual {v8}, Landroidx/l/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 857
    iget-object v10, v6, Landroidx/l/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v8}, Landroidx/l/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_7
    iget v10, v5, Landroidx/l/a/a/i$g;->a:I

    iget v8, v8, Landroidx/l/a/a/i$c;->k:I

    or-int/2addr v8, v10

    iput v8, v5, Landroidx/l/a/a/i$g;->a:I

    goto :goto_1

    :cond_8
    const/4 v10, 0x3

    if-ne v8, v10, :cond_9

    .line 863
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 864
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 865
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 868
    :cond_9
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v11, :cond_b

    return-void

    .line 877
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 345
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    iget-object v0, v0, Landroidx/l/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 587
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 360
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/l/a/a/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object v0, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    .line 373
    :cond_1
    iget-object v0, p0, Landroidx/l/a/a/i;->f:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 379
    :cond_2
    iget-object v1, p0, Landroidx/l/a/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v1, p0, Landroidx/l/a/a/i;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/l/a/a/i;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    iget-object v1, p0, Landroidx/l/a/a/i;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 382
    iget-object v3, p0, Landroidx/l/a/a/i;->i:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 384
    iget-object v4, p0, Landroidx/l/a/a/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 385
    iget-object v6, p0, Landroidx/l/a/a/i;->i:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    cmpl-float v4, v6, v8

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 393
    :cond_4
    iget-object v4, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 394
    iget-object v4, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 395
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 396
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_11

    if-gtz v3, :cond_5

    goto/16 :goto_5

    .line 402
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 403
    iget-object v6, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1907
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v6, v9, :cond_6

    .line 1908
    invoke-virtual {p0}, Landroidx/l/a/a/i;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1909
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_7

    .line 408
    iget-object v6, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 409
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_7
    iget-object v6, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v6, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 2084
    iget-object v7, v6, Landroidx/l/a/a/i$g;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 2093
    iget-object v7, v6, Landroidx/l/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_8

    iget-object v7, v6, Landroidx/l/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 2094
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_a

    .line 2085
    :cond_9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Landroidx/l/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 2087
    iput-boolean v5, v6, Landroidx/l/a/a/i$g;->k:Z

    .line 418
    :cond_a
    iget-boolean v6, p0, Landroidx/l/a/a/i;->b:Z

    if-nez v6, :cond_b

    .line 419
    iget-object v6, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    invoke-virtual {v6, v1, v3}, Landroidx/l/a/a/i$g;->a(II)V

    goto :goto_3

    .line 421
    :cond_b
    iget-object v6, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 2101
    iget-boolean v7, v6, Landroidx/l/a/a/i$g;->k:Z

    if-nez v7, :cond_c

    iget-object v7, v6, Landroidx/l/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_c

    iget-object v7, v6, Landroidx/l/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_c

    iget-boolean v7, v6, Landroidx/l/a/a/i$g;->j:Z

    iget-boolean v8, v6, Landroidx/l/a/a/i$g;->e:Z

    if-ne v7, v8, :cond_c

    iget v7, v6, Landroidx/l/a/a/i$g;->i:I

    iget-object v6, v6, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    .line 2105
    invoke-virtual {v6}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_d

    .line 422
    iget-object v6, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    invoke-virtual {v6, v1, v3}, Landroidx/l/a/a/i$g;->a(II)V

    .line 423
    iget-object v1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 2114
    iget-object v3, v1, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Landroidx/l/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    .line 2115
    iget-object v3, v1, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Landroidx/l/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2116
    iget-object v3, v1, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v3}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v3

    iput v3, v1, Landroidx/l/a/a/i$g;->i:I

    .line 2117
    iget-boolean v3, v1, Landroidx/l/a/a/i$g;->e:Z

    iput-boolean v3, v1, Landroidx/l/a/a/i$g;->j:Z

    .line 2118
    iput-boolean v2, v1, Landroidx/l/a/a/i$g;->k:Z

    .line 426
    :cond_d
    :goto_3
    iget-object v1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v3, p0, Landroidx/l/a/a/i;->k:Landroid/graphics/Rect;

    .line 4057
    iget-object v6, v1, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v6}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_e

    const/4 v2, 0x1

    :cond_e
    const/4 v6, 0x0

    if-nez v2, :cond_f

    if-nez v0, :cond_f

    move-object v0, v6

    goto :goto_4

    .line 3068
    :cond_f
    iget-object v2, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    .line 3069
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    .line 3070
    iget-object v2, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3072
    :cond_10
    iget-object v2, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v5}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3073
    iget-object v2, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3074
    iget-object v0, v1, Landroidx/l/a/a/i$g;->l:Landroid/graphics/Paint;

    .line 3053
    :goto_4
    iget-object v1, v1, Landroidx/l/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v0}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 925
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 928
    :cond_0
    invoke-super {p0}, Landroidx/l/a/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    invoke-virtual {v1}, Landroidx/l/a/a/i$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 465
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->f:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 350
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 352
    new-instance v0, Landroidx/l/a/a/i$h;

    iget-object v1, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/l/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    invoke-virtual {p0}, Landroidx/l/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/l/a/a/i$g;->a:I

    .line 355
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    return-object v0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 577
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    iget v0, v0, Landroidx/l/a/a/i$f;->e:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 568
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    iget v0, v0, Landroidx/l/a/a/i$f;->d:F

    float-to-int v0, v0

    return v0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 559
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/l/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 707
    iget-object v5, v0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 708
    iget-object v5, v0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v1, v2, v3, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 712
    :cond_0
    iget-object v5, v0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 713
    new-instance v6, Landroidx/l/a/a/i$f;

    invoke-direct {v6}, Landroidx/l/a/a/i$f;-><init>()V

    .line 714
    iput-object v6, v5, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    .line 716
    sget-object v6, Landroidx/l/a/a/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Landroidx/core/content/res/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 5754
    iget-object v7, v0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 5755
    iget-object v8, v7, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    const/4 v9, 0x6

    const/4 v10, -0x1

    const-string v11, "tintMode"

    .line 5760
    invoke-static {v6, v2, v11, v9, v10}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    .line 5762
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v9, v12, :cond_3

    if-eq v9, v11, :cond_2

    const/16 v13, 0x9

    if-eq v9, v13, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 6746
    :pswitch_0
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 6744
    :pswitch_1
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 6742
    :pswitch_2
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 6740
    :cond_1
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 6738
    :cond_2
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 6736
    :cond_3
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 5762
    :goto_0
    iput-object v10, v7, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v9, "tint"

    .line 7168
    invoke-static {v2, v9}, Landroidx/core/content/res/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v9, :cond_6

    .line 7169
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 7170
    invoke-virtual {v6, v14, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 7171
    iget v15, v9, Landroid/util/TypedValue;->type:I

    if-eq v15, v13, :cond_5

    .line 7174
    iget v15, v9, Landroid/util/TypedValue;->type:I

    const/16 v13, 0x1c

    if-lt v15, v13, :cond_4

    iget v13, v9, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v13, v15, :cond_4

    .line 7190
    iget v9, v9, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_1

    .line 7179
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 7180
    invoke-virtual {v6, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 7179
    invoke-static {v9, v13, v4}, Landroidx/core/content/res/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_1

    .line 7172
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve attribute at index 1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_7

    .line 5768
    iput-object v9, v7, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 5771
    :cond_7
    iget-boolean v9, v7, Landroidx/l/a/a/i$g;->e:Z

    const-string v13, "autoMirrored"

    invoke-static {v6, v2, v13, v11, v9}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v9

    iput-boolean v9, v7, Landroidx/l/a/a/i$g;->e:Z

    const/4 v7, 0x7

    .line 5774
    iget v9, v8, Landroidx/l/a/a/i$f;->f:F

    const-string/jumbo v11, "viewportWidth"

    invoke-static {v6, v2, v11, v7, v9}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Landroidx/l/a/a/i$f;->f:F

    const/16 v7, 0x8

    .line 5778
    iget v9, v8, Landroidx/l/a/a/i$f;->g:F

    const-string/jumbo v11, "viewportHeight"

    invoke-static {v6, v2, v11, v7, v9}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Landroidx/l/a/a/i$f;->g:F

    .line 5782
    iget v7, v8, Landroidx/l/a/a/i$f;->f:F

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-lez v7, :cond_c

    .line 5785
    iget v7, v8, Landroidx/l/a/a/i$f;->g:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_b

    .line 5790
    iget v7, v8, Landroidx/l/a/a/i$f;->d:F

    invoke-virtual {v6, v12, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Landroidx/l/a/a/i$f;->d:F

    .line 5792
    iget v7, v8, Landroidx/l/a/a/i$f;->e:F

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Landroidx/l/a/a/i$f;->e:F

    .line 5794
    iget v7, v8, Landroidx/l/a/a/i$f;->d:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_a

    .line 5797
    iget v7, v8, Landroidx/l/a/a/i$f;->e:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_9

    const/4 v7, 0x4

    .line 5804
    invoke-virtual {v8}, Landroidx/l/a/a/i$f;->getAlpha()F

    move-result v9

    const-string v11, "alpha"

    .line 5803
    invoke-static {v6, v2, v11, v7, v9}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 5805
    invoke-virtual {v8, v7}, Landroidx/l/a/a/i$f;->setAlpha(F)V

    .line 5807
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 5809
    iput-object v7, v8, Landroidx/l/a/a/i$f;->i:Ljava/lang/String;

    .line 5810
    iget-object v9, v8, Landroidx/l/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v9, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_8
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroidx/l/a/a/i;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Landroidx/l/a/a/i$g;->a:I

    .line 722
    iput-boolean v14, v5, Landroidx/l/a/a/i$g;->k:Z

    .line 723
    invoke-direct/range {p0 .. p4}, Landroidx/l/a/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 725
    iget-object v1, v5, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroidx/l/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 5798
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5795
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5786
    :cond_b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5783
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 933
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 937
    :cond_0
    invoke-super {p0}, Landroidx/l/a/a/h;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 596
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 599
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-boolean v0, v0, Landroidx/l/a/a/i$g;->e:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .line 528
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 532
    :cond_0
    invoke-super {p0}, Landroidx/l/a/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    if-eqz v0, :cond_1

    .line 4143
    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v0}, Landroidx/l/a/a/i$f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 534
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 277
    invoke-super {p0}, Landroidx/l/a/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 337
    :cond_0
    iget-boolean v0, p0, Landroidx/l/a/a/i;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/l/a/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 338
    new-instance v0, Landroidx/l/a/a/i$g;

    iget-object v1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    invoke-direct {v0, v1}, Landroidx/l/a/a/i$g;-><init>(Landroidx/l/a/a/i$g;)V

    iput-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Landroidx/l/a/a/i;->g:Z

    :cond_1
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 918
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 4

    .line 539
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 545
    iget-object v2, v1, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_1

    .line 546
    iget-object v0, v1, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v2}, Landroidx/l/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 547
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    const/4 v0, 0x1

    .line 5143
    :cond_1
    iget-object v2, v1, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v2}, Landroidx/l/a/a/i$f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5147
    iget-object v2, v1, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    .line 5419
    iget-object v2, v2, Landroidx/l/a/a/i$f;->c:Landroidx/l/a/a/i$c;

    invoke-virtual {v2, p1}, Landroidx/l/a/a/i$c;->a([I)Z

    move-result p1

    .line 5148
    iget-boolean v2, v1, Landroidx/l/a/a/i$g;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Landroidx/l/a/a/i$g;->k:Z

    if-eqz p1, :cond_2

    .line 551
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 942
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 946
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/l/a/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v0}, Landroidx/l/a/a/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 447
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iget-object v0, v0, Landroidx/l/a/a/i$g;->b:Landroidx/l/a/a/i$f;

    invoke-virtual {v0, p1}, Landroidx/l/a/a/i$f;->setRootAlpha(I)V

    .line 448
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 604
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    iput-boolean p1, v0, Landroidx/l/a/a/i$g;->e:Z

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Landroidx/l/a/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 454
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 459
    :cond_0
    iput-object p1, p0, Landroidx/l/a/a/i;->f:Landroid/graphics/ColorFilter;

    .line 460
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    return-void
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Landroidx/l/a/a/h;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/l/a/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->setState([I)Z

    move-result p1

    return p1
.end method

.method public final setTint(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/l/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 498
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 504
    iget-object v1, v0, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 505
    iput-object p1, v0, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 506
    iget-object v0, v0, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroidx/l/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 507
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 513
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i;->d:Landroidx/l/a/a/i$g;

    .line 519
    iget-object v1, v0, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 520
    iput-object p1, v0, Landroidx/l/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 521
    iget-object v0, v0, Landroidx/l/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroidx/l/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 522
    invoke-virtual {p0}, Landroidx/l/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 951
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 954
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/l/a/a/h;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 959
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroidx/l/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 963
    :cond_0
    invoke-super {p0, p1}, Landroidx/l/a/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
