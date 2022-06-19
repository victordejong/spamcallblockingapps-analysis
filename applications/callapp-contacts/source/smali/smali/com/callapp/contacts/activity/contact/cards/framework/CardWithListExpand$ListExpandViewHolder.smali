.class Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListExpandViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

.field private b:Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Landroid/view/View;)V
    .locals 1

    .line 682
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a01e8

    .line 683
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->b:Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    const v0, 0x7f0a0587

    .line 684
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->c:Landroid/view/ViewGroup;

    const v0, 0x7f0a0588

    .line 685
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->d:Landroid/view/View;

    .line 686
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->b(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->b:Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Landroid/view/ViewGroup;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Landroid/view/View;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->d:Landroid/view/View;

    return-object p0
.end method
