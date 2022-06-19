.class public Lcom/mglab/scm/visual/FragmentPin_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentPin;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentPin;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPin;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903ae

    const-string v2, "field \'versionTV\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPin;->versionTV:Landroid/widget/TextView;

    const v0, 0x7f090298

    const-string v1, "field \'pinEdit\'"

    .line 7
    const-class v2, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const v0, 0x7f0901c2

    const-string v1, "method \'onKey1Click\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c3

    const-string v1, "method \'onKey2Click\'"

    .line 14
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c4

    const-string v1, "method \'onKey3Click\'"

    .line 17
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c5

    const-string v1, "method \'onKey4Click\'"

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$g;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c6

    const-string v1, "method \'onKey5Click\'"

    .line 23
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->g:Landroid/view/View;

    .line 25
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$h;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c7

    const-string v1, "method \'onKey6Click\'"

    .line 26
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->h:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$i;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c8

    const-string v1, "method \'onKey7Click\'"

    .line 29
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->i:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$j;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c9

    const-string v1, "method \'onKey8Click\'"

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->j:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$k;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$k;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ca

    const-string v1, "method \'onKey9Click\'"

    .line 35
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->k:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$l;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c1

    const-string v1, "method \'onKey0Click\'"

    .line 38
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->l:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901cb

    const-string v1, "method \'onKeyCClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->m:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901cc

    const-string v1, "method \'onKeyLessClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->n:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPin_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentPin_ViewBinding;Lcom/mglab/scm/visual/FragmentPin;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPin;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPin;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPin;->versionTV:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->e:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->f:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->g:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->h:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->i:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->j:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->k:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->l:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->m:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPin_ViewBinding;->n:Landroid/view/View;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
