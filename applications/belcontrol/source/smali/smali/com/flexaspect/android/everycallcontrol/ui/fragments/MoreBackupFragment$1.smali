.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lbc1;->d()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1$1;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1$1;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get_device_list"

    invoke-static {v2, p1, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method
