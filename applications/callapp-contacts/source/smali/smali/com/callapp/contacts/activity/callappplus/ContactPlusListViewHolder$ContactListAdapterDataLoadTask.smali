.class Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactListAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 160
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
