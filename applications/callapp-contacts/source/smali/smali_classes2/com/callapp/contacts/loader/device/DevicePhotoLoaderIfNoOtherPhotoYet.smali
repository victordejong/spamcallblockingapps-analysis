.class public Lcom/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet;
.super Lcom/callapp/contacts/loader/device/DevicePhotoLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 1

    .line 10
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-super {p0, p1}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V

    :cond_0
    return-void
.end method
