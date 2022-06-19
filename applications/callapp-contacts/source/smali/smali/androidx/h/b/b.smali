.class public final Landroidx/h/b/b;
.super Landroidx/h/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/h/b/a<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private final k:Landroidx/h/b/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/c<",
            "Landroid/database/Cursor;",
            ">.a;"
        }
    .end annotation
.end field

.field private l:Landroid/net/Uri;

.field private m:Landroid/database/Cursor;

.field private n:Landroidx/core/os/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Landroidx/h/b/a;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance p1, Landroidx/h/b/c$a;

    invoke-direct {p1, p0}, Landroidx/h/b/c$a;-><init>(Landroidx/h/b/c;)V

    iput-object p1, p0, Landroidx/h/b/b;->k:Landroidx/h/b/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Landroidx/h/b/a;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance p1, Landroidx/h/b/c$a;

    invoke-direct {p1, p0}, Landroidx/h/b/c$a;-><init>(Landroidx/h/b/c;)V

    iput-object p1, p0, Landroidx/h/b/b;->k:Landroidx/h/b/c$a;

    .line 139
    iput-object p2, p0, Landroidx/h/b/b;->l:Landroid/net/Uri;

    .line 140
    iput-object p3, p0, Landroidx/h/b/b;->c:[Ljava/lang/String;

    .line 141
    iput-object p4, p0, Landroidx/h/b/b;->d:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Landroidx/h/b/b;->e:[Ljava/lang/String;

    .line 143
    iput-object p6, p0, Landroidx/h/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .line 99
    invoke-virtual {p0}, Landroidx/h/b/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    .line 107
    iput-object p1, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    .line 109
    invoke-virtual {p0}, Landroidx/h/b/b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-super {p0, p1}, Landroidx/h/b/a;->b(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private u()Landroid/database/Cursor;
    .locals 9

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroidx/h/b/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroidx/core/os/a;

    invoke-direct {v0}, Landroidx/core/os/a;-><init>()V

    iput-object v0, p0, Landroidx/h/b/b;->n:Landroidx/core/os/a;

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 64
    :try_start_1
    invoke-virtual {p0}, Landroidx/h/b/b;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroidx/h/b/b;->l:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/h/b/b;->c:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/h/b/b;->d:Ljava/lang/String;

    iget-object v6, p0, Landroidx/h/b/b;->e:[Ljava/lang/String;

    iget-object v7, p0, Landroidx/h/b/b;->f:Ljava/lang/String;

    iget-object v8, p0, Landroidx/h/b/b;->n:Landroidx/core/os/a;

    invoke-static/range {v2 .. v8}, Landroidx/core/content/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/a;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 70
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 71
    iget-object v2, p0, Landroidx/h/b/b;->k:Landroidx/h/b/c$a;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 73
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :cond_0
    :goto_0
    monitor-enter p0

    .line 80
    :try_start_4
    iput-object v0, p0, Landroidx/h/b/b;->n:Landroidx/core/os/a;

    .line 81
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_5
    iput-object v0, p0, Landroidx/h/b/b;->n:Landroidx/core/os/a;

    .line 81
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 59
    :cond_1
    :try_start_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0

    :catchall_3
    move-exception v0

    .line 62
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 42
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 1174
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/h/b/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/b;->l:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Landroidx/h/b/b;->c:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/b;->d:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Landroidx/h/b/b;->e:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/b;->f:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCursor="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Landroidx/h/b/b;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/h/b/b;->u()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/h/b/a;->e()V

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Landroidx/h/b/b;->n:Landroidx/core/os/a;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroidx/core/os/a;->b()V

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final g()V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, v0}, Landroidx/h/b/b;->a(Landroid/database/Cursor;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroidx/h/b/b;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroidx/h/b/b;->o()V

    :cond_2
    return-void
.end method

.method protected final h()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/h/b/b;->n()Z

    return-void
.end method

.method protected final i()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/h/b/a;->i()V

    .line 1169
    invoke-virtual {p0}, Landroidx/h/b/b;->n()Z

    .line 186
    iget-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Landroidx/h/b/b;->m:Landroid/database/Cursor;

    return-void
.end method
