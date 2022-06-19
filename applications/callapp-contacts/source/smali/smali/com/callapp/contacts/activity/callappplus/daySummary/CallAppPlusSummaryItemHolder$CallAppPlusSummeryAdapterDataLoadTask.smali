.class final Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallAppPlusSummeryAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    const/4 p1, 0x1

    return p1
.end method
