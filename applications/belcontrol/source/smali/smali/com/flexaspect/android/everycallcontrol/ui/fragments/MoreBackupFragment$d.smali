.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->M(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Z)V

    return-void
.end method
