.class final Lcom/callapp/contacts/util/CallLogUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/CallLogUtils;->getCallLogHistoryRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/contacts/model/contact/CallHistoryData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 9

    .line 1492
    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/RowContext;)I

    move-result v4

    .line 1493
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    iget-object v1, p1, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/database/Cursor;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v7

    .line 1494
    new-instance v8, Lcom/callapp/contacts/model/contact/CallHistoryData;

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v1

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v0, "duration"

    .line 1495
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/CallHistoryData;-><init>(JLjava/util/Date;IJLcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    return-object v8
.end method
