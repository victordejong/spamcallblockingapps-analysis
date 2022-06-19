.class public Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleExpandedCardList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard<",
        "TO;>.ExpandedCard",
        "List<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard<",
        "TO;>.SimpleFooterViewHolder;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/content/Context;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 2158
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/view/View;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 151
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;

    .line 1163
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;->setupFromData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V

    return-void
.end method

.method public getFooterLayoutId()I
    .locals 1

    const v0, 0x7f0d007e

    return v0
.end method
