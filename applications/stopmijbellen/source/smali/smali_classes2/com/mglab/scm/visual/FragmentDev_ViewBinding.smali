.class public Lcom/mglab/scm/visual/FragmentDev_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentDev;

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

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentDev;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDev;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090373

    const-string v2, "field \'header\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDev;->header:Landroid/widget/TextView;

    const v0, 0x7f0900aa

    const-string v1, "field \'buttonsLL\'"

    .line 7
    const-class v2, Landroid/widget/LinearLayout;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDev;->buttonsLL:Landroid/widget/LinearLayout;

    const v0, 0x7f0900a9

    const-string v1, "field \'buttonShowButtons\' and method \'onShowButtonsClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'buttonShowButtons\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentDev;->buttonShowButtons:Landroid/widget/Button;

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$k;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090093

    const-string v1, "method \'onClickButton02\'"

    .line 15
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->d:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$p;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$p;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009a

    const-string v1, "method \'onbutton09Click\'"

    .line 18
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->e:Landroid/view/View;

    .line 20
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$q;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$q;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090098

    const-string v1, "method \'onbutton07Click\'"

    .line 21
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$r;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$r;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009b

    const-string v1, "method \'onbutton10Click\'"

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->g:Landroid/view/View;

    .line 26
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$s;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$s;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090099

    const-string v1, "method \'onClickClearCache\'"

    .line 27
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->h:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$t;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$t;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009c

    const-string v1, "method \'firstTimeStart\'"

    .line 30
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->i:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$u;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$u;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090094

    const-string v1, "method \'onButton03Click\'"

    .line 33
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->j:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$v;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$v;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a3

    const-string v1, "method \'onButton18Click\'"

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->k:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$w;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$w;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009d

    const-string v1, "method \'onButtonTest2Click\'"

    .line 39
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->l:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090096

    const-string v1, "method \'onButton05Click\'"

    .line 42
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->m:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090097

    const-string v1, "method \'onButton06Click\'"

    .line 45
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->n:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090095

    const-string v1, "method \'onButton04Click\'"

    .line 48
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->o:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009e

    const-string v1, "method \'onButton13Click\'"

    .line 51
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->p:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009f

    const-string v1, "method \'onClearCallLogContactsClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->q:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a0

    const-string v1, "method \'onButton15Click\'"

    .line 57
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->r:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$g;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    const-string v1, "method \'onButton01Click\'"

    .line 60
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->s:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$h;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a2

    const-string v1, "method \'onButton17Click\'"

    .line 63
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->t:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$i;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a4

    const-string v1, "method \'onButton19Click\'"

    .line 66
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->u:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$j;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a5

    const-string v1, "method \'onButton20Click\'"

    .line 69
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->v:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$l;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a6

    const-string v1, "method \'onButton21Click\'"

    .line 72
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->w:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$m;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$m;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a7

    const-string v1, "method \'onButton22Click\'"

    .line 75
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->x:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$n;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$n;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a8

    const-string v1, "method \'onButton23Click\'"

    .line 78
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->y:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$o;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentDev_ViewBinding$o;-><init>(Lcom/mglab/scm/visual/FragmentDev_ViewBinding;Lcom/mglab/scm/visual/FragmentDev;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDev;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentDev;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDev;->header:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDev;->buttonsLL:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentDev;->buttonShowButtons:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->e:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->f:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->g:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->h:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->i:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->j:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->k:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->l:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->m:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->n:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->o:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->p:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->q:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->r:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->s:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->t:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->u:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->v:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->w:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->x:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentDev_ViewBinding;->y:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
