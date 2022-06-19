.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/framework/phone/Phone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 2

    const-string v0, "data1"

    .line 1452
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 1454
    sget-object v1, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1455
    invoke-static {p1}, Lcom/callapp/framework/phone/PhoneType;->fromCode(I)Lcom/callapp/framework/phone/PhoneType;

    move-result-object p1

    .line 2207
    iput-object p1, v0, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    return-object v0
.end method
