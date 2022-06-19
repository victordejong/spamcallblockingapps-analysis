.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->T()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
