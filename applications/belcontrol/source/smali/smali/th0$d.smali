.class public final Lth0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lth0;->f(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V
    .locals 0

    iput-boolean p1, p0, Lth0$d;->a:Z

    iput-object p2, p0, Lth0$d;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lth0$d;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-boolean p2, p0, Lth0$d;->a:Z

    if-eqz p2, :cond_0

    sget-object p2, Lq71$g;->c:Lq71$g;

    goto :goto_0

    :cond_0
    sget-object p2, Lq71$g;->b:Lq71$g;

    :goto_0
    iget-object v0, p0, Lth0$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v2

    invoke-virtual {v2}, Li91;->s()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Li91;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    new-instance v3, Lx81;

    invoke-direct {v3}, Lx81;-><init>()V

    invoke-virtual {v3, v2}, Lx81;->Q(Li91;)V

    iget-wide v4, v3, Lx81;->d:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    iget-object v4, v3, Lx81;->l:Lq71$g;

    if-ne v4, p2, :cond_4

    if-eqz v1, :cond_1

    iget-object v2, v3, Lx81;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_4
    const-class v4, Lq71$e;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v3, Lx81;->j:Ljava/util/EnumSet;

    iput-object p2, v3, Lx81;->l:Lq71$g;

    iput-object v2, v3, Lx81;->g:Li91;

    :cond_5
    :goto_2
    iput-object v1, v3, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v3}, Lx81;->z()Z

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lth0$d;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-boolean p2, p0, Lth0$d;->a:Z

    if-eqz p2, :cond_7

    const p2, 0x7f110249

    goto :goto_3

    :cond_7
    const p2, 0x7f110248

    :goto_3
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lth0$d;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
