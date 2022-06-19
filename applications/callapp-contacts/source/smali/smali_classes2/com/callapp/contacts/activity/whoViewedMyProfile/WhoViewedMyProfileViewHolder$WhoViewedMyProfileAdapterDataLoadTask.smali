.class Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WhoViewedMyProfileAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 2

    .line 96
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;->setDeviceId(J)V

    .line 98
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    return p1
.end method
