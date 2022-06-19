.class public Lxx;
.super Lt;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxx$d;,
        Lxx$b;,
        Lxx$c;
    }
.end annotation


# instance fields
.field public final a:Ldz;

.field public final b:Lxx$b;

.field public c:Landroid/widget/TextView;

.field public d:Lcz;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lxx$c;

.field public h:Landroid/widget/ListView;

.field public j:Z

.field public k:J

.field public final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxx;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfy;->b(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lfy;->c(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lt;-><init>(Landroid/content/Context;I)V

    sget-object p1, Lcz;->c:Lcz;

    iput-object p1, p0, Lxx;->d:Lcz;

    new-instance p1, Lxx$a;

    invoke-direct {p1, p0}, Lxx$a;-><init>(Lxx;)V

    iput-object p1, p0, Lxx;->l:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p1

    iput-object p1, p0, Lxx;->a:Ldz;

    new-instance p1, Lxx$b;

    invoke-direct {p1, p0}, Lxx$b;-><init>(Lxx;)V

    iput-object p1, p0, Lxx;->b:Lxx$b;

    return-void
.end method


# virtual methods
.method public a(Ldz$i;)Z
    .locals 1

    invoke-virtual {p1}, Ldz$i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ldz$i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxx;->d:Lcz;

    invoke-virtual {p1, v0}, Ldz$i;->D(Lcz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$i;

    invoke-virtual {p0, v0}, Lxx;->a(Ldz$i;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 7

    iget-boolean v0, p0, Lxx;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lxx;->a:Ldz;

    invoke-virtual {v1}, Ldz;->j()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lxx;->b(Ljava/util/List;)V

    sget-object v1, Lxx$d;->a:Lxx$d;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lxx;->k:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    invoke-virtual {p0, v0}, Lxx;->f(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lxx;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lxx;->l:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v5, p0, Lxx;->k:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcz;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lxx;->d:Lcz;

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lxx;->d:Lcz;

    iget-boolean v0, p0, Lxx;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxx;->a:Ldz;

    iget-object v1, p0, Lxx;->b:Lxx$b;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Lxx;->a:Ldz;

    iget-object v1, p0, Lxx;->b:Lxx$b;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ldz;->b(Lcz;Ldz$b;I)V

    :cond_0
    invoke-virtual {p0}, Lxx;->c()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcy;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lxx;->k:J

    iget-object v0, p0, Lxx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lxx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lxx;->g:Lxx$c;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxx;->j:Z

    iget-object v1, p0, Lxx;->a:Ldz;

    iget-object v2, p0, Lxx;->d:Lcz;

    iget-object v3, p0, Lxx;->b:Lxx$b;

    invoke-virtual {v1, v2, v3, v0}, Ldz;->b(Lcz;Ldz$b;I)V

    invoke-virtual {p0}, Lxx;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lt;->onCreate(Landroid/os/Bundle;)V

    sget p1, Ltx;->mr_chooser_dialog:I

    invoke-virtual {p0, p1}, Lt;->setContentView(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxx;->f:Ljava/util/ArrayList;

    new-instance p1, Lxx$c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lxx;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lxx$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lxx;->g:Lxx$c;

    sget p1, Lqx;->mr_chooser_list:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lxx;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lxx;->g:Lxx$c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lxx;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lxx;->g:Lxx$c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lxx;->h:Landroid/widget/ListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    sget p1, Lqx;->mr_chooser_title:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lxx;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lxx;->e()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxx;->j:Z

    iget-object v0, p0, Lxx;->a:Ldz;

    iget-object v1, p0, Lxx;->b:Lxx$b;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Lxx;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lxx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lxx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
