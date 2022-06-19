.class public final Landroidx/constraintlayout/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/f$b;,
        Landroidx/constraintlayout/widget/f$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/constraintlayout/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/f;->a:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/f;->b:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/f;->c:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/f;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/widget/f;->f:Landroidx/constraintlayout/widget/d;

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/f;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private a(IFF)I
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p1, :cond_5

    if-ne p1, v0, :cond_0

    .line 213
    iget-object p1, p0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/f$a;

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/constraintlayout/widget/f;->b:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/f$a;

    :goto_0
    if-nez p1, :cond_1

    return v0

    .line 221
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/widget/f;->c:I

    if-eq v1, v0, :cond_2

    .line 222
    iget-object v1, p1, Landroidx/constraintlayout/widget/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/f$b;

    invoke-virtual {v1, p2, p3}, Landroidx/constraintlayout/widget/f$b;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 226
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/f$a;->a(FF)I

    move-result p2

    if-ne v0, p2, :cond_3

    return v0

    :cond_3
    if-ne p2, v0, :cond_4

    .line 231
    iget p1, p1, Landroidx/constraintlayout/widget/f$a;->c:I

    return p1

    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/widget/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/f$b;

    iget p1, p1, Landroidx/constraintlayout/widget/f$b;->e:I

    return p1

    .line 234
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/f$a;

    if-nez p1, :cond_6

    return v0

    .line 238
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/f$a;->a(FF)I

    move-result p2

    if-ne p2, v0, :cond_7

    .line 239
    iget p1, p1, Landroidx/constraintlayout/widget/f$a;->c:I

    return p1

    :cond_7
    iget-object p1, p1, Landroidx/constraintlayout/widget/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/f$b;

    iget p1, p1, Landroidx/constraintlayout/widget/f$b;->e:I

    return p1
.end method

.method private a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 71
    sget-object v1, Landroidx/constraintlayout/widget/e$b;->StateSet:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 76
    sget v5, Landroidx/constraintlayout/widget/e$b;->StateSet_defaultState:I

    if-ne v4, v5, :cond_0

    .line 77
    iget v5, p0, Landroidx/constraintlayout/widget/f;->a:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/f;->a:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    if-eqz v1, :cond_7

    const-string v4, "StateSet"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    goto :goto_3

    .line 119
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 96
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, -0x1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "Variant"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "LayoutDescription"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "State"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x2

    :cond_4
    :goto_2
    if-eqz v7, :cond_8

    if-eq v7, v3, :cond_8

    if-eq v7, v6, :cond_6

    if-eq v7, v5, :cond_5

    goto :goto_3

    .line 107
    :cond_5
    new-instance v1, Landroidx/constraintlayout/widget/f$b;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/f$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v0, :cond_8

    .line 1274
    iget-object v3, v0, Landroidx/constraintlayout/widget/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_6
    new-instance v0, Landroidx/constraintlayout/widget/f$a;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/f$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    iget-object v1, p0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    iget v3, v0, Landroidx/constraintlayout/widget/f$a;->a:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 93
    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 89
    :cond_8
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(III)I
    .locals 0

    const/high16 p2, -0x40800000    # -1.0f

    .line 164
    invoke-direct {p0, p1, p2, p2}, Landroidx/constraintlayout/widget/f;->a(IFF)I

    move-result p1

    return p1
.end method
