.class final Landroidx/c/a/a$g;
.super Landroidx/c/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1143
    invoke-direct {p0, v0}, Landroidx/c/a/a$a;-><init>(Landroidx/c/a/a$1;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/c/a/a$h;Landroidx/c/a/a$h;)V
    .locals 0

    .line 1153
    iput-object p2, p1, Landroidx/c/a/a$h;->c:Landroidx/c/a/a$h;

    return-void
.end method

.method final a(Landroidx/c/a/a$h;Ljava/lang/Thread;)V
    .locals 0

    .line 1148
    iput-object p2, p1, Landroidx/c/a/a$h;->b:Ljava/lang/Thread;

    return-void
.end method

.method final a(Landroidx/c/a/a;Landroidx/c/a/a$d;Landroidx/c/a/a$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a/a<",
            "*>;",
            "Landroidx/c/a/a$d;",
            "Landroidx/c/a/a$d;",
            ")Z"
        }
    .end annotation

    .line 1169
    monitor-enter p1

    .line 1170
    :try_start_0
    iget-object v0, p1, Landroidx/c/a/a;->d:Landroidx/c/a/a$d;

    if-ne v0, p2, :cond_0

    .line 1171
    iput-object p3, p1, Landroidx/c/a/a;->d:Landroidx/c/a/a$d;

    const/4 p2, 0x1

    .line 1172
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1174
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1175
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Landroidx/c/a/a;Landroidx/c/a/a$h;Landroidx/c/a/a$h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a/a<",
            "*>;",
            "Landroidx/c/a/a$h;",
            "Landroidx/c/a/a$h;",
            ")Z"
        }
    .end annotation

    .line 1158
    monitor-enter p1

    .line 1159
    :try_start_0
    iget-object v0, p1, Landroidx/c/a/a;->e:Landroidx/c/a/a$h;

    if-ne v0, p2, :cond_0

    .line 1160
    iput-object p3, p1, Landroidx/c/a/a;->e:Landroidx/c/a/a$h;

    const/4 p2, 0x1

    .line 1161
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1163
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1164
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Landroidx/c/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1180
    monitor-enter p1

    .line 1181
    :try_start_0
    iget-object v0, p1, Landroidx/c/a/a;->c:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1182
    iput-object p3, p1, Landroidx/c/a/a;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1183
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1185
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1186
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
