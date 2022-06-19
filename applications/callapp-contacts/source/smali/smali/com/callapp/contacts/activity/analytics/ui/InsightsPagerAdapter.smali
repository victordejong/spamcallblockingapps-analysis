.class public Lcom/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 13
    invoke-static {p2, p3}, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;->newInstance(ZLjava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 14
    invoke-static {p2, p3}, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;->newInstance(ZLjava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    const p3, 0x7f120685

    .line 15
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const p1, 0x7f1203d0

    .line 16
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
