.class Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/common/model/json/JSONIMaddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;->a:Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 8

    .line 1089
    new-instance v0, Lcom/callapp/common/model/json/JSONIMaddress;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONIMaddress;-><init>()V

    const/4 v1, 0x1

    .line 1090
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONIMaddress;->setFromDevice(Z)V

    const-string v2, ""

    .line 1091
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1092
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONIMaddress;->setType(I)V

    const-string v3, "account_type"

    .line 1093
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "com.google.android.apps.fireball"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "org.telegram.account"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "com.tencent.mm.account"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "org.thoughtcrime.securesms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "com.google.android.apps.tachyon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "com.skype.contacts.sync"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "com.facebook.messenger"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "com.whatsapp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "com.viber.voip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "org.telegram.messenger"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_a
    const-string v4, "com.viber.voip.account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.whatsapp.w4b"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_1
    const-string v3, "data_id"

    const/4 v4, 0x0

    const-string v5, "="

    const-string v6, "entity"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0x5e6

    .line 1170
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    .line 1171
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1172
    new-instance p1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v7}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    .line 1173
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/com.google.android.apps.fireball.profile"

    .line 1174
    invoke-virtual {p1, v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$4;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;)V

    .line 5185
    invoke-virtual {p1, v1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1174
    check-cast p1, Ljava/lang/String;

    .line 1181
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x5e1

    .line 1116
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    goto/16 :goto_2

    :pswitch_2
    const/16 v1, 0x5e5

    .line 1156
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    .line 1157
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1158
    new-instance p1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v7}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    .line 1159
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/vnd.org.thoughtcrime.securesms.contact"

    .line 1160
    invoke-virtual {p1, v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$3;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;)V

    .line 4185
    invoke-virtual {p1, v1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1160
    check-cast p1, Ljava/lang/String;

    .line 1167
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v1, 0x5e4

    .line 1142
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    .line 1143
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1144
    new-instance p1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v7}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    .line 1145
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/com.google.android.apps.tachyon.phone"

    .line 1146
    invoke-virtual {p1, v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$2;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;)V

    .line 3185
    invoke-virtual {p1, v1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1146
    check-cast p1, Ljava/lang/String;

    .line 1153
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1123
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    .line 1130
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1131
    new-instance p1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    .line 1132
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/com.skype.android.chat.action"

    .line 1133
    invoke-virtual {p1, v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$1;-><init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;)V

    .line 2185
    invoke-virtual {p1, v1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1133
    check-cast p1, Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const/16 p1, 0x5e7

    .line 1184
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    goto :goto_2

    :pswitch_6
    const/16 p1, 0x5e2

    .line 1120
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    goto :goto_2

    .line 1101
    :pswitch_7
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1102
    new-instance p1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    .line 1103
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v2, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    .line 1104
    invoke-virtual {p1, v1, v5, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getCount()Ljava/lang/Integer;

    move-result-object p1

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_c

    const/16 p1, 0x5dd

    .line 1107
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x5de

    .line 1112
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONIMaddress;->setProtocol(I)V

    .line 1113
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;->a:Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;

    const-string v2, "_id"

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;->a(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONIMaddress;->setIMAddress(Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d641daa -> :sswitch_b
        -0x716a26e2 -> :sswitch_a
        -0x71148650 -> :sswitch_9
        -0x62737221 -> :sswitch_8
        -0x5c4004a1 -> :sswitch_7
        -0x5b0c2088 -> :sswitch_6
        -0x410801af -> :sswitch_5
        -0x1e2cf16f -> :sswitch_4
        -0x1cfe9c69 -> :sswitch_3
        0x14c5bb5 -> :sswitch_2
        0x22c14c0a -> :sswitch_1
        0x6ad3eb4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
