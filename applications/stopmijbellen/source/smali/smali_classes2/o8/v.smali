.class public final synthetic Lo8/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mglab/scm/visual/FragmentStat;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/FragmentStat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo8/v;->a:I

    iput-object p1, p0, Lo8/v;->b:Lcom/mglab/scm/visual/FragmentStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 2

    iget p1, p0, Lo8/v;->a:I

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lo8/v;->b:Lcom/mglab/scm/visual/FragmentStat;

    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->I(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr p2, v1

    const-string v1, "psetdebug"

    .line 2
    invoke-static {v0, v1, p2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->I(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UNLOCKED"

    goto :goto_0

    :cond_0
    const-string p1, "LOCKED"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :goto_1
    iget-object p1, p0, Lo8/v;->b:Lcom/mglab/scm/visual/FragmentStat;

    sget-object v0, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "preventunloadsuggest"

    .line 6
    invoke-static {p1, v0, p2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
