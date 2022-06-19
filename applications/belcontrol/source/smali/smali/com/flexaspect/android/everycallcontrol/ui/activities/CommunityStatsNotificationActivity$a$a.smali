.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq61;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;Lq61;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;->a:Lq61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;->a:Lq61;

    iget-object v0, v0, Lq61;->a:Lq61$b;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lq61$b;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lka1;->o(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lq61$b;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lka1;->o(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    iget-object v3, v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lq61$b;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lq61$b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    iget-object v5, v5, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110201

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v4, v2

    const v2, 0x7f1106a5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lq61$b;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lka1;->o(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->g:Landroid/widget/TextView;

    iget-object v0, v0, Lq61$b;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lka1;->o(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
