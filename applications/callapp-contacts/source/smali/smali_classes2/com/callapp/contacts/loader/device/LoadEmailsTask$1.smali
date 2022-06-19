.class Lcom/callapp/contacts/loader/device/LoadEmailsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadEmailsTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/common/model/json/JSONEmail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadEmailsTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadEmailsTask;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadEmailsTask$1;->a:Lcom/callapp/contacts/loader/device/LoadEmailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 3

    const-string v0, "data1"

    .line 1033
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1037
    :cond_0
    new-instance v1, Lcom/callapp/common/model/json/JSONEmail;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONEmail;-><init>()V

    const/4 v2, 0x1

    .line 1038
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONEmail;->setFromDevice(Z)V

    const-string v2, "data2"

    .line 1039
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/callapp/common/model/json/JSONEmail;->setType(I)V

    .line 1040
    invoke-virtual {v1, v0}, Lcom/callapp/common/model/json/JSONEmail;->setEmail(Ljava/lang/String;)V

    return-object v1
.end method
