.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->N(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;->b:Z

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;ZZ)V

    return-void
.end method
