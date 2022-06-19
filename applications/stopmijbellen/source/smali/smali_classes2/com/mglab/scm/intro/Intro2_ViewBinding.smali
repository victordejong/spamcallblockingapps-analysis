.class public Lcom/mglab/scm/intro/Intro2_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/intro/Intro2;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/intro/Intro2;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/intro/Intro2_ViewBinding;->b:Lcom/mglab/scm/intro/Intro2;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c1

    const-string v2, "field \'whyNeed\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-static {p2, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mglab/scm/intro/Intro2;->whyNeed:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro2_ViewBinding;->b:Lcom/mglab/scm/intro/Intro2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/intro/Intro2_ViewBinding;->b:Lcom/mglab/scm/intro/Intro2;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro2;->whyNeed:Landroid/widget/TextView;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
