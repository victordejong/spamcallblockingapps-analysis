.class public Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic e:Lcom/callapp/contacts/action/Action$ContextType;

.field final synthetic f:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Landroid/view/View;ZLandroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    iput-object p2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p6, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->e:Lcom/callapp/contacts/action/Action$ContextType;

    iput-object p7, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->f:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 44
    new-instance v0, Lcom/shehabic/droppy/DroppyMenuPopup$a;

    iget-object v1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->a:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/shehabic/droppy/DroppyMenuPopup$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    iget-boolean v1, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->b:Z

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->b()Lcom/shehabic/droppy/DroppyMenuPopup$a;

    .line 48
    :cond_0
    new-instance v1, Lcom/shehabic/droppy/b;

    const v2, 0x7f0d0199

    invoke-direct {v1, v2}, Lcom/shehabic/droppy/b;-><init>(I)V

    .line 49
    iget-object v2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/shehabic/droppy/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v6, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->e:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v7, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->f:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Ljava/util/List;)Ljava/util/List;

    .line 51
    iget-object v3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    iget-object v4, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v3, v4}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 52
    iget-object v3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    iget-object v4, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->f:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-static {v3, v4}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    const v3, 0x7f0a073e

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iget-object v3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    new-instance v4, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    invoke-static {v3}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-direct {v4, v5, v6}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick;)V

    invoke-static {v3, v4}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    .line 55
    iget-object v3, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-static {v3}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->b(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 56
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->c:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 57
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 58
    iget-object v2, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-virtual {v0, v1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c()Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->a(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Lcom/shehabic/droppy/DroppyMenuPopup;)Lcom/shehabic/droppy/DroppyMenuPopup;

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;->g:Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;->c(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;)Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->b()V

    return-void
.end method
