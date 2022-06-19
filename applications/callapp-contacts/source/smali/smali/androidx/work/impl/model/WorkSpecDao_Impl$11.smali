.class Landroidx/work/impl/model/WorkSpecDao_Impl$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Landroidx/room/k;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V
    .locals 0

    .line 939
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Landroidx/room/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 944
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Landroidx/room/k;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 946
    invoke-static {v0, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 947
    invoke-static {v0, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    .line 948
    invoke-static {v0, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    .line 949
    invoke-static {v0, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 950
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 951
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 952
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 953
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 954
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 955
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 957
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 958
    invoke-virtual {v5, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 962
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 963
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 965
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 966
    invoke-virtual {v6, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    .line 970
    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 971
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v7, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/b/a;)V

    .line 972
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v7, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/b/a;)V

    .line 973
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 974
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 977
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 978
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 979
    invoke-virtual {v5, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    move-object v8, v9

    :goto_2
    if-nez v8, :cond_4

    .line 982
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 985
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 986
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 987
    invoke-virtual {v6, v9}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_5
    if-nez v9, :cond_6

    .line 990
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 992
    :cond_6
    new-instance v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 993
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 995
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 996
    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    .line 998
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 999
    invoke-static {v11}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    .line 1000
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1001
    iput-object v8, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1002
    iput-object v9, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 1003
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1005
    :cond_7
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1011
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 1008
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1009
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 1011
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 1012
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 1017
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;->val$_statement:Landroidx/room/k;

    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-void
.end method
