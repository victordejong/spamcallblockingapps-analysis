.class public final synthetic Lrx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lrx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->X(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
