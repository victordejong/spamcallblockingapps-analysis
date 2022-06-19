.class public Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentDonate;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentDonate;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDonate;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09012b

    const-string v2, "field \'donate1TextView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate1TextView:Landroid/widget/TextView;

    const v0, 0x7f09012e

    const-string v1, "field \'donate2TextView\'"

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

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate2TextView:Landroid/widget/TextView;

    const v0, 0x7f090131

    const-string v1, "field \'donate3TextView\'"

    .line 11
    const-class v2, Landroid/widget/TextView;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate3TextView:Landroid/widget/TextView;

    const v0, 0x7f09012a

    const-string v1, "field \'donate1Layout\' and method \'onDonate1Click\'"

    .line 15
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'donate1Layout\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate1Layout:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->c:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09012d

    const-string v1, "field \'donate2Layout\' and method \'onDonate2Click\'"

    .line 19
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'donate2Layout\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate2Layout:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->d:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090130

    const-string v1, "field \'donate3Layout\' and method \'onDonate3Click\'"

    .line 23
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'donate3Layout\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->donate3Layout:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->e:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008a

    const-string v1, "field \'buttonBuyPro\' and method \'buyProClick\'"

    .line 27
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'buttonBuyPro\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->buttonBuyPro:Landroid/widget/Button;

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->f:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903bd

    const-string v1, "field \'vkImage\' and method \'onVkImageClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'vkImage\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDonate;->vkImage:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->g:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008e

    const-string v1, "method \'rateClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->h:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090090

    const-string v1, "method \'shareClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->i:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$g;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090091

    const-string v1, "method \'translationClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->j:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$h;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090163

    const-string v1, "method \'onFbImageClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->k:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding$i;-><init>(Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;Lcom/mglab/scm/visual/FragmentDonate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDonate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDonate;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate1TextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate2TextView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate3TextView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate1Layout:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate2Layout:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->donate3Layout:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->buttonBuyPro:Landroid/widget/Button;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDonate;->vkImage:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->f:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->g:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->h:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->i:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->j:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDonate_ViewBinding;->k:Landroid/view/View;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
