.class public Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;
.super Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows<",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
    .locals 7

    .line 26
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "contact_id"

    .line 27
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1034
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1035
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1036
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 30
    new-instance v1, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {v1, p1, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;-><init>(II)V

    return-object v1
.end method

.method protected final b(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">.DataAndPosition;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 43
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    const-string v3, "display_name"

    .line 44
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 45
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 46
    iget-object v3, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    :cond_1
    const-string v3, "contact_id"

    .line 48
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    const-string v4, "lookup"

    .line 49
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->lookupKey:Ljava/lang/String;

    const-string v4, "starred"

    .line 50
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c:Z

    .line 51
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-wide v6, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    const-string v4, "mimetype"

    .line 52
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    .line 53
    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "data1"

    if-eqz v5, :cond_3

    .line 54
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 56
    iget-object v5, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v5, "vnd.android.cursor.item/note"

    .line 58
    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->e:Ljava/lang/String;

    .line 61
    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 64
    :cond_5
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    new-instance v0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;

    invoke-direct {v0, p0, v2, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;-><init>(Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;Ljava/lang/Object;I)V

    return-object v0

    .line 69
    :cond_6
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 72
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iput-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    goto :goto_3

    .line 76
    :cond_7
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v2, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 83
    :cond_8
    :goto_3
    new-instance v0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;

    invoke-direct {v0, p0, v1, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;-><init>(Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public getColumnIdName()Ljava/lang/String;
    .locals 1

    const-string v0, "contact_id"

    return-object v0
.end method
