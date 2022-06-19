.class Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;->updateCardData(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)V

    return-void
.end method
