.class public Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;
.super Lcom/explorestack/iab/vast/processor/VastMediaPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
        "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/explorestack/iab/vast/processor/VastMediaPicker;-><init>()V

    mul-int p1, p1, p2

    .line 2037
    iput p1, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/explorestack/iab/vast/processor/VastMediaPicker;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v1, v1, v0

    .line 1037
    iput v1, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->a:I

    .line 29
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->a:I

    return p0
.end method


# virtual methods
.method protected isMediaFileCompatible(Lcom/explorestack/iab/vast/tags/MediaFileTag;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pickVideo(Ljava/util/List;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/k;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/k;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;

    invoke-direct {v1, p0, v0}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$a;-><init>(Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;Lcom/explorestack/iab/vast/processor/DefaultMediaPicker$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v1, "DefaultMediaPicker"

    const-string v2, "getBestMatch"

    .line 2084
    invoke-static {v1, v2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2088
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->isMediaFileCompatible(Lcom/explorestack/iab/vast/tags/MediaFileTag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2089
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    const-string v3, "width"

    .line 4051
    invoke-virtual {v2, v3}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    .line 4055
    invoke-virtual {v2, v4}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 3079
    :goto_1
    iget-boolean v3, p0, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;->b:Z

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_5
    return-object v0
.end method
