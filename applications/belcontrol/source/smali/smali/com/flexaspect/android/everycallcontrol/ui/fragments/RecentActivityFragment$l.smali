.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$l;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""

# interfaces
.implements Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d015a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$l;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
