.class public Ldy;
.super Lt;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldy$d;,
        Ldy$e;,
        Ldy$c;
    }
.end annotation


# instance fields
.field public final a:Ldz;

.field public final b:Ldy$c;

.field public c:Landroid/content/Context;

.field public d:Lcz;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/widget/ImageButton;

.field public h:Ldy$d;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Z

.field public l:Ldz$i;

.field public m:J

.field public n:J

.field public final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldy;-><init>(Landroid/content/Context;I)V

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

    iput-object p1, p0, Ldy;->d:Lcz;

    new-instance p1, Ldy$a;

    invoke-direct {p1, p0}, Ldy$a;-><init>(Ldy;)V

    iput-object p1, p0, Ldy;->o:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p2

    iput-object p2, p0, Ldy;->a:Ldz;

    new-instance p2, Ldy$c;

    invoke-direct {p2, p0}, Ldy$c;-><init>(Ldy;)V

    iput-object p2, p0, Ldy;->b:Ldy$c;

    iput-object p1, p0, Ldy;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lrx;->mr_update_routes_delay_ms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Ldy;->m:J

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

    iget-object v0, p0, Ldy;->d:Lcz;

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

    invoke-virtual {p0, v0}, Ldy;->a(Ldz$i;)Z

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
    .locals 6

    iget-object v0, p0, Ldy;->l:Ldz$i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldy;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldy;->a:Ldz;

    invoke-virtual {v1}, Ldz;->j()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ldy;->b(Ljava/util/List;)V

    sget-object v1, Ldy$e;->a:Ldy$e;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ldy;->n:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Ldy;->m:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual {p0, v0}, Ldy;->f(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldy;->o:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Ldy;->o:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Ldy;->n:J

    iget-wide v4, p0, Ldy;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcz;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Ldy;->d:Lcz;

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Ldy;->d:Lcz;

    iget-boolean v0, p0, Ldy;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldy;->a:Ldz;

    iget-object v1, p0, Ldy;->b:Ldy$c;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Ldy;->a:Ldz;

    iget-object v1, p0, Ldy;->b:Ldy$c;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ldz;->b(Lcz;Ldz$b;I)V

    :cond_0
    invoke-virtual {p0}, Ldy;->c()V

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

    iget-object v0, p0, Ldy;->c:Landroid/content/Context;

    invoke-static {v0}, Lcy;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Ldy;->c:Landroid/content/Context;

    invoke-static {v1}, Lcy;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

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

    iput-wide v0, p0, Ldy;->n:J

    iget-object v0, p0, Ldy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldy;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Ldy;->h:Ldy$d;

    invoke-virtual {p1}, Ldy$d;->g()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy;->k:Z

    iget-object v1, p0, Ldy;->a:Ldz;

    iget-object v2, p0, Ldy;->d:Lcz;

    iget-object v3, p0, Ldy;->b:Ldy$c;

    invoke-virtual {v1, v2, v3, v0}, Ldz;->b(Lcz;Ldz$b;I)V

    invoke-virtual {p0}, Ldy;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lt;->onCreate(Landroid/os/Bundle;)V

    sget p1, Ltx;->mr_picker_dialog:I

    invoke-virtual {p0, p1}, Lt;->setContentView(I)V

    iget-object p1, p0, Ldy;->c:Landroid/content/Context;

    invoke-static {p1, p0}, Lfy;->s(Landroid/content/Context;Landroid/app/Dialog;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldy;->f:Ljava/util/List;

    sget p1, Lqx;->mr_picker_close_button:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ldy;->g:Landroid/widget/ImageButton;

    new-instance v0, Ldy$b;

    invoke-direct {v0, p0}, Ldy$b;-><init>(Ldy;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ldy$d;

    invoke-direct {p1, p0}, Ldy$d;-><init>(Ldy;)V

    iput-object p1, p0, Ldy;->h:Ldy$d;

    sget p1, Lqx;->mr_picker_list:I

    invoke-virtual {p0, p1}, Lt;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ldy;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Ldy;->h:Ldy$d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Ldy;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Ldy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    invoke-virtual {p0}, Ldy;->e()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldy;->k:Z

    iget-object v0, p0, Ldy;->a:Ldz;

    iget-object v1, p0, Ldy;->b:Ldy$c;

    invoke-virtual {v0, v1}, Ldz;->o(Ldz$b;)V

    iget-object v0, p0, Ldy;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
