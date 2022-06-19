.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    move-result-object v0

    .line 1168
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->b()V

    return-void
.end method
