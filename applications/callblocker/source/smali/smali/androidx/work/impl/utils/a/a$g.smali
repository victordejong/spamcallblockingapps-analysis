.class final Landroidx/work/impl/utils/a/a$g;
.super Landroidx/work/impl/utils/a/a$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/a/a$a;-><init>(Landroidx/work/impl/utils/a/a$1;)V

    .line 1136
    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p2, p1, Landroidx/work/impl/utils/a/a$h;->c:Landroidx/work/impl/utils/a/a$h;

    .line 1146
    return-void
.end method

.method a(Landroidx/work/impl/utils/a/a$h;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p2, p1, Landroidx/work/impl/utils/a/a$h;->b:Ljava/lang/Thread;

    .line 1141
    return-void
.end method

.method a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$d;Landroidx/work/impl/utils/a/a$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/a/a",
            "<*>;",
            "Landroidx/work/impl/utils/a/a$d;",
            "Landroidx/work/impl/utils/a/a$d;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1161
    monitor-enter p1

    .line 1162
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/a/a;->d:Landroidx/work/impl/utils/a/a$d;

    if-ne v0, p2, :cond_0

    .line 1163
    iput-object p3, p1, Landroidx/work/impl/utils/a/a;->d:Landroidx/work/impl/utils/a/a$d;

    .line 1164
    const/4 v0, 0x1

    monitor-exit p1

    .line 1166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroidx/work/impl/utils/a/a;Landroidx/work/impl/utils/a/a$h;Landroidx/work/impl/utils/a/a$h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/a/a",
            "<*>;",
            "Landroidx/work/impl/utils/a/a$h;",
            "Landroidx/work/impl/utils/a/a$h;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1150
    monitor-enter p1

    .line 1151
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    if-ne v0, p2, :cond_0

    .line 1152
    iput-object p3, p1, Landroidx/work/impl/utils/a/a;->e:Landroidx/work/impl/utils/a/a$h;

    .line 1153
    const/4 v0, 0x1

    monitor-exit p1

    .line 1155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroidx/work/impl/utils/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/a/a",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1172
    monitor-enter p1

    .line 1173
    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1174
    iput-object p3, p1, Landroidx/work/impl/utils/a/a;->c:Ljava/lang/Object;

    .line 1175
    const/4 v0, 0x1

    monitor-exit p1

    .line 1177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
