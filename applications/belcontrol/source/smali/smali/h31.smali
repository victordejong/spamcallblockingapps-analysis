.class public final synthetic Lh31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh31;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    iput-object p2, p0, Lh31;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh31;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    iget-object v1, p0, Lh31;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->Q(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
