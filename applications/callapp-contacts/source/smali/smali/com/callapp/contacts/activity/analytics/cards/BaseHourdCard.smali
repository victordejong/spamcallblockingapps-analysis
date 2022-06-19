.class public abstract Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public callDayNightTimeGraphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

.field public dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

.field public mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method


# virtual methods
.method public animateGraph()V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;->callDayNightTimeGraphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;->dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    const-string v2, "dataCurrent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->d:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    .line 1069
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getTotalIncoming()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "progressIncoming"

    const-string v5, "progressOutgoing"

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getTotalOutgoing()I

    move-result v2

    if-nez v2, :cond_8

    .line 1070
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setMax(F)V

    .line 1071
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setMax(F)V

    .line 1072
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    .line 1073
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    .line 1153
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    const-string v2, "binding.dayTextOutgoing"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->b:Landroid/widget/ImageView;

    const-string v3, "binding.dayImageOutgoing"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1155
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->c:Landroid/widget/TextView;

    const-string v3, "binding.dayTextIncoming"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->a:Landroid/widget/ImageView;

    const-string v3, "binding.dayImageIncoming"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    const v2, 0x7f0601c7

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 1158
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    const v3, 0x7f060110

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setSecondaryProgressColor(I)V

    .line 1159
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 1160
    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setSecondaryProgressColor(I)V

    return-void

    .line 1076
    :cond_8
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v2, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_9
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v2, v6}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setMax(F)V

    .line 1077
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v2, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2, v6}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setMax(F)V

    .line 1080
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getOutgoingNight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getTotalOutgoing()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v2, v6

    if-gez v7, :cond_b

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    float-to-int v2, v2

    .line 1088
    :goto_0
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getIncomingNight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->getTotalIncoming()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    cmpg-float v1, v7, v6

    if-gez v1, :cond_c

    float-to-int v1, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    float-to-int v1, v7

    :goto_1
    int-to-float v6, v1

    .line 1098
    iget v7, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_d

    cmpl-float v7, v6, v3

    if-lez v7, :cond_d

    .line 1099
    iget v6, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a:F

    :cond_d
    int-to-float v7, v2

    .line 1102
    iget v8, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_e

    cmpl-float v3, v7, v3

    if-lez v3, :cond_e

    .line 1103
    iget v7, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a:F

    .line 1105
    :cond_e
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v3, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v3, v7}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    .line 1106
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v3, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v3, v6}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    .line 1108
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v3, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getProgress()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->setupOutgoingCalls(IF)V

    .line 1109
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->setupIncomingCalls(I)V

    return-void
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204a0

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x6e

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;->refreshCardData()V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract refreshCardData()V
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
