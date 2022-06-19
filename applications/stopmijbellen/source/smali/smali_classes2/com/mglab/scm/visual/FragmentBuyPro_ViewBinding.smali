.class public Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentBuyPro;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentBuyPro;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBuyPro;

    const v0, 0x7f0900ba

    const-string v1, "field \'cardView1_1\' and method \'onClick1\'"

    .line 3
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroidx/cardview/widget/CardView;

    const-string v3, "field \'cardView1_1\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView1_1:Landroidx/cardview/widget/CardView;

    .line 5
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;Lcom/mglab/scm/visual/FragmentBuyPro;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900bc

    const-string v1, "field \'cardView2_1\' and method \'onClick2\'"

    .line 7
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroidx/cardview/widget/CardView;

    const-string v3, "field \'cardView2_1\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView2_1:Landroidx/cardview/widget/CardView;

    .line 9
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;Lcom/mglab/scm/visual/FragmentBuyPro;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900be

    const-string v1, "field \'cardView3_1\' and method \'onClick3\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroidx/cardview/widget/CardView;

    const-string v3, "field \'cardView3_1\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView3_1:Landroidx/cardview/widget/CardView;

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;Lcom/mglab/scm/visual/FragmentBuyPro;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c0

    const-string v1, "field \'cardView4_1\' and method \'onClick4\'"

    .line 15
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroidx/cardview/widget/CardView;

    const-string v3, "field \'cardView4_1\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView4_1:Landroidx/cardview/widget/CardView;

    .line 17
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;Lcom/mglab/scm/visual/FragmentBuyPro;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09035b

    const-string v2, "field \'textView1_1\'"

    .line 20
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_1:Landroid/widget/TextView;

    const v0, 0x7f09035c

    const-string v1, "field \'textView1_2\'"

    .line 23
    const-class v2, Landroid/widget/TextView;

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_2:Landroid/widget/TextView;

    const v0, 0x7f09035d

    const-string v1, "field \'textView1_3\'"

    .line 27
    const-class v2, Landroid/widget/TextView;

    .line 28
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_3:Landroid/widget/TextView;

    const v0, 0x7f09035e

    const-string v1, "field \'textView1_4\'"

    .line 31
    const-class v2, Landroid/widget/TextView;

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_4:Landroid/widget/TextView;

    const v0, 0x7f09035f

    const-string v1, "field \'textView1_5\'"

    .line 35
    const-class v2, Landroid/widget/TextView;

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_5:Landroid/widget/TextView;

    const v0, 0x7f090361

    const-string v1, "field \'textView2_1\'"

    .line 39
    const-class v2, Landroid/widget/TextView;

    .line 40
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_1:Landroid/widget/TextView;

    const v0, 0x7f090362

    const-string v1, "field \'textView2_2\'"

    .line 43
    const-class v2, Landroid/widget/TextView;

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_2:Landroid/widget/TextView;

    const v0, 0x7f090363

    const-string v1, "field \'textView2_3\'"

    .line 47
    const-class v2, Landroid/widget/TextView;

    .line 48
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_3:Landroid/widget/TextView;

    const v0, 0x7f090364

    const-string v1, "field \'textView2_4\'"

    .line 51
    const-class v2, Landroid/widget/TextView;

    .line 52
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_4:Landroid/widget/TextView;

    const v0, 0x7f090365

    const-string v1, "field \'textView2_5\'"

    .line 55
    const-class v2, Landroid/widget/TextView;

    .line 56
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 57
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_5:Landroid/widget/TextView;

    const v0, 0x7f090367

    const-string v1, "field \'textView3_1\'"

    .line 59
    const-class v2, Landroid/widget/TextView;

    .line 60
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_1:Landroid/widget/TextView;

    const v0, 0x7f090368

    const-string v1, "field \'textView3_2\'"

    .line 63
    const-class v2, Landroid/widget/TextView;

    .line 64
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 65
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_2:Landroid/widget/TextView;

    const v0, 0x7f090369

    const-string v1, "field \'textView3_3\'"

    .line 67
    const-class v2, Landroid/widget/TextView;

    .line 68
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 69
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_3:Landroid/widget/TextView;

    const v0, 0x7f09036a

    const-string v1, "field \'textView3_4\'"

    .line 71
    const-class v2, Landroid/widget/TextView;

    .line 72
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 73
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_4:Landroid/widget/TextView;

    const v0, 0x7f09036b

    const-string v1, "field \'textView3_5\'"

    .line 75
    const-class v2, Landroid/widget/TextView;

    .line 76
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 77
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_5:Landroid/widget/TextView;

    const v0, 0x7f09036c

    const-string v1, "field \'textView4_1\'"

    .line 79
    const-class v2, Landroid/widget/TextView;

    .line 80
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 81
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_1:Landroid/widget/TextView;

    const v0, 0x7f09036d

    const-string v1, "field \'textView4_2\'"

    .line 83
    const-class v2, Landroid/widget/TextView;

    .line 84
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    const v0, 0x7f09036e

    const-string v1, "field \'textView4_3\'"

    .line 87
    const-class v2, Landroid/widget/TextView;

    .line 88
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 89
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_3:Landroid/widget/TextView;

    const v0, 0x7f09036f

    const-string v1, "field \'textView4_4\'"

    .line 91
    const-class v2, Landroid/widget/TextView;

    .line 92
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 93
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_4:Landroid/widget/TextView;

    const v0, 0x7f09017b

    const-string v1, "field \'progressLL\'"

    .line 95
    const-class v2, Landroid/widget/LinearLayout;

    .line 96
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->progressLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09008b

    const-string v1, "field \'buttonContinuePurchase\' and method \'onButtonContinuePurchaseClick\'"

    .line 99
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 100
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'buttonContinuePurchase\'"

    invoke-static {p2, v0, v2, v1}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentBuyPro;->buttonContinuePurchase:Landroid/widget/Button;

    .line 101
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->g:Landroid/view/View;

    .line 102
    new-instance v0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;Lcom/mglab/scm/visual/FragmentBuyPro;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBuyPro;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentBuyPro;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView1_1:Landroidx/cardview/widget/CardView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView2_1:Landroidx/cardview/widget/CardView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView3_1:Landroidx/cardview/widget/CardView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->cardView4_1:Landroidx/cardview/widget/CardView;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_1:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_2:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_3:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_4:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView1_5:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_1:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_2:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_3:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_4:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView2_5:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_1:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_2:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_3:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_4:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView3_5:Landroid/widget/TextView;

    .line 22
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_1:Landroid/widget/TextView;

    .line 23
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_2:Landroid/widget/TextView;

    .line 24
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_3:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->textView4_4:Landroid/widget/TextView;

    .line 26
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->progressLL:Landroid/widget/LinearLayout;

    .line 27
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentBuyPro;->buttonContinuePurchase:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->c:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->d:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->e:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->f:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentBuyPro_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
