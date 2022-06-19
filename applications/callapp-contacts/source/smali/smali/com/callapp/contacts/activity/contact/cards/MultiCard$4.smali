.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Landroid/content/Context;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
    .locals 1

    .line 192
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4$1;

    .line 193
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 216
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/g;->setTargetPosition(I)V

    .line 217
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;->a(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method
