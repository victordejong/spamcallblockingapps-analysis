.class public Lcom/mglab/scm/MainActivity$a;
.super Lf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/MainActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lcom/mglab/scm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/MainActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lf/c;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, p1}, Lf/c;->e(F)V

    .line 2
    iget-boolean p1, p0, Lf/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lf/c;->g:I

    .line 4
    iget-object v0, p0, Lf/c;->a:Lf/c$a;

    invoke-interface {v0, p1}, Lf/c$a;->d(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    const v1, 0x7f0903ad

    invoke-virtual {v0, v1}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lf8/g;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    const v1, 0x7f09039f

    invoke-virtual {v0, v1}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    invoke-static {p1}, Lf8/h;->t(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    const-string v1, ""

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    const v3, 0x7f11011c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf8/h;->t(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lf8/g;->t(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_0
    invoke-static {p1}, Lf8/h;->J(Landroid/content/Context;)Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    const v2, 0x7f09039e

    invoke-virtual {v1, v2}, Lf/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f110093

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {}, Lh8/q;->s()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    .line 15
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/mglab/scm/MainActivity$a;->i:Lcom/mglab/scm/MainActivity;

    sget v0, Lcom/mglab/scm/MainActivity;->v:I

    .line 17
    invoke-virtual {p1}, Lcom/mglab/scm/MainActivity;->A()V

    return-void
.end method
