.class public final Lcom/facebook/ads/redexgen/X/5C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdApi;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/NativeAd;

.field public final A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 13106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13107
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    .line 13108
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 13109
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v1

    .line 13110
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A05:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1X(Lcom/facebook/ads/redexgen/X/Jr;)V

    .line 13111
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 0

    .line 13112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13113
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    .line 13114
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 13115
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/cD;
    .locals 1

    .line 13116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mRGpAzErj1xKeHc9WkF3Ujy7h38joZC8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9wVKpObP8FA1o7oyYWhkpjh48o8VAcWp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pz3BbJjT9xlHe4B2EghGg76rolJKqfV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "txN8wQ5fkL3IFh565s3Q1NMKA4RH7CNr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KrzK51p50C2Qp4g1XOaXdDfTUeF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0wnkiGzVks6qBKMatIgqU8hY2PaKlPy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GWxCKnjCJrIvVlnjjEtvZJVKWYpK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UfKYcBFUD7Ap"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13117
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13118
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    .line 13119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13120
    const/4 v0, 0x0

    return-object v0

    .line 13121
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13122
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cD;

    .line 13123
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13124
    .end local v0    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    goto :goto_0

    .line 13125
    :cond_1
    return-object v4
.end method

.method public final getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 4

    .line 13126
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13127
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 13128
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13129
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A1H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13130
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 13131
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13132
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13133
    sget-object v3, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const-string v1, "AqlRmswAejgv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "RNgsy314kOszGsZ2llWC7eCbS6WS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13134
    :cond_3
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0
.end method

.method public final getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1

    .line 13135
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A17()Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v0

    .line 13136
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jd;->A00(Lcom/facebook/ads/redexgen/X/Jd;)Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 13137
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    .line 13138
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V
    .locals 1
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13140
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 3
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13141
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 13142
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    .line 13143
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/XJ;
    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    .line 13144
    .local p1, "downloadContext":Lcom/facebook/ads/redexgen/X/XJ;
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/XJ;->A0D(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 13145
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A13()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    .line 13146
    invoke-static {v0, p3, v1}, Lcom/facebook/ads/redexgen/X/cD;->A0h(Lcom/facebook/ads/internal/api/NativeAdImageApi;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 13147
    .end local p0    # "adObjectContext":Lcom/facebook/ads/redexgen/X/XJ;
    .end local p1    # "downloadContext":Lcom/facebook/ads/redexgen/X/XJ;
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13148
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/MediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13150
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 4
    .param p3    # Lcom/facebook/ads/MediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13151
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13152
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0I(Lcom/facebook/ads/NativeAd;)V

    .line 13153
    :cond_0
    if-eqz p3, :cond_1

    .line 13154
    invoke-virtual {p3}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    const/4 v0, 0x0

    .line 13155
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 13156
    :cond_1
    if-eqz p4, :cond_2

    .line 13157
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/facebook/ads/redexgen/X/cD;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 13158
    :goto_0
    return-void

    .line 13159
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const-string v1, "MBrHnoNt0t7c904xRN41qBo9Q6s9Di6J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/cD;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13160
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13161
    return-void
.end method
