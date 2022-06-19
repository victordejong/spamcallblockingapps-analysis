.class final Lcom/callapp/contacts/util/SmsUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/SmsUtils;->a(Ljava/util/List;)Lcom/callapp/common/util/SerializablePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/common/util/SerializablePair<",
        "Ljava/util/Date;",
        "Lcom/callapp/common/util/SerializablePair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 3

    .line 1093
    sget-object v0, Lcom/callapp/contacts/util/SmsUtils;->c:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    iget-object v0, v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-static {}, Lcom/callapp/contacts/util/SmsUtils;->a()Lcom/callapp/contacts/framework/dao/column/DateColumn;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 1095
    sget-object v2, Lcom/callapp/contacts/util/SmsUtils;->b:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1096
    new-instance v2, Lcom/callapp/common/util/SerializablePair;

    invoke-direct {v2, p1, v0}, Lcom/callapp/common/util/SerializablePair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 1097
    new-instance p1, Lcom/callapp/common/util/SerializablePair;

    invoke-direct {p1, v1, v2}, Lcom/callapp/common/util/SerializablePair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    return-object p1
.end method
