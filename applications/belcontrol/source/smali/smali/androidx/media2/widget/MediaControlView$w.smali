.class public Landroidx/media2/widget/MediaControlView$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget p2, p1, Landroidx/media2/widget/MediaControlView;->m:I

    if-eqz p2, :cond_6

    const/4 p4, 0x1

    if-eq p2, p4, :cond_5

    const/4 p5, 0x2

    if-eq p2, p5, :cond_3

    const/4 p5, 0x3

    if-eq p2, p5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->t0:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView$i0;->c(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->o:I

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView$i0;->b(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/media2/widget/MediaControlView;->m:I

    goto :goto_0

    :cond_1
    if-ne p3, p4, :cond_2

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->u0:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView$i0;->c(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->p:I

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView$i0;->b(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iput p4, p1, Landroidx/media2/widget/MediaControlView;->m:I

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->e(Landroid/widget/BaseAdapter;)V

    goto :goto_3

    :cond_3
    iget p2, p1, Landroidx/media2/widget/MediaControlView;->n:I

    add-int/lit8 p5, p2, 0x1

    if-eq p3, p5, :cond_7

    if-lez p3, :cond_4

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->d:Luw;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    sub-int/2addr p3, p4

    goto :goto_1

    :cond_4
    iget-object p3, p1, Landroidx/media2/widget/MediaControlView;->d:Luw;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->s0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p3, p1}, Luw;->i(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    goto :goto_2

    :cond_5
    iget p2, p1, Landroidx/media2/widget/MediaControlView;->p:I

    if-eq p3, p2, :cond_7

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->v0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p2, Landroidx/media2/widget/MediaControlView;->d:Luw;

    invoke-virtual {p2, p1}, Luw;->F(F)V

    goto :goto_2

    :cond_6
    iget p2, p1, Landroidx/media2/widget/MediaControlView;->o:I

    if-eq p3, p2, :cond_7

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->r0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p1, Landroidx/media2/widget/MediaControlView;->d:Luw;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->r0:Ljava/util/List;

    :goto_1
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p2, p1}, Luw;->E(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$w;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    :goto_3
    return-void
.end method
