.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->fillExpandedAreaWithData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;ZLcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;Ljava/util/List;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 280
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->a:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->clear()V

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->addAll(Ljava/util/Collection;)V

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->fillFooterWithData()V

    .line 290
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->fillFooterWithData()V

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V

    :cond_2
    return-void
.end method
