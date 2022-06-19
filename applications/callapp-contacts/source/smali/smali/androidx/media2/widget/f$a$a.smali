.class final Landroidx/media2/widget/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/f$a;

.field private final b:Landroidx/media2/widget/f$a$b;

.field private c:Z

.field private d:Landroidx/media2/widget/f$a$d;

.field private final e:[Landroidx/media2/widget/f$a$d;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/media2/widget/f$a;Landroidx/media2/widget/f$a$b;)V
    .locals 0

    .line 482
    iput-object p1, p0, Landroidx/media2/widget/f$a$a;->a:Landroidx/media2/widget/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 473
    iput-boolean p1, p0, Landroidx/media2/widget/f$a$a;->c:Z

    const/16 p1, 0x8

    new-array p1, p1, [Landroidx/media2/widget/f$a$d;

    .line 475
    iput-object p1, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    .line 477
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/f$a$a;->f:Ljava/util/ArrayList;

    .line 483
    iput-object p2, p0, Landroidx/media2/widget/f$a$a;->b:Landroidx/media2/widget/f$a$b;

    .line 484
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/widget/f$a$a;->g:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    const/4 v1, 0x0

    .line 640
    iput-boolean v1, p0, Landroidx/media2/widget/f$a$a;->c:Z

    .line 641
    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 643
    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 644
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/widget/f$a$d;->e()V

    .line 646
    :cond_0
    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->b:Landroidx/media2/widget/f$a$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/widget/f$a$b;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private a(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 559
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 569
    :cond_1
    iput-object p1, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroidx/media2/widget/e$c;)V
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$d;->a(Landroidx/media2/widget/e$c;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/media2/widget/e$e;)V
    .locals 1

    .line 726
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    if-eqz v0, :cond_0

    .line 727
    iget p1, p1, Landroidx/media2/widget/e$e;->a:I

    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$d;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/media2/widget/e$f;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    iget v0, p1, Landroidx/media2/widget/e$f;->a:I

    if-ltz v0, :cond_3

    .line 663
    iget-object v1, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 666
    :cond_1
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 668
    new-instance v1, Landroidx/media2/widget/f$a$d;

    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->a:Landroidx/media2/widget/f$a;

    iget-object v3, p0, Landroidx/media2/widget/f$a$a;->b:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v3}, Landroidx/media2/widget/f$a$b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media2/widget/f$a$d;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V

    .line 670
    :cond_2
    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->b:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v1, v2, p1}, Landroidx/media2/widget/f$a$d;->a(Landroidx/media2/widget/f$a$b;Landroidx/media2/widget/e$f;)V

    .line 671
    iget-object p1, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    aput-object v1, p1, v0

    iput-object v1, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 704
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->d:Landroidx/media2/widget/f$a$d;

    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$d;->a(Ljava/lang/String;)V

    .line 706
    iget-object p1, p0, Landroidx/media2/widget/f$a$a;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object p1, p0, Landroidx/media2/widget/f$a$a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/f$a$d;",
            ">;"
        }
    .end annotation

    .line 576
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

    .line 579
    iget-object v2, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Landroidx/media2/widget/f$a$a;->c:Z

    .line 686
    invoke-direct {p0}, Landroidx/media2/widget/f$a$a;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 690
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/widget/e$b;

    .line 691
    invoke-virtual {p0, v1}, Landroidx/media2/widget/f$a$a;->a(Landroidx/media2/widget/e$b;)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private c(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/f$a$d;

    .line 593
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/f$a$d;

    .line 602
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/f$a$d;

    .line 611
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/f$a$d;

    .line 620
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->c()V

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/f$a$d;

    .line 633
    invoke-virtual {v0}, Landroidx/media2/widget/f$a$d;->e()V

    .line 634
    iget-object v1, p0, Landroidx/media2/widget/f$a$a;->e:[Landroidx/media2/widget/f$a$d;

    .line 1815
    iget v0, v0, Landroidx/media2/widget/f$a$d;->a:I

    const/4 v2, 0x0

    .line 634
    aput-object v2, v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(I)V
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 679
    iput-boolean v0, p0, Landroidx/media2/widget/f$a$a;->c:Z

    .line 680
    iget-object v1, p0, Landroidx/media2/widget/f$a$a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x64

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/widget/e$b;)V
    .locals 1

    .line 501
    iget-boolean v0, p0, Landroidx/media2/widget/f$a$a;->c:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroidx/media2/widget/f$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 505
    :cond_0
    iget v0, p1, Landroidx/media2/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 552
    :pswitch_1
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/e$f;

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->a(Landroidx/media2/widget/e$f;)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/e$e;

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->a(Landroidx/media2/widget/e$e;)V

    return-void

    .line 540
    :pswitch_3
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/e$c;

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->a(Landroidx/media2/widget/e$c;)V

    return-void

    .line 537
    :pswitch_4
    invoke-direct {p0}, Landroidx/media2/widget/f$a$a;->a()V

    return-void

    .line 534
    :pswitch_5
    invoke-direct {p0}, Landroidx/media2/widget/f$a$a;->b()V

    return-void

    .line 531
    :pswitch_6
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->h(I)V

    return-void

    .line 528
    :pswitch_7
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->g(I)V

    return-void

    .line 525
    :pswitch_8
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->f(I)V

    return-void

    .line 522
    :pswitch_9
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->e(I)V

    return-void

    .line 519
    :pswitch_a
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->d(I)V

    return-void

    .line 516
    :pswitch_b
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->c(I)V

    return-void

    .line 513
    :pswitch_c
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->a(I)V

    return-void

    .line 510
    :pswitch_d
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    return-void

    .line 507
    :pswitch_e
    iget-object p1, p1, Landroidx/media2/widget/e$b;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 489
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xff

    .line 494
    invoke-direct {p0, p1}, Landroidx/media2/widget/f$a$a;->c(I)V

    return v0

    .line 491
    :cond_1
    invoke-direct {p0}, Landroidx/media2/widget/f$a$a;->b()V

    return v0
.end method
