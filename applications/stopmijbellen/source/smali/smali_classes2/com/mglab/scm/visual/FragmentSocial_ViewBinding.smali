.class public Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentSocial;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentSocial;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentSocial;

    const v0, 0x7f09017d

    const-string v1, "field \'frameSocial\'"

    .line 3
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentSocial;->frameSocial:Landroid/view/View;

    const v0, 0x7f09008f

    const-string v1, "method \'onRetryButton\'"

    .line 4
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;Lcom/mglab/scm/visual/FragmentSocial;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015b

    const-string v1, "method \'onActionButtonClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;Lcom/mglab/scm/visual/FragmentSocial;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentSocial;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentSocial;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentSocial;->frameSocial:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->c:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentSocial_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
