.class Lcom/callapp/contacts/loader/device/LoadPhonesTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadPhonesTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Landroid/util/Pair<",
        "Lcom/callapp/framework/phone/Phone;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadPhonesTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadPhonesTask;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadPhonesTask$1;->a:Lcom/callapp/contacts/loader/device/LoadPhonesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 3

    const-string v0, "data1"

    .line 1036
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v1, "data2"

    .line 1038
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data3"

    .line 1039
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneType;->fromCode(I)Lcom/callapp/framework/phone/PhoneType;

    move-result-object v1

    .line 1207
    iput-object v1, v0, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    .line 1043
    :cond_0
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1044
    invoke-virtual {v0, v2}, Lcom/callapp/framework/phone/Phone;->setCustomType(Ljava/lang/String;)V

    :cond_1
    const-string v1, "is_super_primary"

    .line 1046
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->b(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
