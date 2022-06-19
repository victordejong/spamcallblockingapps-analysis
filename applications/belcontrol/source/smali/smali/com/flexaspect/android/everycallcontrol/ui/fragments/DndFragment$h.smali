.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/kedlin/cca/ui/CCAManyStatesButton;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v1, v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->b()Z

    move-result p1

    const-wide/16 v0, 0x168

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->D()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v2, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;I)[J

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)I

    move-result v4

    if-eq p1, v4, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;I)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMinValue(Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    aget-wide v0, v2, v3

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMinValue(Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    const-wide/16 v0, 0x438

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    const-wide/16 v2, 0x4ec

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMinValue(Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMaxValue(Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->h()V

    return-void
.end method
