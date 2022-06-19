.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {p2}, Lu71;->w(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const v2, 0x7f0a0262

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
