.class public Lcom/kedlin/cca/core/CallService$a;
.super Landroid/telecom/Call$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/CallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/core/CallService;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/core/CallService;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/core/CallService$a;->a:Lcom/kedlin/cca/core/CallService;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onStateChanged(Landroid/telecom/Call;I)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg61;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object v2, v1, Lg61;->l:Lg61$b;

    sget-object v3, Lg61$b;->d:Lg61$b;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/kedlin/cca/core/CallService;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "disconnect mode, disconnect the call"

    invoke-static {p2, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lf61;->c(Landroid/telecom/Call;)V

    return-void

    :cond_0
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v2

    invoke-virtual {v2, p1}, Lf61;->z(Landroid/telecom/Call;)V

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, 0x7

    if-ne p2, p1, :cond_4

    iget-boolean p1, v1, Lg61;->p:Z

    if-nez p1, :cond_3

    iget-object p1, v1, Lg61;->f:Ln91$b;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/kedlin/cca/core/CallService$b;->a:[I

    iget-object p2, v1, Lg61;->l:Lg61$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kedlin/cca/core/CallService$a;->a:Lcom/kedlin/cca/core/CallService;

    iget-object p2, v1, Lg61;->g:Li91;

    iget-object v2, v1, Lg61;->f:Ln91$b;

    invoke-virtual {p1, p2, v2}, Lcom/kedlin/cca/core/CallService;->d(Li91;Ln91$b;)V

    :goto_0
    iget-object p1, v1, Lg61;->l:Lg61$b;

    sget-object p2, Lg61$b;->a:Lg61$b;

    if-eq p1, p2, :cond_2

    iget-object p1, v1, Lg61;->f:Ln91$b;

    iget-boolean v2, p1, Ln91$b;->b:Z

    if-eqz v2, :cond_2

    sget-object v2, Lw91$a;->d:Lw91$a;

    iget-object p1, p1, Ln91$b;->a:Ln91$a;

    invoke-static {p0, v2, p1}, Lw91;->d(Ljava/lang/Object;Lw91$a;Ln91$a;)V

    :cond_2
    iget-object p1, v1, Lg61;->l:Lg61$b;

    if-ne p1, p2, :cond_3

    iget-wide p1, v1, Lg61;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    iget p1, v1, Lg61;->n:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    sget-object p1, Lq71$e;->b:Lq71$e;

    iget-object p2, v1, Lg61;->g:Li91;

    iget-object v1, v1, Lg61;->f:Ln91$b;

    invoke-static {p1, p2, v1}, Lfa1;->D(Lq71$e;Li91;Ln91$b;)V

    :cond_3
    iget-object p1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lca1;->a()V

    :cond_4
    return-void
.end method
