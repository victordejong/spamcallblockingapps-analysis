.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Lq81;

    move-result-object v1

    iget-wide v1, v1, Lq81;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
