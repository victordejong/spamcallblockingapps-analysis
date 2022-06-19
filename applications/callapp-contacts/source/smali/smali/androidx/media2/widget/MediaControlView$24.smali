.class final Landroidx/media2/widget/MediaControlView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1343
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->f:I

    if-eqz p1, :cond_d

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p3, :cond_1

    .line 1346
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->P:Ljava/util/List;

    .line 3048
    iput-object p2, p1, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    .line 1347
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p2, Landroidx/media2/widget/MediaControlView;->h:I

    .line 3052
    iput p2, p1, Landroidx/media2/widget/MediaControlView$d;->b:I

    .line 1348
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->f:I

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    .line 1350
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p3, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p3, p3, Landroidx/media2/widget/MediaControlView;->Q:Ljava/util/List;

    .line 4048
    iput-object p3, p1, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    .line 1351
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object p3, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p3, p3, Landroidx/media2/widget/MediaControlView;->i:I

    .line 4052
    iput p3, p1, Landroidx/media2/widget/MediaControlView$d;->b:I

    .line 1352
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->f:I

    .line 1354
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroid/widget/BaseAdapter;)V

    return-void

    .line 1372
    :cond_3
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->g:I

    add-int/2addr p1, p2

    if-eq p3, p1, :cond_7

    if-lez p3, :cond_4

    .line 1374
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    iget-object p4, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p4, p4, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    sub-int/2addr p3, p2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/k;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    goto :goto_1

    .line 1376
    :cond_4
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->O:Ljava/util/List;

    iget-object p3, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p3, p3, Landroidx/media2/widget/MediaControlView;->g:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 5285
    iget-object p3, p1, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz p3, :cond_6

    .line 5286
    iget-object p1, p1, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    const-string p3, "TrackInfo shouldn\'t be null"

    .line 6279
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6281
    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->b()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media2/session/MediaController$c;->b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    goto :goto_1

    :cond_5
    invoke-static {}, Landroidx/media2/session/MediaController;->n()Lcom/google/common/util/concurrent/a;

    goto :goto_1

    .line 5287
    :cond_6
    iget-object p3, p1, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz p3, :cond_7

    .line 5288
    iget-object p1, p1, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {p1, p2}, Landroidx/media2/common/SessionPlayer;->b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    .line 1379
    :cond_7
    :goto_1
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->c()V

    :goto_2
    return-void

    .line 1365
    :cond_8
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->i:I

    if-eq p3, p1, :cond_c

    .line 1366
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->R:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 1367
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 4265
    iget-object p3, p2, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz p3, :cond_b

    .line 4266
    iget-object p2, p2, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_a

    .line 4619
    invoke-virtual {p2}, Landroidx/media2/session/MediaController;->b()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 4620
    invoke-virtual {p2}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/media2/session/MediaController$c;->a(F)Lcom/google/common/util/concurrent/a;

    goto :goto_3

    .line 4622
    :cond_9
    invoke-static {}, Landroidx/media2/session/MediaController;->n()Lcom/google/common/util/concurrent/a;

    goto :goto_3

    .line 4617
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "speed must not be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4267
    :cond_b
    iget-object p3, p2, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz p3, :cond_c

    .line 4268
    iget-object p2, p2, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer;->a(F)Lcom/google/common/util/concurrent/a;

    .line 1369
    :cond_c
    :goto_3
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->c()V

    return-void

    .line 1357
    :cond_d
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->h:I

    if-eq p3, p1, :cond_e

    .line 1358
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->N:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 1359
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->N:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/k;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 1362
    :cond_e
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$24;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->c()V

    return-void
.end method
