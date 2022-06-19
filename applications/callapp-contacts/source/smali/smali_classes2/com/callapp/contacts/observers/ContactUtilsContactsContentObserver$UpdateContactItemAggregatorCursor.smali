.class Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;
.super Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateContactItemAggregatorCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows<",
        "Lcom/callapp/contacts/model/UpdateContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
    .locals 7

    .line 324
    invoke-virtual {p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "contact_id"

    .line 325
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1332
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1333
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1334
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

    .line 328
    new-instance v1, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {v1, p1, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;-><init>(II)V

    return-object v1
.end method

.method public final b(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">.DataAndPosition;"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver$UpdateContactItemAggregatorCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 340
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 342
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v7, Lcom/callapp/contacts/model/UpdateContactItem;

    const-string v8, "contact_id"

    .line 344
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "lookup"

    .line 345
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "display_name"

    .line 346
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/model/UpdateContactItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 351
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, v7, Lcom/callapp/contacts/model/UpdateContactItem;->contactId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    const-string v1, "mimetype"

    .line 353
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 354
    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "data1"

    if-eqz v2, :cond_2

    .line 355
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 357
    iget-object v2, v7, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, v7, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 360
    :cond_1
    iget-object v2, v7, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 361
    iget-object v2, v7, Lcom/callapp/contacts/model/UpdateContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v2, "vnd.android.cursor.item/organization"

    .line 364
    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data4"

    .line 366
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/callapp/contacts/model/UpdateContactItem;->setDescription(Ljava/lang/String;)V

    .line 369
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 371
    :cond_4
    new-instance v0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;

    invoke-direct {v0, p0, v7, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;-><init>(Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;Ljava/lang/Object;I)V

    return-object v0
.end method
