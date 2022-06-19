.class public Lcom/callapp/contacts/framework/dao/ContentQuery;
.super Lcom/callapp/contacts/framework/dao/BaseWhereSupport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/framework/dao/BaseWhereSupport<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/StringBuilder;

.field private e:Landroid/net/Uri;

.field private f:Landroid/net/Uri$Builder;

.field private g:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->b:I

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->e:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/framework/dao/ContentQuery;)Landroid/os/CancellationSignal;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->g:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1

    .line 397
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentInsert;
    .locals 1

    .line 401
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentInsert;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentInsert;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static c(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentUpdate;
    .locals 1

    .line 405
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentUpdate;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentUpdate;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static d(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentDelete;
    .locals 1

    .line 409
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentDelete;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentDelete;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public final a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "*>;)",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(ZLcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    const-string v1, " "

    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p2, " ASC"

    goto :goto_0

    :cond_2
    const-string p2, " DESC"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final varargs a([Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 3

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 74
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 3

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 81
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 189
    iput v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    const/4 v0, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 195
    :try_start_1
    new-instance v2, Lcom/callapp/contacts/framework/dao/RowContext;

    invoke-direct {v2}, Lcom/callapp/contacts/framework/dao/RowContext;-><init>()V

    .line 196
    iput-object v1, v2, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {p1, v2}, Lcom/callapp/contacts/framework/dao/RowCallback;->onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 202
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 203
    throw p1
.end method

.method public final a(Ljava/util/Collection;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 272
    :try_start_1
    new-instance v0, Lcom/callapp/contacts/framework/dao/RowContext;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/dao/RowContext;-><init>()V

    .line 273
    iput-object v1, v0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    .line 274
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 276
    :try_start_2
    invoke-interface {p2, v0}, Lcom/callapp/contacts/framework/dao/RowCallback;->onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 285
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 286
    throw p1
.end method

.method public final a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 252
    :try_start_1
    new-instance v1, Lcom/callapp/contacts/framework/dao/RowContext;

    invoke-direct {v1}, Lcom/callapp/contacts/framework/dao/RowContext;-><init>()V

    .line 253
    iput-object v2, v1, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    .line 254
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {p1, v1}, Lcom/callapp/contacts/framework/dao/RowCallback;->onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    .line 262
    :cond_1
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 263
    throw p1
.end method

.method public final a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z
    .locals 3

    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 302
    :try_start_1
    new-instance v0, Lcom/callapp/contacts/framework/dao/RowContext;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/dao/RowContext;-><init>()V

    .line 303
    iput-object v1, v0, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    .line 304
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {p1, v0}, Lcom/callapp/contacts/framework/dao/RowVisitor;->onRow(Lcom/callapp/contacts/framework/dao/RowContext;)V

    .line 306
    iget-boolean v2, v0, Lcom/callapp/contacts/framework/dao/RowContext;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 312
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 313
    throw p1
.end method

.method public final b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/column/Column<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/util/Collection;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 332
    :try_start_1
    new-instance v2, Lcom/callapp/contacts/framework/dao/RowContext;

    invoke-direct {v2}, Lcom/callapp/contacts/framework/dao/RowContext;-><init>()V

    .line 333
    iput-object v1, v2, Lcom/callapp/contacts/framework/dao/RowContext;->a:Landroid/database/Cursor;

    .line 334
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    invoke-interface {p1, v2}, Lcom/callapp/contacts/framework/dao/RowCallback;->onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;

    move-result-object v3

    .line 336
    iget-boolean v4, v2, Lcom/callapp/contacts/framework/dao/RowContext;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 342
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 343
    throw p1
.end method

.method final synthetic c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 1349
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    .line 1350
    iget v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    if-lez v1, :cond_1

    .line 1351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, " LIMIT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 1356
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v2

    .line 1357
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 1359
    iget v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->b:I

    if-lez v0, :cond_3

    .line 1360
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->g:Landroid/os/CancellationSignal;

    .line 1361
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery$1;-><init>(Lcom/callapp/contacts/framework/dao/ContentQuery;)V

    iget v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->b:I

    .line 1368
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    goto :goto_1

    .line 1370
    :cond_3
    iput-object v2, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->g:Landroid/os/CancellationSignal;

    .line 1374
    :goto_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    .line 1376
    array-length v2, p2

    if-lez v2, :cond_5

    const-string v2, "whereArgs=[%s"

    const/4 v3, 0x0

    .line 1378
    :goto_2
    array-length v4, p2

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_4

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",%s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1381
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1382
    move-object v3, p2

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, ""

    .line 1385
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1386
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v9, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->g:Landroid/os/CancellationSignal;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    .line 1387
    const-class v3, Lcom/callapp/contacts/framework/dao/ContentQuery;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    .line 1388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "executeWithWhereClause this=%s whereClause=%s %s time=%s"

    .line 1387
    invoke-static {v3, p1, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1390
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v9, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->g:Landroid/os/CancellationSignal;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    :goto_4
    return-object p2
.end method

.method protected final c()Z
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->isNumTriesOK()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 218
    iput v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    return v2

    :cond_1
    return v1
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    .line 415
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 423
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    .line 419
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 424
    throw v0

    :catch_0
    move-object v1, v0

    .line 423
    :catch_1
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriBuilder()Landroid/net/Uri$Builder;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentQuery{columns="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uriBuilder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery;->f:Landroid/net/Uri$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
