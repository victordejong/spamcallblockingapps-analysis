.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->on_get_device_list_success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx61$a;

    iget-object v0, v0, Lx61$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx61$a;

    iget-object p2, p2, Lx61$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
