.class Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->c:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->a:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->c:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->c:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->a:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;->b:Landroid/view/View;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
