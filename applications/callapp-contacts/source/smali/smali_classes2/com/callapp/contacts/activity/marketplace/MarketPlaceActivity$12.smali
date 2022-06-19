.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setData(Ljava/util/ArrayList;)V

    .line 705
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setVisibility(I)V

    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$12;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setVisibility(I)V

    return-void
.end method
