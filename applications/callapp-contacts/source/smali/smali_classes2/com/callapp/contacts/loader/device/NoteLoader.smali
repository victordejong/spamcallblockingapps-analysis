.class public Lcom/callapp/contacts/loader/device/NoteLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "@@@"

    .line 82
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/common/util/Joiner;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;I)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(J)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :goto_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    if-eq p3, v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    .line 99
    invoke-interface {v3, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eq p3, v4, :cond_3

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_3

    .line 102
    invoke-interface {v3, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 108
    invoke-interface {v3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/contacts/loader/device/NoteLoader;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 111
    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p3

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {p3, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p3

    sget-object v2, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v3, "vnd.android.cursor.item/note"

    .line 112
    invoke-virtual {p3, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p3

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 2104
    iget-object v4, p3, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a:Landroid/content/ContentValues;

    iget-object v2, v2, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_4

    .line 116
    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(J)J

    move-result-wide p0

    cmp-long p3, p0, v0

    if-eqz p3, :cond_4

    .line 118
    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentInsert;

    move-result-object p3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 3038
    iget-object p1, p3, Lcom/callapp/contacts/framework/dao/ContentInsert;->a:Landroid/content/ContentValues;

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    sget-object p0, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 119
    invoke-virtual {p3, p0, v3}, Lcom/callapp/contacts/framework/dao/ContentInsert;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentInsert;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/framework/dao/ContentInsert;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentInsert;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentInsert;->b()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static a(J)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v2, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "="

    invoke-virtual {v1, v2, p1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/note"

    .line 60
    invoke-virtual {p0, v1, p1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "!="

    .line 61
    invoke-virtual {p0, p1, v1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance p1, Lcom/callapp/contacts/loader/device/NoteLoader$1;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/NoteLoader$1;-><init>()V

    .line 1185
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "@@@"

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 3

    .line 39
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->note:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(J)[Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/callapp/contacts/loader/device/NoteLoader;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DeviceData;->getNote()[Ljava/lang/String;

    move-result-object v2

    .line 44
    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/loader/device/NoteLoader;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/contact/DeviceData;->setNote([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNote()V

    :cond_1
    return-void
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

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    return-object v0
.end method
