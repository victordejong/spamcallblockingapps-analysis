.class public Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private alreadyBounded:Z

.field private callAppPlusData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
            ">;"
        }
    .end annotation
.end field

.field private callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private multiCircleGraphData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowAnimation:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d004f

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->getCallAppPlusData()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->shouldShowAnimation:Z

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->alreadyBounded:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->shouldShowAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->multiCircleGraphData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private getCallAppPlusData()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v2, 0x7f06004a

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v2, 0x7f120199

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f080353

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v2, 0x7f060052

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v2, 0x7f120853

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f08035c

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v2, 0x7f06004e

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v2, 0x7f12066a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f080357

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x7f120390

    const v3, 0x7f06004f

    const/16 v4, 0x1d

    if-ge v1, v4, :cond_0

    .line 210
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v13, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v6, 0x7f080354

    const/4 v7, 0x0

    const v5, 0x7f06004b

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    const/4 v9, 0x1

    const v5, 0x7f120389

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v13, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v6, 0x7f080358

    const/4 v7, 0x0

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v13, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v6, 0x7f080355

    const/4 v7, 0x0

    const v5, 0x7f06004c

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    const/4 v9, 0x1

    const v5, 0x7f12038c

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    .line 218
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v12, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v5, 0x7f080358

    const/4 v6, 0x0

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VIBER:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v3, 0x7f08035a

    const/4 v4, 0x0

    const v2, 0x7f060050

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    const v2, 0x7f12080d

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VONAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v3, 0x7f08035b

    const v2, 0x7f060051

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v2, 0x7f120393

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SIGNAL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v3, 0x7f080356

    const v2, 0x7f06004d

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v2, 0x7f12038d

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;-><init>(IIIZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private setBanner(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V
    .locals 3

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 131
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120180

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120097

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 146
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12012a

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120653

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateData()V
    .locals 20

    move-object/from16 v0, p0

    .line 229
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getDataForCallAppPlusCard()Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;

    move-result-object v1

    .line 1087
    iget v2, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->a:I

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->b:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->c:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->e:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->d:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->f:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->i:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->g:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->h:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 231
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 234
    :goto_0
    new-instance v6, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v7, 0x7f060110

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v6, v8, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v8, 0x42c80000    # 100.0f

    .line 235
    invoke-virtual {v6, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 236
    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v11, 0x7f060052

    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 237
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getWhatsUp()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 238
    invoke-virtual {v10, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 239
    iget-object v11, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v12, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v11, :cond_1

    .line 241
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getWhatsUp()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 245
    :cond_1
    new-instance v11, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 246
    invoke-virtual {v11, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 247
    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x41f00000    # 30.0f

    invoke-direct {v12, v13, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 248
    new-instance v12, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v14, 0x7f06004a

    invoke-static {v14}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-direct {v12, v14, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 249
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getPhone()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 250
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v13, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v12, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 251
    invoke-virtual {v12, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 252
    invoke-virtual {v12, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 253
    iget-object v13, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v14, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v13, :cond_2

    .line 255
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getPhone()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 259
    :cond_2
    new-instance v13, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 260
    invoke-virtual {v13, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 261
    new-instance v14, Landroid/graphics/PointF;

    const/high16 v15, 0x42700000    # 60.0f

    invoke-direct {v14, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 262
    new-instance v14, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v16, 0x7f06004e

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-direct {v14, v4, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 263
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSms()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 264
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v14, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 265
    invoke-virtual {v14, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 266
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v4, :cond_3

    .line 268
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSms()I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 272
    :cond_3
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    const v16, 0x7f06004f

    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getClipboard()I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 277
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getClipboard()I

    move-result v4

    goto :goto_1

    .line 279
    :cond_4
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v4, :cond_5

    .line 283
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getTelegram()I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 284
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getTelegram()I

    move-result v4

    const v15, 0x7f06004f

    const/16 v17, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const v15, 0x7f06004b

    const/16 v17, 0x0

    .line 288
    :goto_2
    new-instance v5, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    move-object/from16 v18, v14

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-direct {v5, v14, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 289
    invoke-virtual {v5, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 290
    new-instance v14, Landroid/graphics/PointF;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-direct {v14, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 291
    new-instance v14, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-direct {v14, v15, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    int-to-float v4, v4

    .line 292
    invoke-virtual {v14, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 293
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v14, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v14, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 295
    invoke-virtual {v14, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 299
    new-instance v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-direct {v4, v8, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v8, 0x42c80000    # 100.0f

    .line 300
    invoke-virtual {v4, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 301
    new-instance v8, Landroid/graphics/PointF;

    const/high16 v15, 0x42f00000    # 120.0f

    invoke-direct {v8, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 302
    new-instance v8, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v19, 0x7f06004c

    invoke-static/range {v19 .. v19}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-direct {v8, v7, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 303
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSearch()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 304
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    const/4 v7, 0x0

    .line 305
    invoke-virtual {v8, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 306
    invoke-virtual {v8, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 307
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v7, :cond_6

    .line 309
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSearch()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 313
    :cond_6
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v7, :cond_7

    .line 315
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getTelegram()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 317
    :cond_7
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VONAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v7, :cond_8

    .line 319
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getVonage()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 322
    :cond_8
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VIBER:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v7, :cond_9

    .line 324
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getViber()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    .line 326
    :cond_9
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    sget-object v15, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SIGNAL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    if-eqz v7, :cond_a

    .line 329
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSignal()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->setNumberOfIdentification(I)V

    :cond_a
    if-nez v17, :cond_b

    .line 339
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getTelegram()I

    move-result v7

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    .line 344
    :goto_3
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getViber()I

    move-result v15

    if-le v15, v7, :cond_c

    .line 345
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getViber()I

    move-result v7

    const v16, 0x7f060050

    .line 350
    :cond_c
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getVonage()I

    move-result v15

    if-le v15, v7, :cond_d

    .line 351
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getVonage()I

    move-result v7

    const v16, 0x7f060051

    .line 356
    :cond_d
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSignal()I

    move-result v15

    if-le v15, v7, :cond_e

    .line 357
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->getSignal()I

    move-result v7

    const v16, 0x7f06004d

    .line 362
    :cond_e
    new-instance v1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v15, 0x7f060110

    invoke-static {v15}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v15

    invoke-direct {v1, v15, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v15, 0x42c80000    # 100.0f

    .line 363
    invoke-virtual {v1, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 364
    new-instance v15, Landroid/graphics/PointF;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-direct {v15, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 365
    new-instance v15, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {v15, v9, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    int-to-float v0, v7

    .line 366
    invoke-virtual {v15, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 367
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v7, 0x43160000    # 150.0f

    invoke-direct {v0, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v15, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    .line 368
    invoke-virtual {v15, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 369
    invoke-virtual {v15, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_f

    .line 378
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_f
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v18

    .line 383
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_10

    .line 390
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_10
    new-instance v1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    goto :goto_4

    .line 396
    :cond_11
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const/4 v6, 0x1

    aput-object v11, v3, v6

    const/4 v6, 0x2

    aput-object v13, v3, v6

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    move-object v1, v0

    :goto_4
    const v0, 0x7f0601ec

    .line 401
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    const v0, 0x7f0a0234

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 403
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    .line 404
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0701e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleRadius(Ljava/lang/Float;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nTotal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 408
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;->getMultiCircleGraphData()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->multiCircleGraphData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204f8

    .line 75
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

    .line 69
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 174
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V
    .locals 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->alreadyBounded:Z

    .line 106
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120182

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120181

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->setBanner(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V

    .line 112
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->shouldShowAnimation:Z

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->multiCircleGraphData:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusData:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V

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

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0464

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

    .line 86
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 87
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 100
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->callAppPlusVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public refreshCardData()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->updateCardData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->updateData()V

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->showCard(Z)V

    return-void
.end method
