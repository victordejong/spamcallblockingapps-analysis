.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->O()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
