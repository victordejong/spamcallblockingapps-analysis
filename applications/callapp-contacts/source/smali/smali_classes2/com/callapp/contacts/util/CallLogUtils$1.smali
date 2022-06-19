.class final Lcom/callapp/contacts/util/CallLogUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/CallLogUtils;->getBaseCallLogRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 13

    .line 1478
    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/RowContext;)I

    move-result v5

    .line 1479
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    iget-object v1, p1, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/database/Cursor;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v9

    .line 1480
    new-instance v10, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    const-string v4, "number"

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v6

    const-string v0, "numberlabel"

    .line 1482
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v8, v11

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;-><init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;ILcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    return-object v10
.end method
