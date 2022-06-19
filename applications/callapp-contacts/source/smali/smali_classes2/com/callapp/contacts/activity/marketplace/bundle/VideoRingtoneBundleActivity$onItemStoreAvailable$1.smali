.class final Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00080\u0005H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "skuDetailsList",
        "",
        "Lcom/android/billingclient/api/SkuDetails;",
        "kotlin.jvm.PlatformType",
        "",
        "onSkuDetailsResponse"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget p1, p1, Lcom/android/billingclient/api/g;->a:I

    if-nez p1, :cond_3

    .line 137
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->a(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object p1

    const-string v1, "storeItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result p1

    const-string v1, "binding.bundleSkuContainer"

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->d:Landroid/widget/LinearLayout;

    const-string p2, "binding.enjoyBundleButton"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->f:Landroid/widget/TextView;

    const p2, 0x7f1202e7

    .line 142
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f060088

    .line 143
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->e:Landroid/widget/TextView;

    const p2, 0x7f1203ea

    .line 146
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0601ec

    .line 147
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->getBinding()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->b:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "skuDetailsList[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/billingclient/api/k;

    const-string v2, "this"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->a(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;Lcom/android/billingclient/api/k;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 154
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;Ljava/util/List;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 160
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1204b6

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->finish()V

    return-void
.end method
