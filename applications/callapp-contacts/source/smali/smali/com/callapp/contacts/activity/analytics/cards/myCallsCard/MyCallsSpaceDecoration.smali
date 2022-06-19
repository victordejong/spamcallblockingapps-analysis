.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsSpaceDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 21
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 22
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070184

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 25
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 26
    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
