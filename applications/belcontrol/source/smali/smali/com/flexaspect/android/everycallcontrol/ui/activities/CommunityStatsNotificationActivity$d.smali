.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static a:Landroid/widget/LinearLayout;

.field public static b:Landroid/widget/LinearLayout;

.field public static c:Landroid/widget/TextView;

.field public static d:Landroid/widget/TextView;

.field public static e:Landroid/widget/TextView;

.field public static f:Landroid/widget/TextView;

.field public static g:Landroid/widget/TextView;


# direct methods
.method public static a(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V
    .locals 2

    const v0, 0x7f0a05b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->d:Landroid/widget/TextView;

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0527

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->g:Landroid/widget/TextView;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->b:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->c:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
