.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;I)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lw81;

    invoke-direct {v0}, Lw81;-><init>()V

    sget-object v1, Lw81$a;->a:Lw81$a;

    goto :goto_0

    :cond_0
    new-instance v0, Lw81;

    invoke-direct {v0}, Lw81;-><init>()V

    sget-object v1, Lw81$a;->c:Lw81$a;

    :goto_0
    invoke-virtual {v0, v1}, Lw81;->G(Lw81$a;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/database/Cursor;)V

    return-void
.end method
