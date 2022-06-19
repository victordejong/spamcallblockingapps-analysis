.class Landroidx/k/a/a/i$a;
.super Landroidx/k/a/a/i$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1768
    invoke-direct {p0}, Landroidx/k/a/a/i$e;-><init>()V

    .line 1770
    return-void
.end method

.method constructor <init>(Landroidx/k/a/a/i$a;)V
    .locals 0

    .prologue
    .line 1773
    invoke-direct {p0, p1}, Landroidx/k/a/a/i$e;-><init>(Landroidx/k/a/a/i$e;)V

    .line 1774
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1792
    .line 1793
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1794
    if-eqz v0, :cond_0

    .line 1795
    iput-object v0, p0, Landroidx/k/a/a/i$a;->m:Ljava/lang/String;

    .line 1798
    :cond_0
    const/4 v0, 0x1

    .line 1799
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_1

    .line 1801
    invoke-static {v0}, Landroidx/core/graphics/b;->b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i$a;->l:[Landroidx/core/graphics/b$b;

    .line 1803
    :cond_1
    const-string/jumbo v0, "fillType"

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroidx/k/a/a/i$a;->n:I

    .line 1806
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1778
    const-string/jumbo v0, "pathData"

    invoke-static {p4, v0}, Landroidx/core/a/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1779
    if-nez v0, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1782
    :cond_0
    sget-object v0, Landroidx/k/a/a/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1784
    invoke-direct {p0, v0, p4}, Landroidx/k/a/a/i$a;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1785
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x1

    return v0
.end method
