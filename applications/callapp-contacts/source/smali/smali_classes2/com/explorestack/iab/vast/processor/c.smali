.class final Lcom/explorestack/iab/vast/processor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0, v0, v0}, Lcom/explorestack/iab/vast/processor/c;-><init>(ZZZ)V

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/vast/tags/r;)V
    .locals 3

    const-string v0, "followAdditionalWrappers"

    .line 22
    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/tags/r;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "allowMultipleAds"

    .line 26
    invoke-virtual {p1, v1}, Lcom/explorestack/iab/vast/tags/r;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "fallbackOnNoAd"

    .line 30
    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/tags/r;->e(Ljava/lang/String;)Z

    move-result p1

    .line 21
    invoke-direct {p0, v0, v1, p1}, Lcom/explorestack/iab/vast/processor/c;-><init>(ZZZ)V

    return-void
.end method

.method private constructor <init>(ZZZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/processor/c;->a:Z

    .line 39
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/processor/c;->b:Z

    .line 40
    iput-boolean p3, p0, Lcom/explorestack/iab/vast/processor/c;->c:Z

    return-void
.end method
