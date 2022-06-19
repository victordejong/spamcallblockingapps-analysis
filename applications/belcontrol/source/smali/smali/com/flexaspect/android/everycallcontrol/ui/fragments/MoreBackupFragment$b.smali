.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->m(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;->a:Ljava/io/File;

    invoke-static {p1}, Lw71;->e(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f1100dc

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f1100d9

    goto :goto_0

    :cond_1
    const p1, 0x7f1100da

    :goto_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
