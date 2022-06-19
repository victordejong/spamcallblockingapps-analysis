.class Lcom/callapp/contacts/loader/device/LoadAddressesTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadAddressesTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/common/model/json/JSONAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadAddressesTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadAddressesTask;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadAddressesTask$1;->a:Lcom/callapp/contacts/loader/device/LoadAddressesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 2

    .line 1030
    new-instance v0, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    const/4 v1, 0x1

    .line 1031
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setFromDevice(Z)V

    const-string v1, "data2"

    .line 1032
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setType(I)V

    const-string v1, "data4"

    .line 1033
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setStreet(Ljava/lang/String;)V

    const-string v1, "data7"

    .line 1034
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    const-string v1, "data8"

    .line 1035
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setState(Ljava/lang/String;)V

    const-string v1, "data9"

    .line 1036
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setPostalCode(Ljava/lang/String;)V

    const-string v1, "data10"

    .line 1037
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    const-string v1, "data5"

    .line 1038
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONAddress;->setPoBox(Ljava/lang/String;)V

    return-object v0
.end method
