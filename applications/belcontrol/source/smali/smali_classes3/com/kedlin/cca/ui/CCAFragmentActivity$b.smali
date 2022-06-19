.class public Lcom/kedlin/cca/ui/CCAFragmentActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CCAFragmentActivity;->w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

.field public final synthetic c:Landroid/app/AlertDialog;

.field public final synthetic d:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/Long;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    iput-object p4, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->c:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v0, v0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
