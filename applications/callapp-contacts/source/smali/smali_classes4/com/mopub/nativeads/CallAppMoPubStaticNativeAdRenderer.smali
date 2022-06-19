.class public Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;
.super Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;
.source "SourceFile"


# static fields
.field public static final EXTRA_WAS_ANIMATED:Ljava/lang/String; = "was_animated"


# instance fields
.field private final b:Lcom/callapp/contacts/util/ads/AdSettings;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 43
    iput-object p2, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->b:Lcom/callapp/contacts/util/ads/AdSettings;

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a061b

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    new-instance v0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$3;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->b(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V
    .locals 11

    if-eqz p0, :cond_8

    .line 59
    invoke-static {p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->colorTextViews(Landroid/view/View;)V

    .line 1064
    iget-boolean v0, p1, Lcom/callapp/contacts/util/ads/AdSettings;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a061b

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 65
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    .line 67
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 68
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    new-instance v10, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;-><init>(Ljava/lang/Integer;Landroid/graphics/ColorFilter;IIFZZ)V

    invoke-virtual {v0, v10}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/l;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    :cond_2
    if-nez p2, :cond_8

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdAnimation()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    invoke-static {p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;)V

    const p1, 0x7f0a0619

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    const p2, 0x7f0a095b

    .line 91
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 p2, 0xa

    .line 93
    invoke-static {p1, p0, p2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->b(Landroid/view/View;Landroid/view/View;I)V

    :cond_4
    return-void

    .line 101
    :cond_5
    new-instance p1, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    :goto_1
    invoke-static {p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    return-void

    .line 98
    :cond_7
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private static b(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    if-lez p2, :cond_0

    .line 119
    new-instance v0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer$2;-><init>(Landroid/view/View;ILandroid/view/View;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const p2, 0x7f060088

    .line 129
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p0, 0x7f060026

    .line 130
    invoke-static {p0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static colorTextViews(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a0661

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060026

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const v0, 0x7f0a0662

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0600f3

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const v0, 0x7f0a0620

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v3, 0x7f0601ec

    .line 172
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v0, 0x7f0a0622

    .line 175
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f060088

    if-eqz v0, :cond_3

    .line 177
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v0, 0x7f0a0619

    .line 180
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    const v0, 0x7f0a0617

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 186
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 187
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    .line 188
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 189
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v3, 0x7f0a061a

    .line 193
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a095b

    if-eqz v3, :cond_7

    const v1, 0x7f060199

    .line 195
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 199
    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :cond_6
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const v1, 0x7f060193

    .line 204
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 207
    :cond_7
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 209
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    :goto_0
    const v0, 0x7f0a00b5

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601cc

    if-eqz v0, :cond_9

    .line 215
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    const v0, 0x7f0a061f

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 220
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    const v0, 0x7f0a02d0

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 225
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/StaticNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/StaticNativeAd;)V
    .locals 3

    .line 49
    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_star_rating"

    invoke-virtual {p2, v1, v0}, Lcom/mopub/nativeads/StaticNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/StaticNativeAd;)V

    const-string v0, "was_animated"

    .line 52
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/StaticNativeAd;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v2}, Lcom/mopub/nativeads/StaticNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object p2, p0, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->b:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->a(Landroid/view/View;Lcom/callapp/contacts/util/ads/AdSettings;Z)V

    return-void
.end method
