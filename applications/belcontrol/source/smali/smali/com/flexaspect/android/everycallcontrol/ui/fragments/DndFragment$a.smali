.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
