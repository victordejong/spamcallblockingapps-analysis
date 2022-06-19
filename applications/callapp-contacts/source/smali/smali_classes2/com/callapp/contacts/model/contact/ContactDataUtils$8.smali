.class final Lcom/callapp/contacts/model/contact/ContactDataUtils$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/ContactDataUtils;->findExactContactId(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phoneColumn:Lcom/callapp/contacts/framework/dao/column/StringColumn;

.field final synthetic val$phonesMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/framework/dao/column/StringColumn;Ljava/util/Map;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;->val$phoneColumn:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    iput-object p2, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;->val$phonesMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRow(Lcom/callapp/contacts/framework/dao/RowContext;)V
    .locals 8

    .line 384
    sget-object v0, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 385
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;->val$phoneColumn:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    sget-object v2, Lcom/callapp/contacts/model/Constants;->STARRED_COLUMN:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 387
    sget-object v3, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;->val$phonesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 393
    new-instance v4, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p1, v2, v5}, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Lcom/callapp/contacts/model/contact/ContactDataUtils$1;)V

    .line 394
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;->val$phonesMap:Ljava/util/Map;

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
