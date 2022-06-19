.class final Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;
    .locals 2

    .line 118
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;-><init>(Landroid/os/Parcel;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;->createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;
    .locals 0

    .line 123
    new-array p1, p1, [Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;->newArray(I)[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;

    move-result-object p1

    return-object p1
.end method
