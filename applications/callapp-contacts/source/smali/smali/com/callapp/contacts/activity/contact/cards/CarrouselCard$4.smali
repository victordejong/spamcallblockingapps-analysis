.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroid/content/Context;IZ)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
    .locals 1

    .line 189
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;

    .line 190
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 226
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/g;->setTargetPosition(I)V

    .line 227
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;->a(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method
