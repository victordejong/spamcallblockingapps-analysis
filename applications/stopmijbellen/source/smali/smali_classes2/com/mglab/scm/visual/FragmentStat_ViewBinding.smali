.class public Lcom/mglab/scm/visual/FragmentStat_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentStat;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentStat;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentStat;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09039b

    const-string v2, "field \'tv_blocked\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->tv_blocked:Landroid/widget/TextView;

    const v0, 0x7f09039d

    const-string v1, "field \'tv_checked\'"

    .line 7
    const-class v2, Landroid/widget/TextView;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->tv_checked:Landroid/widget/TextView;

    const v0, 0x7f0901de

    const-string v1, "field \'mList\', method \'onItemClick\', and method \'onItemLongClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/ListView;

    const-string v3, "field \'mList\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->mList:Landroid/widget/ListView;

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->c:Landroid/view/View;

    .line 14
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    new-instance v0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0903a0

    const-string v1, "field \'tv_empty\'"

    .line 16
    const-class v2, Landroid/widget/TextView;

    .line 17
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 18
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->tv_empty:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    const-string v1, "field \'progress\'"

    .line 20
    const-class v2, Landroid/widget/ProgressBar;

    .line 21
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 22
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    const v0, 0x7f090323

    const-string v1, "field \'swipeRefreshLayout\'"

    .line 24
    const-class v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 25
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 26
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f090158

    const-string v1, "field \'fab_clear\' and method \'onClearClick\'"

    .line 28
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v3, "field \'fab_clear\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->fab_clear:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 30
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->d:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016a

    const-string v1, "field \'filterImageView\' and method \'filterClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'filterImageView\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentStat;->filterImageView:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->e:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900df

    const-string v1, "method \'onClearStatClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->f:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090073

    const-string v1, "method \'onBlockedTextViewClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->g:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentStat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentStat;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->tv_blocked:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->tv_checked:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->mList:Landroid/widget/ListView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->tv_empty:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->progress:Landroid/widget/ProgressBar;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->fab_clear:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentStat;->filterImageView:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->f:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
