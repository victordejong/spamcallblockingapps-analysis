.class public Lpw$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lpw$a$b;

.field public b:Z

.field public c:Lpw$a$d;

.field public final d:[Lpw$a$d;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Low$c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/Handler;

.field public final synthetic h:Lpw$a;


# direct methods
.method public constructor <init>(Lpw$a;Lpw$a$b;)V
    .locals 0

    iput-object p1, p0, Lpw$a$a;->h:Lpw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lpw$a$a;->b:Z

    const/16 p1, 0x8

    new-array p1, p1, [Lpw$a$d;

    iput-object p1, p0, Lpw$a$a;->d:[Lpw$a$d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpw$a$a;->f:Ljava/util/ArrayList;

    iput-object p2, p0, Lpw$a$a;->a:Lpw$a$b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lpw$a$a;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lpw$a$a;->g(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw$a$d;

    invoke-virtual {v0}, Lpw$a$d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Low$g;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Low$g;->a:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lpw$a$a;->d:[Lpw$a$d;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    new-instance v1, Lpw$a$d;

    iget-object v2, p0, Lpw$a$a;->h:Lpw$a;

    iget-object v3, p0, Lpw$a$a;->a:Lpw$a$b;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lpw$a$d;-><init>(Lpw$a;Landroid/content/Context;)V

    :cond_2
    iget-object v2, p0, Lpw$a$a;->a:Lpw$a$b;

    invoke-virtual {v1, v2, p1}, Lpw$a$d;->g(Lpw$a$b;Low$g;)V

    iget-object p1, p0, Lpw$a$a;->d:[Lpw$a$d;

    aput-object v1, p1, v0

    iput-object v1, p0, Lpw$a$a;->c:Lpw$a$d;

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpw$a$a;->b:Z

    iget-object v1, p0, Lpw$a$a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x64

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpw$a$a;->b:Z

    invoke-virtual {p0}, Lpw$a$a;->j()V

    return-void
.end method

.method public final e(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lpw$a$a;->g(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw$a$d;

    invoke-virtual {v0}, Lpw$a$d;->h()V

    iget-object v1, p0, Lpw$a$a;->d:[Lpw$a$d;

    invoke-virtual {v0}, Lpw$a$d;->d()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lpw$a$a;->g(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw$a$d;

    invoke-virtual {v0}, Lpw$a$d;->s()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lpw$a$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpw$a$a;->d:[Lpw$a$d;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final h(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lpw$a$a;->g(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw$a$d;

    invoke-virtual {v0}, Lpw$a$d;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lpw$a$a;->a(I)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lpw$a$a;->d()V

    return v0
.end method

.method public i(Low$c;)V
    .locals 1

    iget-boolean v0, p0, Lpw$a$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpw$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v0, p1, Low$c;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Low$g;

    invoke-virtual {p0, p1}, Lpw$a$a;->b(Low$g;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Low$h;

    invoke-virtual {p0, p1}, Lpw$a$a;->r(Low$h;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Low$f;

    invoke-virtual {p0, p1}, Lpw$a$a;->q(Low$f;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Low$e;

    invoke-virtual {p0, p1}, Lpw$a$a;->p(Low$e;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Low$d;

    invoke-virtual {p0, p1}, Lpw$a$a;->o(Low$d;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lpw$a$a;->k()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lpw$a$a;->d()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->c(I)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->e(I)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->s(I)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->h(I)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->f(I)V

    goto :goto_0

    :pswitch_c
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->a(I)V

    goto :goto_0

    :pswitch_d
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->n(I)V

    goto :goto_0

    :pswitch_e
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lpw$a$a;->m(C)V

    goto :goto_0

    :pswitch_f
    iget-object p1, p1, Low$c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpw$a$a;->l(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lpw$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Low$c;

    invoke-virtual {p0, v1}, Lpw$a$a;->i(Low$c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpw$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public k()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpw$a$a;->b:Z

    iget-object v2, p0, Lpw$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lpw$a$a;->d:[Lpw$a$d;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpw$a$d;->h()V

    :cond_0
    iget-object v2, p0, Lpw$a$a;->d:[Lpw$a$d;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpw$a$a;->a:Lpw$a$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lpw$a$a;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lpw$a$d;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lpw$a$a;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lpw$a$a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final m(C)V
    .locals 1

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lpw$a$d;->j(C)V

    :cond_0
    return-void
.end method

.method public final n(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lpw$a$a;->d:[Lpw$a$d;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lpw$a$a;->c:Lpw$a$d;

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Low$d;)V
    .locals 1

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lpw$a$d;->n(Low$d;)V

    :cond_0
    return-void
.end method

.method public final p(Low$e;)V
    .locals 1

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lpw$a$d;->o(Low$e;)V

    :cond_0
    return-void
.end method

.method public final q(Low$f;)V
    .locals 2

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    iget v1, p1, Low$f;->a:I

    iget p1, p1, Low$f;->b:I

    invoke-virtual {v0, v1, p1}, Lpw$a$d;->p(II)V

    :cond_0
    return-void
.end method

.method public final r(Low$h;)V
    .locals 1

    iget-object v0, p0, Lpw$a$a;->c:Lpw$a$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lpw$a$d;->r(Low$h;)V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lpw$a$a;->g(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw$a$d;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpw$a$d;->f()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lpw$a$d;->s()V

    goto :goto_0

    :cond_2
    return-void
.end method
