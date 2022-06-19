.class public Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;
.super Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
.source "SourceFile"


# instance fields
.field private m:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;-><init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;)Lcom/callapp/contacts/util/ads/AppBidder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->m:Lcom/callapp/contacts/util/ads/AppBidder;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 4

    .line 36
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->c()V

    .line 39
    new-instance v0, Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    iget v3, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->l:F

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/callapp/contacts/util/ads/AppBidder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->m:Lcom/callapp/contacts/util/ads/AppBidder;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->m:Lcom/callapp/contacts/util/ads/AppBidder;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a()V

    :cond_0
    return-void
.end method

.method protected getAdRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 52
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;)V

    return-object v0
.end method
