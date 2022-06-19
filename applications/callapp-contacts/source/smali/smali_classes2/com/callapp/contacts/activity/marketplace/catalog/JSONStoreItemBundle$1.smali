.class final Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
    .locals 1

    .line 124
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
    .locals 0

    .line 129
    new-array p1, p1, [Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle$1;->newArray(I)[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    move-result-object p1

    return-object p1
.end method
