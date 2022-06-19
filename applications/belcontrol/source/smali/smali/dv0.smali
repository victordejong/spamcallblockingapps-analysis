.class public final synthetic Ldv0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv0;->a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    iput-object p2, p0, Ldv0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Ldv0;->a:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    iget-object v1, p0, Ldv0;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->D(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method
