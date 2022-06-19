.class public Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;,
        Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;",
            "Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->a:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->b:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 5

    .line 55
    check-cast p1, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    .line 57
    iget v0, p2, Lcom/callapp/contacts/model/widget/WidgetMetaData;->primaryIconResId:I

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p2, Lcom/callapp/contacts/model/widget/WidgetMetaData;->menuResId:I

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f060087

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 63
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;->b(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p2, Lcom/callapp/contacts/model/widget/WidgetMetaData;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d019a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;-><init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Landroid/view/View;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;)V

    .line 42
    new-instance v0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$1;-><init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
