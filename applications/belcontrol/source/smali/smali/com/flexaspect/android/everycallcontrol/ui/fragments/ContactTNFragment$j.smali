.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    sget-object v0, Lq71$a;->c:Lq71$a;

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Lq71$a;)Lq71$a;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    return-void
.end method
