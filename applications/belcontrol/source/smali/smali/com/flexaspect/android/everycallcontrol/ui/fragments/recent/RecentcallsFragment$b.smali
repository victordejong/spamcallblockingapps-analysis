.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
