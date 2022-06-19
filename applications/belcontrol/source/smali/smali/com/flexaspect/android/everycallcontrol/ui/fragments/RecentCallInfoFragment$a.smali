.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Li91;

    move-result-object v0

    invoke-virtual {v0}, Li91;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr71$a;->y:Lr71$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lr71$a;->x:Lr71$a;

    :goto_0
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)V

    return-void
.end method
