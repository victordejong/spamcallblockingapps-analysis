.class public abstract Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;,
        Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/CursorWrapper;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c:Ljava/lang/Object;

    .line 29
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    .line 30
    iput p2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->d:I

    return-void
.end method

.method private a(ILcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;)Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 152
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 155
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
.end method

.method protected abstract b(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows<",
            "TDataType;>.DataAndPosition;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->d:I

    return v0
.end method

.method public getDataAtPosition(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataType;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    iget p1, p1, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->a:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;->b:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 39
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPosition()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget v1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 48
    monitor-exit v0

    return v2

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getCount()I

    move-result v1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_a

    if-gez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, -0x1

    if-nez p1, :cond_4

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0, v3}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a(ILcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    iput v1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    .line 61
    monitor-exit v0

    return v3

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 56
    iput v3, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    .line 57
    monitor-exit v0

    return v2

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    .line 68
    monitor-exit v0

    return v3

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 83
    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move v4, v2

    :goto_1
    if-gt v4, p1, :cond_7

    add-int/lit8 v5, v4, -0x1

    .line 86
    iget-object v6, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    if-eqz v6, :cond_6

    .line 88
    iget v5, v6, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->a:I

    iget v6, v6, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->b:I

    add-int/2addr v5, v6

    .line 89
    invoke-direct {p0, v5}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->c(I)Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a(ILcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find the next wrapped position. Previous index was "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " the next index was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and the amount of aggregated data was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    .line 93
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". The maximum inserted key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 94
    monitor-exit v0

    return v3

    .line 99
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;

    if-eqz v2, :cond_9

    .line 101
    iget v2, v2, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->a:I

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 p1, -0x1

    .line 103
    :goto_2
    iput p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    .line 104
    monitor-exit v0

    return v2

    .line 106
    :cond_9
    monitor-exit v0

    return v3

    .line 50
    :cond_a
    :goto_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public moveToPrevious()Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
