.class final Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Lcom/explorestack/iab/vast/tags/k;",
        "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;->a:Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;-><init>(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 50
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    .line 1054
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    const-string v1, "width"

    .line 2051
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result v0

    .line 1054
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    const-string v2, "height"

    .line 2055
    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result p1

    mul-int v0, v0, p1

    .line 1055
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    .line 3051
    invoke-virtual {p1, v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result p1

    .line 1055
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    .line 3055
    invoke-virtual {p2, v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result p2

    mul-int p1, p1, p2

    .line 1057
    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;->a:Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;

    invoke-static {p2}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->a(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;)I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1058
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;->a:Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;

    invoke-static {v0}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->a(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AreaComparator: obj1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " obj2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMediaPicker"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
