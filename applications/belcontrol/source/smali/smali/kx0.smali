.class public final synthetic Lkx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lkx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->S(Landroid/content/DialogInterface;)V

    return-void
.end method
