.class final Landroidx/l/a/a/i$a;
.super Landroidx/l/a/a/i$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1768
    invoke-direct {p0}, Landroidx/l/a/a/i$e;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/l/a/a/i$a;)V
    .locals 0

    .line 1773
    invoke-direct {p0, p1}, Landroidx/l/a/a/i$e;-><init>(Landroidx/l/a/a/i$e;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 1793
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1795
    iput-object v1, p0, Landroidx/l/a/a/i$a;->m:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 1799
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1801
    invoke-static {v1}, Landroidx/core/graphics/c;->b(Ljava/lang/String;)[Landroidx/core/graphics/c$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/l/a/a/i$a;->l:[Landroidx/core/graphics/c$b;

    :cond_1
    const/4 v1, 0x2

    const-string v2, "fillType"

    .line 1803
    invoke-static {p1, p2, v2, v1, v0}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroidx/l/a/a/i$a;->n:I

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
