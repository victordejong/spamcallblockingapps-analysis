.class public Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentLanguage;

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


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentLanguage;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentLanguage;

    .line 3
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090149

    const-string v2, "field \'enCheckBox\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->enCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0902d2

    const-string v1, "field \'ruCheckBox\'"

    .line 7
    const-class v2, Landroid/widget/CheckBox;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->ruCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090151

    const-string v1, "field \'esCheckBox\'"

    .line 11
    const-class v2, Landroid/widget/CheckBox;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->esCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0903b2

    const-string v1, "field \'viCheckBox\'"

    .line 15
    const-class v2, Landroid/widget/CheckBox;

    .line 16
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->viCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09007d

    const-string v1, "field \'brCheckBox\'"

    .line 19
    const-class v2, Landroid/widget/CheckBox;

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->brCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0903a3

    const-string v1, "field \'ukCheckBox\'"

    .line 23
    const-class v2, Landroid/widget/CheckBox;

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->ukCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0902fb

    const-string v1, "field \'skCheckBox\'"

    .line 27
    const-class v2, Landroid/widget/CheckBox;

    .line 28
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->skCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09026d

    const-string v1, "field \'nlCheckBox\'"

    .line 31
    const-class v2, Landroid/widget/CheckBox;

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->nlCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090144

    const-string v1, "field \'elCheckBox\'"

    .line 35
    const-class v2, Landroid/widget/CheckBox;

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->elCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0901b6

    const-string v1, "field \'itCheckBox\'"

    .line 39
    const-class v2, Landroid/widget/CheckBox;

    .line 40
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->itCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09029c

    const-string v1, "field \'plCheckBox\'"

    .line 43
    const-class v2, Landroid/widget/CheckBox;

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->plCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0900b3

    const-string v1, "field \'caCheckBox\'"

    .line 47
    const-class v2, Landroid/widget/CheckBox;

    .line 48
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->caCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090106

    const-string v1, "field \'deATCheckBox\'"

    .line 51
    const-class v2, Landroid/widget/CheckBox;

    .line 52
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->deATCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090174

    const-string v1, "field \'frCheckBox\'"

    .line 55
    const-class v2, Landroid/widget/CheckBox;

    .line 56
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 57
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->frCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0900f9

    const-string v1, "field \'daCheckBox\'"

    .line 59
    const-class v2, Landroid/widget/CheckBox;

    .line 60
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentLanguage;->daCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090091

    const-string v1, "method \'translationClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->c:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$h;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014b

    const-string v1, "method \'enClick\'"

    .line 66
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->d:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$i;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d4

    const-string v1, "method \'ruClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->e:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$j;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090153

    const-string v1, "method \'esClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->f:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$k;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$k;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903b4

    const-string v1, "method \'viClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->g:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$l;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007f

    const-string v1, "method \'brClick\'"

    .line 78
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->h:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$m;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$m;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903a5

    const-string v1, "method \'ukClick\'"

    .line 81
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->i:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$n;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$n;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902fd

    const-string v1, "method \'skClick\'"

    .line 84
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->j:Landroid/view/View;

    .line 86
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$o;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$o;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090146

    const-string v1, "method \'elClick\'"

    .line 87
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->k:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$p;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$p;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09026f

    const-string v1, "method \'nlClick\'"

    .line 90
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->l:Landroid/view/View;

    .line 92
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b8

    const-string v1, "method \'itClick\'"

    .line 93
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->m:Landroid/view/View;

    .line 95
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09029e

    const-string v1, "method \'plClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->n:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b5

    const-string v1, "method \'caClick\'"

    .line 99
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->o:Landroid/view/View;

    .line 101
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090108

    const-string v1, "method \'deATClick\'"

    .line 102
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->p:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090176

    const-string v1, "method \'frClick\'"

    .line 105
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->q:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fb

    const-string v1, "method \'daClick\'"

    .line 108
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 109
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->r:Landroid/view/View;

    .line 110
    new-instance v0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding$g;-><init>(Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;Lcom/mglab/scm/visual/FragmentLanguage;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentLanguage;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentLanguage;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->enCheckBox:Landroid/widget/CheckBox;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->ruCheckBox:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->esCheckBox:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->viCheckBox:Landroid/widget/CheckBox;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->brCheckBox:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->ukCheckBox:Landroid/widget/CheckBox;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->skCheckBox:Landroid/widget/CheckBox;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->nlCheckBox:Landroid/widget/CheckBox;

    .line 11
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->elCheckBox:Landroid/widget/CheckBox;

    .line 12
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->itCheckBox:Landroid/widget/CheckBox;

    .line 13
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->plCheckBox:Landroid/widget/CheckBox;

    .line 14
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->caCheckBox:Landroid/widget/CheckBox;

    .line 15
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->deATCheckBox:Landroid/widget/CheckBox;

    .line 16
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->frCheckBox:Landroid/widget/CheckBox;

    .line 17
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentLanguage;->daCheckBox:Landroid/widget/CheckBox;

    .line 18
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->c:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->d:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->e:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->f:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->g:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->h:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->i:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->j:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->k:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->l:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->m:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->n:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->o:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->p:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->q:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentLanguage_ViewBinding;->r:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
