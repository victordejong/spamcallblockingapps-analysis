.class public final synthetic Lc21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

.field public final synthetic b:Lkq0;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iput-object p2, p0, Lc21;->b:Lkq0;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lc21;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;

    iget-object v1, p0, Lc21;->b:Lkq0;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->S(Lkq0;Landroid/content/DialogInterface;)V

    return-void
.end method
