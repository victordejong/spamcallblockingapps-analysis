.class public abstract Lio/objectbox/Cursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static LOG_READ_NOT_CLOSED:Z = false

.field protected static final PUT_FLAG_COMPLETE:I = 0x2

.field protected static final PUT_FLAG_FIRST:I = 0x1

.field static TRACK_CREATION_STACK:Z


# instance fields
.field public final boxStoreForEntities:Lio/objectbox/BoxStore;

.field protected closed:Z

.field private final creationThrowable:Ljava/lang/Throwable;

.field protected final cursor:J

.field protected final entityInfo:Lio/objectbox/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final readOnly:Z

.field protected final tx:Lio/objectbox/Transaction;


# direct methods
.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Transaction;",
            "J",
            "Lio/objectbox/c<",
            "TT;>;",
            "Lio/objectbox/BoxStore;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 141
    iput-object p1, p0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    .line 1210
    iget-boolean p1, p1, Lio/objectbox/Transaction;->d:Z

    .line 142
    iput-boolean p1, p0, Lio/objectbox/Cursor;->readOnly:Z

    .line 143
    iput-wide p2, p0, Lio/objectbox/Cursor;->cursor:J

    .line 144
    iput-object p4, p0, Lio/objectbox/Cursor;->entityInfo:Lio/objectbox/c;

    .line 145
    iput-object p5, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    .line 147
    invoke-interface {p4}, Lio/objectbox/c;->getAllProperties()[Lio/objectbox/g;

    move-result-object p1

    .line 148
    array-length p4, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p1, v0

    .line 2177
    iget-boolean v2, v1, Lio/objectbox/g;->k:Z

    if-nez v2, :cond_2

    .line 150
    iget-object v2, v1, Lio/objectbox/g;->h:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/objectbox/Cursor;->getPropertyId(Ljava/lang/String;)I

    move-result v2

    .line 2181
    iget v3, v1, Lio/objectbox/g;->c:I

    if-lez v3, :cond_1

    .line 2184
    iget v3, v1, Lio/objectbox/g;->c:I

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    .line 2187
    iput-boolean v2, v1, Lio/objectbox/g;->k:Z

    goto :goto_1

    .line 2185
    :cond_0
    new-instance p1, Lio/objectbox/exception/DbException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/objectbox/g;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not match ID in DB: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2182
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal property ID "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v1, Lio/objectbox/g;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/objectbox/g;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_3
    sget-boolean p1, Lio/objectbox/Cursor;->TRACK_CREATION_STACK:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lio/objectbox/Cursor;->creationThrowable:Ljava/lang/Throwable;

    .line 156
    invoke-virtual {p0, p2, p3, p5}, Lio/objectbox/Cursor;->nativeSetBoxStoreForEntities(JLjava/lang/Object;)V

    return-void

    .line 139
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transaction is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static native collect002033(JJIIJIJIFIFIFIDIDID)J
.end method

.method protected static native collect004000(JJIIJIJIJIJ)J
.end method

.method protected static native collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J
.end method

.method protected static native collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J
.end method

.method protected static native collect430000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BI[BI[B)J
.end method

.method static native nativeDeleteEntity(JJ)Z
.end method

.method static native nativeFirstEntity(J)Ljava/lang/Object;
.end method

.method static native nativeGetEntity(JJ)Ljava/lang/Object;
.end method

.method static native nativeLookupKeyUsingIndex(JILjava/lang/String;)J
.end method

.method static native nativeNextEntity(J)Ljava/lang/Object;
.end method

.method static native nativeSeek(JJ)Z
.end method


# virtual methods
.method protected checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TARGET:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TTARGET;>;",
            "Ljava/lang/Class<",
            "TTARGET;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 324
    instance-of v1, v0, Lio/objectbox/relation/ToMany;

    if-eqz v1, :cond_10

    .line 325
    move-object v1, v0

    check-cast v1, Lio/objectbox/relation/ToMany;

    .line 326
    invoke-virtual {v1}, Lio/objectbox/relation/ToMany;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 327
    invoke-virtual {v8, v0}, Lio/objectbox/Cursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v9

    .line 3798
    :try_start_0
    iget-object v0, v1, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v0, v0, Lio/objectbox/relation/b;->i:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3799
    :goto_0
    iget-object v3, v1, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v3, v3, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v3}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v10

    .line 3800
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 3802
    :try_start_1
    iget-object v6, v1, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 3803
    invoke-interface {v10, v7}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v11

    cmp-long v13, v11, v3

    if-nez v13, :cond_1

    .line 3804
    iget-object v11, v1, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3807
    :cond_2
    iget-boolean v6, v1, Lio/objectbox/relation/ToMany;->g:Z

    if-eqz v6, :cond_3

    .line 3808
    iget-object v6, v1, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    iget-object v7, v1, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3810
    :cond_3
    iget-object v6, v1, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3811
    iget-object v6, v1, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 3812
    iget-object v7, v1, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_4
    move-object v6, v5

    .line 3814
    :goto_2
    iget-object v7, v1, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3815
    new-instance v7, Ljava/util/ArrayList;

    iget-object v11, v1, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3816
    iget-object v11, v1, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    move-object v11, v6

    move-object v6, v7

    goto :goto_3

    :cond_5
    move-object v11, v6

    move-object v6, v5

    goto :goto_3

    :cond_6
    move-object v6, v5

    move-object v11, v6

    .line 3820
    :goto_3
    iget-object v7, v1, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v5

    goto :goto_4

    :cond_7
    iget-object v7, v1, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 3821
    :goto_4
    iget-object v12, v1, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 3822
    iget-object v12, v1, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 3823
    :goto_5
    iget-object v12, v1, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 3824
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_a

    .line 3827
    :try_start_2
    array-length v12, v7

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_a

    aget-object v14, v7, v13

    .line 3828
    invoke-interface {v10, v14}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v14

    cmp-long v16, v14, v3

    if-eqz v16, :cond_9

    .line 3830
    invoke-virtual {v9, v14, v15}, Lio/objectbox/Cursor;->deleteEntity(J)Z

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_b

    .line 3835
    array-length v7, v5

    :goto_7
    if-ge v2, v7, :cond_b

    aget-object v12, v5, v2

    .line 3836
    invoke-virtual {v9, v12}, Lio/objectbox/Cursor;->put(Ljava/lang/Object;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_e

    .line 3841
    iget-object v0, v1, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v0

    iget-object v2, v1, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v12

    cmp-long v0, v12, v3

    if-eqz v0, :cond_d

    if-eqz v6, :cond_c

    move-object v2, v1

    move-object/from16 v3, p0

    move-wide v4, v12

    move-object v7, v10

    .line 3847
    invoke-virtual/range {v2 .. v7}, Lio/objectbox/relation/ToMany;->a(Lio/objectbox/Cursor;JLjava/util/List;Lio/objectbox/b/c;)V

    :cond_c
    if-eqz v11, :cond_e

    move-object v2, v1

    move-object/from16 v3, p0

    move-wide v4, v12

    move-object v6, v11

    move-object v7, v10

    .line 3850
    invoke-virtual/range {v2 .. v7}, Lio/objectbox/relation/ToMany;->a(Lio/objectbox/Cursor;J[Ljava/lang/Object;Lio/objectbox/b/c;)V

    goto :goto_8

    .line 3843
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source entity has no ID (should have been put before)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_e
    :goto_8
    if-eqz v9, :cond_11

    .line 329
    invoke-virtual {v9}, Lio/objectbox/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 3824
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 327
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v9, :cond_f

    .line 329
    :try_start_6
    invoke-virtual {v9}, Lio/objectbox/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v2

    :cond_10
    move-object/from16 v8, p0

    :cond_11
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lio/objectbox/Cursor;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lio/objectbox/Cursor;->closed:Z

    .line 228
    iget-object v0, p0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, v0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    .line 2537
    iget-boolean v0, v0, Lio/objectbox/BoxStore;->m:Z

    if-nez v0, :cond_0

    .line 229
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Cursor;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public count(J)J
    .locals 2

    .line 218
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/objectbox/Cursor;->nativeCount(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public deleteAll()V
    .locals 2

    .line 210
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Cursor;->nativeDeleteAll(J)V

    return-void
.end method

.method public deleteEntity(J)Z
    .locals 2

    .line 206
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1, p1, p2}, Lio/objectbox/Cursor;->nativeDeleteEntity(JJ)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lio/objectbox/Cursor;->closed:Z

    if-nez v0, :cond_3

    .line 167
    iget-boolean v0, p0, Lio/objectbox/Cursor;->readOnly:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/objectbox/Cursor;->LOG_READ_NOT_CLOSED:Z

    if-eqz v0, :cond_2

    .line 168
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Cursor was not closed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lio/objectbox/Cursor;->creationThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Cursor was initially created here:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lio/objectbox/Cursor;->creationThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lio/objectbox/Cursor;->close()V

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :cond_3
    return-void
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 197
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1}, Lio/objectbox/Cursor;->nativeFirstEntity(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 189
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1, p1, p2}, Lio/objectbox/Cursor;->nativeGetEntity(JJ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 202
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Cursor;->nativeGetAllEntities(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getBacklinkEntities(ILio/objectbox/g;J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/objectbox/g<",
            "*>;J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 286
    :try_start_0
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p2}, Lio/objectbox/g;->b()I

    move-result v4

    move-object v0, p0

    move v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lio/objectbox/Cursor;->nativeGetBacklinkEntities(JIIJ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 288
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Please check if the given property belongs to a valid @Relation: "

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method getBacklinkIds(ILio/objectbox/g;J)[J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/objectbox/g<",
            "*>;J)[J"
        }
    .end annotation

    .line 296
    :try_start_0
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p2}, Lio/objectbox/g;->b()I

    move-result v4

    move-object v0, p0

    move v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lio/objectbox/Cursor;->nativeGetBacklinkIds(JIIJ)[J

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 298
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Please check if the given property belongs to a valid @Relation: "

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getEntityInfo()Lio/objectbox/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/c<",
            "TT;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lio/objectbox/Cursor;->entityInfo:Lio/objectbox/c;

    return-object v0
.end method

.method protected abstract getId(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public getPropertyId(Ljava/lang/String;)I
    .locals 2

    .line 235
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1, p1}, Lio/objectbox/Cursor;->nativePropertyId(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getRelationEntities(IIJZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 305
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lio/objectbox/Cursor;->nativeGetRelationEntities(JIIJZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRelationIds(IIJZ)[J
    .locals 8

    .line 310
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lio/objectbox/Cursor;->nativeGetRelationIds(JIIJZ)[J

    move-result-object p1

    return-object p1
.end method

.method protected getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TARGET:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTARGET;>;)",
            "Lio/objectbox/Cursor<",
            "TTARGET;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    invoke-virtual {v0, p1}, Lio/objectbox/BoxStore;->c(Ljava/lang/Class;)Lio/objectbox/c;

    move-result-object p1

    .line 266
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-interface {p1}, Lio/objectbox/c;->getEntityId()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/Cursor;->nativeGetCursorFor(JI)J

    move-result-wide v0

    .line 267
    invoke-interface {p1}, Lio/objectbox/c;->getCursorFactory()Lio/objectbox/b/b;

    move-result-object p1

    .line 268
    iget-object v2, p0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    iget-object v3, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    invoke-interface {p1, v2, v0, v1, v3}, Lio/objectbox/b/b;->createCursor(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)Lio/objectbox/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getTx()Lio/objectbox/Transaction;
    .locals 1

    .line 247
    iget-object v0, p0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    return-object v0
.end method

.method public internalHandle()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lio/objectbox/Cursor;->closed:Z

    return v0
.end method

.method public isObsolete()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    .line 3218
    iget v1, v0, Lio/objectbox/Transaction;->e:I

    iget-object v0, v0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    iget v0, v0, Lio/objectbox/BoxStore;->o:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method lookupKeyUsingIndex(ILjava/lang/String;)J
    .locals 2

    .line 243
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1, p1, p2}, Lio/objectbox/Cursor;->nativeLookupKeyUsingIndex(JILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public modifyRelations(IJ[JZ)V
    .locals 8

    .line 315
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lio/objectbox/Cursor;->nativeModifyRelations(JIJ[JZ)V

    return-void
.end method

.method public modifyRelationsSingle(IJJZ)V
    .locals 9

    .line 320
    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lio/objectbox/Cursor;->nativeModifyRelationsSingle(JIJJZ)V

    return-void
.end method

.method native nativeCount(JJ)J
.end method

.method native nativeDeleteAll(J)V
.end method

.method native nativeDestroy(J)V
.end method

.method native nativeGetAllEntities(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method native nativeGetBacklinkEntities(JIIJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method native nativeGetBacklinkIds(JIIJ)[J
.end method

.method native nativeGetCursorFor(JI)J
.end method

.method native nativeGetRelationEntities(JIIJZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method native nativeGetRelationIds(JIIJZ)[J
.end method

.method native nativeModifyRelations(JIJ[JZ)V
.end method

.method native nativeModifyRelationsSingle(JIJJZ)V
.end method

.method native nativePropertyId(JLjava/lang/String;)I
.end method

.method native nativeRenew(J)J
.end method

.method native nativeSetBoxStoreForEntities(JLjava/lang/Object;)V
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 193
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1}, Lio/objectbox/Cursor;->nativeNextEntity(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract put(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public renew()V
    .locals 2

    .line 275
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Cursor;->nativeRenew(J)J

    return-void
.end method

.method public seek(J)Z
    .locals 2

    .line 214
    iget-wide v0, p0, Lio/objectbox/Cursor;->cursor:J

    invoke-static {v0, v1, p1, p2}, Lio/objectbox/Cursor;->nativeSeek(JJ)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cursor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/objectbox/Cursor;->cursor:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/objectbox/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "(closed)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
