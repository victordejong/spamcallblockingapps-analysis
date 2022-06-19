.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
.super Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ExpandedCardList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FooterViewHolder:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;",
        "TFooterViewHolder;TO;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/content/Context;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    .line 113
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic a(Ljava/lang/Object;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)V
    .locals 2

    .line 111
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    .line 1124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getCardInitHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;ILandroid/content/Context;)V

    .line 1125
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V

    return-void
.end method

.method public final synthetic b(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->c:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getCardInitHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 2119
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getChildLayoutId()I
    .locals 1

    const v0, 0x7f0d026f

    return v0
.end method
