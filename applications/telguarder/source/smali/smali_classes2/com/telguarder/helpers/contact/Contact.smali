.class public Lcom/telguarder/helpers/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public thumbnailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contactOf(Landroid/database/Cursor;)Lcom/telguarder/helpers/contact/Contact;
    .locals 4

    .line 18
    new-instance v0, Lcom/telguarder/helpers/contact/Contact;

    invoke-direct {v0}, Lcom/telguarder/helpers/contact/Contact;-><init>()V

    const-string v1, "contact_id"

    .line 19
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    const-string v1, "display_name"

    .line 20
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    const-string v1, "data1"

    .line 21
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->phoneNumber:Ljava/lang/String;

    const-string v1, "photo_thumb_uri"

    .line 23
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object v1

    iget-object v2, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/telguarder/helpers/contact/ContactManager;->getThumbnailUriIfContactHasPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/helpers/contact/Contact;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static contactOfDisplayNameLookup(Landroid/database/Cursor;)Lcom/telguarder/helpers/contact/Contact;
    .locals 2

    .line 51
    new-instance v0, Lcom/telguarder/helpers/contact/Contact;

    invoke-direct {v0}, Lcom/telguarder/helpers/contact/Contact;-><init>()V

    const-string v1, "_id"

    .line 52
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    const-string v1, "display_name"

    .line 53
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    const-string v1, "data1"

    .line 54
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/helpers/contact/Contact;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static contactOfEmailLookup(Landroid/database/Cursor;)Lcom/telguarder/helpers/contact/Contact;
    .locals 2

    .line 42
    new-instance v0, Lcom/telguarder/helpers/contact/Contact;

    invoke-direct {v0}, Lcom/telguarder/helpers/contact/Contact;-><init>()V

    const-string v1, "contact_id"

    .line 43
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    const-string v1, "display_name"

    .line 44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static contactOfPhoneLookup(Landroid/database/Cursor;)Lcom/telguarder/helpers/contact/Contact;
    .locals 4

    .line 30
    new-instance v0, Lcom/telguarder/helpers/contact/Contact;

    invoke-direct {v0}, Lcom/telguarder/helpers/contact/Contact;-><init>()V

    const-string v1, "_id"

    .line 31
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    const-string v1, "display_name"

    .line 32
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    const-string v1, "number"

    .line 33
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/contact/Contact;->phoneNumber:Ljava/lang/String;

    const-string v1, "photo_thumb_uri"

    .line 35
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object v1

    iget-object v2, v0, Lcom/telguarder/helpers/contact/Contact;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/telguarder/helpers/contact/ContactManager;->getThumbnailUriIfContactHasPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/helpers/contact/Contact;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method
