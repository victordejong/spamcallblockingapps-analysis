.class public Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentBlackList;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentBlackList;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBlackList;

    const v0, 0x7f0901dd

    const-string v1, "field \'mList\', method \'onListItemClick\', and method \'onListItemLongClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ListView;

    const-string v3, "field \'mList\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    .line 5
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->c:Landroid/view/View;

    .line 6
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;Lcom/mglab/scm/visual/FragmentBlackList;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    new-instance v0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;Lcom/mglab/scm/visual/FragmentBlackList;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903a0

    const-string v2, "field \'emptyTextView\'"

    .line 9
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;->emptyTextView:Landroid/widget/TextView;

    const v0, 0x7f090159

    const-string v1, "field \'fab_clear_selected\' and method \'onFabClearSelectedClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    const-class v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v2, "field \'fab_clear_selected\'"

    invoke-static {p2, v0, v2, v1}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 14
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;Lcom/mglab/scm/visual/FragmentBlackList;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBlackList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBlackList;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBlackList;->mList:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBlackList;->emptyTextView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBlackList;->fab_clear_selected:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
