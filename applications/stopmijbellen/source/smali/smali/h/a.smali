.class public Lh/a;
.super Lh/e;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a$f;,
        Lh/a$c;,
        Lh/a$d;,
        Lh/a$e;,
        Lh/a$b;,
        Lh/a$g;
    }
.end annotation


# instance fields
.field public p:Lh/a$c;

.field public q:Lh/a$g;

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lh/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lh/a;-><init>(Lh/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lh/a$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lh/e;-><init>(Lh/e$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lh/a;->r:I

    .line 4
    iput v0, p0, Lh/a;->s:I

    .line 5
    new-instance v0, Lh/a$c;

    invoke-direct {v0, p1, p0, p2}, Lh/a$c;-><init>(Lh/a$c;Lh/a;Landroid/content/res/Resources;)V

    .line 6
    invoke-super {p0, v0}, Lh/e;->e(Lh/b$c;)V

    .line 7
    iput-object v0, p0, Lh/a;->p:Lh/a$c;

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/a;->onStateChange([I)Z

    .line 9
    invoke-virtual {p0}, Lh/a;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lh/a;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "animated-selector"

    .line 2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3
    new-instance v5, Lh/a;

    const/4 v6, 0x0

    .line 4
    invoke-direct {v5, v6, v6}, Lh/a;-><init>(Lh/a$c;Landroid/content/res/Resources;)V

    .line 5
    sget-object v7, Lg6/b;->d:[I

    invoke-static {v1, v4, v3, v7}, Le0/h;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x1

    .line 6
    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v5, v9, v8}, Lh/a;->setVisible(ZZ)Z

    .line 7
    iget-object v9, v5, Lh/a;->p:Lh/a$c;

    .line 8
    iget v10, v9, Lh/b$c;->d:I

    invoke-static {v7}, Li/b;->b(Landroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v9, Lh/b$c;->d:I

    .line 9
    iget-boolean v10, v9, Lh/b$c;->i:Z

    const/4 v11, 0x2

    .line 10
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 11
    iput-boolean v10, v9, Lh/b$c;->i:Z

    .line 12
    iget-boolean v10, v9, Lh/b$c;->l:Z

    const/4 v12, 0x3

    .line 13
    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 14
    iput-boolean v10, v9, Lh/b$c;->l:Z

    .line 15
    iget v10, v9, Lh/b$c;->A:I

    const/4 v13, 0x4

    .line 16
    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 17
    iput v10, v9, Lh/b$c;->A:I

    const/4 v10, 0x5

    .line 18
    iget v14, v9, Lh/b$c;->B:I

    .line 19
    invoke-virtual {v7, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 20
    iput v10, v9, Lh/b$c;->B:I

    .line 21
    iget-boolean v9, v9, Lh/b$c;->x:Z

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v5, v9}, Lh/b;->setDither(Z)V

    .line 22
    iget-object v9, v5, Lh/b;->a:Lh/b$c;

    invoke-virtual {v9, v1}, Lh/b$c;->f(Landroid/content/res/Resources;)V

    .line 23
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/2addr v7, v8

    .line 25
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v8, :cond_16

    .line 26
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v7, :cond_0

    if-eq v9, v12, :cond_16

    :cond_0
    if-eq v9, v11, :cond_1

    goto :goto_0

    :cond_1
    if-le v14, v7, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "item"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, -0x1

    if-eqz v9, :cond_c

    .line 28
    sget-object v9, Lg6/b;->e:[I

    invoke-static {v1, v4, v3, v9}, Le0/h;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 29
    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 30
    invoke-virtual {v9, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_3

    .line 31
    invoke-static {}, Landroidx/appcompat/widget/p0;->d()Landroidx/appcompat/widget/p0;

    move-result-object v6

    invoke-virtual {v6, v0, v8}, Landroidx/appcompat/widget/p0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 32
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 34
    new-array v9, v8, [I

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v8, :cond_6

    .line 35
    invoke-interface {v3, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    move/from16 v16, v7

    if-eqz v15, :cond_5

    const v7, 0x10100d0

    if-eq v15, v7, :cond_5

    const v7, 0x1010199

    if-eq v15, v7, :cond_5

    add-int/lit8 v7, v14, 0x1

    .line 36
    invoke-interface {v3, v11, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_2

    :cond_4
    neg-int v15, v15

    .line 37
    :goto_2
    aput v15, v9, v14

    move v14, v7

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    goto :goto_1

    :cond_6
    move/from16 v16, v7

    .line 38
    invoke-static {v9, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v7

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v6, :cond_a

    .line 39
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v13, :cond_7

    goto :goto_3

    :cond_7
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 40
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "vector"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 41
    invoke-static/range {p1 .. p4}, Lm1/f;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lm1/f;

    move-result-object v6

    goto :goto_4

    .line 42
    :cond_8
    invoke-static/range {p1 .. p4}, Li/b;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_4

    .line 43
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-static {v2, v1, v8}, Lcom/google/android/gms/internal/ads/a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    .line 45
    iget-object v8, v5, Lh/a;->p:Lh/a$c;

    .line 46
    invoke-virtual {v8, v6}, Lh/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    .line 47
    iget-object v9, v8, Lh/e$a;->J:[[I

    aput-object v7, v9, v6

    .line 48
    iget-object v7, v8, Lh/a$c;->L:Ls/h;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ls/h;->f(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_a

    .line 49
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {v2, v1, v8}, Lcom/google/android/gms/internal/ads/a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move/from16 v16, v7

    .line 51
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "transition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 52
    sget-object v6, Lg6/b;->f:[I

    invoke-static {v1, v4, v3, v6}, Le0/h;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x2

    .line 53
    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x1

    .line 54
    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 55
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-lez v9, :cond_d

    .line 56
    invoke-static {}, Landroidx/appcompat/widget/p0;->d()Landroidx/appcompat/widget/p0;

    move-result-object v12

    invoke-virtual {v12, v0, v9}, Landroidx/appcompat/widget/p0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    :goto_5
    const/4 v12, 0x3

    .line 57
    invoke-virtual {v6, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 58
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v9, :cond_11

    .line 59
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v13, :cond_e

    goto :goto_6

    :cond_e
    const/4 v12, 0x2

    if-ne v9, v12, :cond_10

    .line 60
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "animated-vector"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 61
    new-instance v9, Lm1/b;

    const/4 v12, 0x0

    .line 62
    invoke-direct {v9, v0, v12, v12}, Lm1/b;-><init>(Landroid/content/Context;Lm1/b$b;Landroid/content/res/Resources;)V

    .line 63
    invoke-virtual {v9, v1, v2, v3, v4}, Lm1/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_7

    .line 64
    :cond_f
    invoke-static/range {p1 .. p4}, Li/b;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_7

    .line 65
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    if-eqz v9, :cond_14

    if-eq v7, v11, :cond_13

    if-eq v8, v11, :cond_13

    .line 67
    iget-object v6, v5, Lh/a;->p:Lh/a$c;

    .line 68
    invoke-virtual {v6, v9}, Lh/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    .line 69
    invoke-static {v7, v8}, Lh/a$c;->h(II)J

    move-result-wide v11

    if-eqz v10, :cond_12

    const-wide v13, 0x200000000L

    goto :goto_8

    :cond_12
    const-wide/16 v13, 0x0

    .line 70
    :goto_8
    iget-object v15, v6, Lh/a$c;->K:Ls/d;

    int-to-long v0, v9

    or-long v17, v0, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v11, v12, v9}, Ls/d;->a(JLjava/lang/Object;)V

    if-eqz v10, :cond_15

    .line 71
    invoke-static {v8, v7}, Lh/a$c;->h(II)J

    move-result-wide v7

    .line 72
    iget-object v6, v6, Lh/a$c;->K:Ls/d;

    const-wide v9, 0x100000000L

    or-long/2addr v0, v9

    or-long/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Ls/d;->a(JLjava/lang/Object;)V

    goto :goto_9

    .line 73
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 74
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/ads/a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_9
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_a
    move/from16 v7, v16

    goto/16 :goto_0

    .line 77
    :cond_16
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v5, v0}, Lh/a;->onStateChange([I)Z

    return-object v5

    .line 78
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid animated-selector tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Lh/b$c;
    .locals 3

    .line 1
    new-instance v0, Lh/a$c;

    iget-object v1, p0, Lh/a;->p:Lh/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lh/a$c;-><init>(Lh/a$c;Lh/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public e(Lh/b$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lh/e;->e(Lh/b$c;)V

    .line 2
    instance-of v0, p1, Lh/a$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lh/a$c;

    iput-object p1, p0, Lh/a;->p:Lh/a$c;

    :cond_0
    return-void
.end method

.method public f()Lh/e$a;
    .locals 3

    .line 1
    new-instance v0, Lh/a$c;

    iget-object v1, p0, Lh/a;->p:Lh/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lh/a$c;-><init>(Lh/a$c;Lh/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lh/b;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Lh/a;->q:Lh/a$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lh/a$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lh/a;->q:Lh/a$g;

    .line 5
    iget v0, p0, Lh/a;->r:I

    invoke-virtual {p0, v0}, Lh/b;->d(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lh/a;->r:I

    .line 7
    iput v0, p0, Lh/a;->s:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh/a;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lh/e;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lh/a;->p:Lh/a$c;

    invoke-virtual {v0}, Lh/a$c;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lh/a;->t:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lh/a;->p:Lh/a$c;

    .line 2
    invoke-virtual {v2, v1}, Lh/e$a;->g([I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Lh/e$a;->g([I)I

    move-result v3

    .line 4
    :goto_0
    iget v2, v0, Lh/b;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_c

    .line 5
    iget-object v6, v0, Lh/a;->q:Lh/a$g;

    if-eqz v6, :cond_3

    .line 6
    iget v2, v0, Lh/a;->r:I

    if-ne v3, v2, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 7
    :cond_1
    iget v2, v0, Lh/a;->s:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v6}, Lh/a$g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v6}, Lh/a$g;->b()V

    .line 9
    iget v2, v0, Lh/a;->s:I

    iput v2, v0, Lh/a;->r:I

    .line 10
    iput v3, v0, Lh/a;->s:I

    goto :goto_1

    .line 11
    :cond_2
    iget v2, v0, Lh/a;->r:I

    .line 12
    invoke-virtual {v6}, Lh/a$g;->d()V

    :cond_3
    const/4 v6, 0x0

    .line 13
    iput-object v6, v0, Lh/a;->q:Lh/a$g;

    const/4 v6, -0x1

    .line 14
    iput v6, v0, Lh/a;->s:I

    .line 15
    iput v6, v0, Lh/a;->r:I

    .line 16
    iget-object v6, v0, Lh/a;->p:Lh/a$c;

    .line 17
    invoke-virtual {v6, v2}, Lh/a$c;->i(I)I

    move-result v7

    .line 18
    invoke-virtual {v6, v3}, Lh/a$c;->i(I)I

    move-result v8

    if-eqz v8, :cond_a

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 19
    :cond_4
    invoke-static {v7, v8}, Lh/a$c;->h(II)J

    move-result-wide v9

    .line 20
    iget-object v11, v6, Lh/a$c;->K:Ls/d;

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v10, v14}, Ls/d;->f(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    if-gez v10, :cond_5

    goto/16 :goto_5

    .line 21
    :cond_5
    invoke-static {v7, v8}, Lh/a$c;->h(II)J

    move-result-wide v14

    .line 22
    iget-object v9, v6, Lh/a$c;->K:Ls/d;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v14, v15, v11}, Ls/d;->f(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v16, 0x200000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    .line 23
    :goto_2
    invoke-virtual {v0, v10}, Lh/b;->d(I)Z

    .line 24
    iget-object v10, v0, Lh/b;->c:Landroid/graphics/drawable/Drawable;

    .line 25
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_8

    .line 26
    invoke-static {v7, v8}, Lh/a$c;->h(II)J

    move-result-wide v7

    .line 27
    iget-object v6, v6, Lh/a$c;->K:Ls/d;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Ls/d;->f(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v11, 0x100000000L

    and-long/2addr v6, v11

    cmp-long v8, v6, v16

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 28
    :goto_3
    new-instance v7, Lh/a$e;

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7, v10, v6, v9}, Lh/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    .line 29
    :cond_8
    instance-of v6, v10, Lm1/b;

    if-eqz v6, :cond_9

    .line 30
    new-instance v7, Lh/a$d;

    check-cast v10, Lm1/b;

    invoke-direct {v7, v10}, Lh/a$d;-><init>(Lm1/b;)V

    goto :goto_4

    .line 31
    :cond_9
    instance-of v6, v10, Landroid/graphics/drawable/Animatable;

    if-eqz v6, :cond_a

    .line 32
    new-instance v7, Lh/a$b;

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v7, v10}, Lh/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 33
    :goto_4
    invoke-virtual {v7}, Lh/a$g;->c()V

    .line 34
    iput-object v7, v0, Lh/a;->q:Lh/a$g;

    .line 35
    iput v2, v0, Lh/a;->s:I

    .line 36
    iput v3, v0, Lh/a;->r:I

    goto/16 :goto_1

    :cond_a
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_b

    .line 37
    invoke-virtual {v0, v3}, Lh/b;->d(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v4, 0x1

    .line 38
    :cond_c
    iget-object v2, v0, Lh/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 39
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v4, v1

    :cond_d
    return v4
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lh/b;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lh/a;->q:Lh/a$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1}, Lh/a$g;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lh/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
