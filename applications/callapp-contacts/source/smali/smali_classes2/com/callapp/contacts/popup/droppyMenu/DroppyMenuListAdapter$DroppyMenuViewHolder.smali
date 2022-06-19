.class Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DroppyMenuViewHolder"
.end annotation


# instance fields
.field final synthetic r:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

.field private final s:Landroid/widget/ImageView;

.field private final t:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->r:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a056b

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->s:Landroid/widget/ImageView;

    const p1, 0x7f0a0554

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->t:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Landroid/view/View;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;-><init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->t:Landroid/widget/TextView;

    return-object p0
.end method
