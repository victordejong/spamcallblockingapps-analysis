.class final Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContactListAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 114
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
