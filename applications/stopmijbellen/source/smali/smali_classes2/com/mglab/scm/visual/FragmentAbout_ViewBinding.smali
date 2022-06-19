.class public Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentAbout;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentAbout;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentAbout;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903af

    const-string v2, "field \'versionTV\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentAbout;->versionTV:Landroid/widget/TextView;

    const v0, 0x7f0903bd

    const-string v1, "field \'vkImage\' and method \'onVkImageClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'vkImage\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentAbout;->vkImage:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;Lcom/mglab/scm/visual/FragmentAbout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09039c

    const-string v1, "method \'openDev\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;Lcom/mglab/scm/visual/FragmentAbout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090148

    const-string v1, "method \'sendEmailClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;Lcom/mglab/scm/visual/FragmentAbout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090392

    const-string v1, "method \'translationClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->f:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;Lcom/mglab/scm/visual/FragmentAbout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090163

    const-string v1, "method \'onFbImageClick\'"

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->g:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;Lcom/mglab/scm/visual/FragmentAbout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentAbout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentAbout;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentAbout;->versionTV:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentAbout;->vkImage:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->e:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->f:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentAbout_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
