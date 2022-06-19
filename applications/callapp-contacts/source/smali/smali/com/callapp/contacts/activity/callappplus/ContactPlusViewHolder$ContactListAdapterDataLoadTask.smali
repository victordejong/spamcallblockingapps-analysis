.class Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactListAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 183
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
