.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
