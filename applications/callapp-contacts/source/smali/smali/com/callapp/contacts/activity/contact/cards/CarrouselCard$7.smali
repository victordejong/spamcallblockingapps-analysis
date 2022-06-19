.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;
.super Landroidx/recyclerview/widget/RecyclerView$m;
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
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 296
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()I

    move-result p1

    .line 299
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;I)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
