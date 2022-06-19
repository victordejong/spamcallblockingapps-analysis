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

    .line 13198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13199
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    .line 13200
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 13201
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    .line 13202
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A05:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1X(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 13203
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 0

    .line 13204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13205
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    .line 13206
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 13207
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/T6;
    .locals 1

    .line 13208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qf6uI4y6btMkRXvA96gvAPpQqYMeMLVQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xsH0pc0gEvMtYCBpu3k37P2MSYje76"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eIeN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vYRtnf0lNdhCyq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0cPKH6qR821KJSq9ovGwsT1tt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LdRpqMhVSgJGWZUoheR2iPgR57uht61Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hYjvJgOs8spNmgMi7B8jHFIGUAKFh9RM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13209
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13210
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1F()Ljava/lang/String;

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

    .line 13211
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13212
    const/4 v0, 0x0

    return-object v0

    .line 13213
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13214
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/T6;

    .line 13215
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13216
    .end local v0    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    goto :goto_0

    .line 13217
    :cond_1
    return-object v4
.end method

.method public final getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 4

    .line 13218
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13219
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 13220
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13221
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13222
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 13223
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13224
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13225
    sget-object v3, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const-string v1, "KhCZfMyUHPJBMWXSGegcdmWrt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "8FosuavNBsKEQf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13226
    :cond_3
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0
.end method

.method public final getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1

    .line 13227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A17()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    .line 13228
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jf;->A00(Lcom/facebook/ads/redexgen/X/Jf;)Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 13229
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    .line 13230
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V
    .locals 1
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13232
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

    .line 13233
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 13234
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 13235
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    .line 13236
    .local p1, "downloadContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Wm;->A0E(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 13237
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A13()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    .line 13238
    invoke-static {v0, p3, v1}, Lcom/facebook/ads/redexgen/X/T6;->A0h(Lcom/facebook/ads/internal/api/NativeAdImageApi;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 13239
    .end local p0    # "adObjectContext":Lcom/facebook/ads/redexgen/X/Wm;
    .end local p1    # "downloadContext":Lcom/facebook/ads/redexgen/X/Wm;
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13240
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/MediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13242
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

    .line 13243
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13244
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/aO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0I(Lcom/facebook/ads/NativeAd;)V

    .line 13245
    :cond_0
    if-eqz p3, :cond_1

    .line 13246
    invoke-virtual {p3}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/aO;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    const/4 v0, 0x0

    .line 13247
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 13248
    :cond_1
    if-eqz p4, :cond_2

    .line 13249
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/facebook/ads/redexgen/X/T6;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 13250
    :goto_0
    return-void

    .line 13251
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5C;->A00()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A02:[Ljava/lang/String;

    const-string v1, "Y8dslRp9uWVtvGXxjU2U0Td790Xm7bcp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/T6;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

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

    .line 13252
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/5C;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13253
    return-void
.end method
