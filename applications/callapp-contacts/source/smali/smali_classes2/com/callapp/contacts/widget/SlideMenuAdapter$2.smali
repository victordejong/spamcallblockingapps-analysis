.class Lcom/callapp/contacts/widget/SlideMenuAdapter$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

.field final synthetic b:Lcom/callapp/contacts/widget/SlideMenuAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;->b(I)V

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
