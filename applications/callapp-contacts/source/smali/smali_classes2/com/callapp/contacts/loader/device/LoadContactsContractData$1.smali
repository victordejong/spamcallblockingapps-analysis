.class Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadContactsContractData;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/callapp/contacts/loader/device/LoadContactsContractData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadContactsContractData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->f:Lcom/callapp/contacts/loader/device/LoadContactsContractData;

    iput-object p2, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 3

    const-string v0, "mimetype"

    .line 99
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 101
    :pswitch_0
    invoke-static {p1}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONOrgData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :pswitch_1
    invoke-static {p1}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->b(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->d:Ljava/util/List;

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->f:Lcom/callapp/contacts/loader/device/LoadContactsContractData;

    invoke-static {v0, p1}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->a(Lcom/callapp/contacts/loader/device/LoadContactsContractData;Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONEvent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :pswitch_4
    invoke-static {p1}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;->c(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/common/model/json/JSONIMaddress;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadContactsContractData$1;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_5
        -0x4f32162a -> :sswitch_4
        0x5eab085 -> :sswitch_3
        0x1b3458f6 -> :sswitch_2
        0x291e75b8 -> :sswitch_1
        0x38ac87e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
