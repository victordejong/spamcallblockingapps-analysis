.class public Lcom/bytedance/sdk/openadsdk/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private b:Lcom/a/a/a/a/a/c;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Ljava/util/List;

    const-string v0, "embeded_ad"

    .line 44
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 50
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result p2

    const/4 p4, 0x4

    if-ne p2, p4, :cond_0

    .line 55
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/a/a/a/a/a/c;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/m;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 190
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/m;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/m;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/m;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 60
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 71
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    .line 72
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Ljava/util/List;

    .line 73
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object p2

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a()V

    .line 80
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefClickViews(Ljava/util/List;)V

    .line 81
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    .line 84
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/view/View;)V

    .line 86
    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/openadsdk/core/b/b;->b(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/a/a/a/a/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/a/a/a/a/a/c;)V

    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 89
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/m$1;

    invoke-direct {v1, p0, p6}, Lcom/bytedance/sdk/openadsdk/core/m$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 99
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Landroid/view/View;)V

    .line 101
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Landroid/view/View;)V

    .line 102
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/a/a/a/a/a/c;

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/a/a/a/a/a/c;)V

    .line 103
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 104
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/m$2;

    invoke-direct {p5, p0, p6}, Lcom/bytedance/sdk/openadsdk/core/m$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 113
    invoke-virtual {p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/b/c;)V

    .line 114
    invoke-virtual {p2, p4, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/b/c;)V

    .line 116
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/m$3;

    invoke-direct {p3, p0, p1, p6}, Lcom/bytedance/sdk/openadsdk/core/m$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method
