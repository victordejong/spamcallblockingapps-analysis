.class public Ly51;
.super Lmc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly51$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmc;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly51$b;

    if-nez p2, :cond_0

    new-instance p2, Ly51$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Ly51$b;-><init>(Ly51;Landroid/view/View;Ly51$a;)V

    :cond_0
    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1, p3}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object p3, p1, Ll81;->m:Li91;

    const-string v0, ""

    if-eqz p3, :cond_2

    iget-object v1, p2, Ly51$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p1, Ll81;->h:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object v0, p1, Ll81;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ly51$b;->a:Landroid/widget/TextView;

    iget-object p1, p1, Ll81;->m:Li91;

    invoke-virtual {p1}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p2, Ly51$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Ly51$b;->a:Landroid/widget/TextView;

    const p3, 0x7f110529

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p2, Ly51$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x8

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d00e5

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
