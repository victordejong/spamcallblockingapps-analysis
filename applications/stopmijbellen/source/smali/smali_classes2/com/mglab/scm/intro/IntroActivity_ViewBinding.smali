.class public Lcom/mglab/scm/intro/IntroActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/intro/IntroActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/intro/IntroActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->b:Lcom/mglab/scm/intro/IntroActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902b6

    const-string v2, "field \'progress1\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->progress1:Landroid/widget/ImageView;

    const v0, 0x7f0902b7

    const-string v1, "field \'progress2\'"

    .line 7
    const-class v2, Landroid/widget/ImageView;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->progress2:Landroid/widget/ImageView;

    const v0, 0x7f0902b8

    const-string v1, "field \'progress3\'"

    .line 11
    const-class v2, Landroid/widget/ImageView;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->progress3:Landroid/widget/ImageView;

    const v0, 0x7f0902bb

    const-string v1, "field \'progress4\'"

    .line 15
    const-class v2, Landroid/widget/ImageView;

    .line 16
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->progress4:Landroid/widget/ImageView;

    const v0, 0x7f0902bc

    const-string v1, "field \'progress5\'"

    .line 19
    const-class v2, Landroid/widget/ImageView;

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->progress5:Landroid/widget/ImageView;

    const v0, 0x7f09026c

    const-string v1, "field \'next\' and method \'nextClick\'"

    .line 23
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'next\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->c:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/intro/IntroActivity_ViewBinding$a;-><init>(Lcom/mglab/scm/intro/IntroActivity_ViewBinding;Lcom/mglab/scm/intro/IntroActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090063

    const-string v1, "field \'back\' and method \'backClick\'"

    .line 27
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'back\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/intro/IntroActivity;->back:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->d:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/intro/IntroActivity_ViewBinding$b;-><init>(Lcom/mglab/scm/intro/IntroActivity_ViewBinding;Lcom/mglab/scm/intro/IntroActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b3

    const-string v1, "field \'intro_bar_linear_layout\'"

    .line 31
    const-class v2, Landroid/widget/LinearLayout;

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    invoke-static {p2, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/mglab/scm/intro/IntroActivity;->intro_bar_linear_layout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->b:Lcom/mglab/scm/intro/IntroActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->b:Lcom/mglab/scm/intro/IntroActivity;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->progress1:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->progress2:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->progress3:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->progress4:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->progress5:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->next:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->back:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/intro/IntroActivity;->intro_bar_linear_layout:Landroid/widget/LinearLayout;

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/mglab/scm/intro/IntroActivity_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
