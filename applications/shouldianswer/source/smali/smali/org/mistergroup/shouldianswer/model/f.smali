.class public final Lorg/mistergroup/shouldianswer/model/f;
.super Ljava/lang/Object;
.source "BlockExceptionDao_Impl.java"

# interfaces
.implements Lorg/mistergroup/shouldianswer/model/e;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    .line 30
    new-instance v0, Lorg/mistergroup/shouldianswer/model/f$1;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/f$1;-><init>(Lorg/mistergroup/shouldianswer/model/f;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->b:Landroidx/room/c;

    .line 62
    new-instance v0, Lorg/mistergroup/shouldianswer/model/f$2;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/f$2;-><init>(Lorg/mistergroup/shouldianswer/model/f;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->c:Landroidx/room/b;

    .line 73
    new-instance v0, Lorg/mistergroup/shouldianswer/model/f$3;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/f$3;-><init>(Lorg/mistergroup/shouldianswer/model/f;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->d:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM blockexception"

    .line 123
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 125
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 127
    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 128
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 129
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 130
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "block"

    .line 131
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "masked"

    .line 132
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 133
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 136
    new-instance v10, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 138
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 139
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 141
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 144
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 147
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 151
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v0

    .line 153
    :goto_1
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 156
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    move v12, v0

    .line 158
    :goto_2
    invoke-virtual {v10, v12}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 159
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 165
    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM blockexception WHERE numberNormalized=?"

    .line 279
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    if-nez p1, :cond_0

    .line 282
    invoke-virtual {v1, v0}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 286
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 287
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "id"

    .line 289
    invoke-static {p1, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "number"

    .line 290
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 291
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 292
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "block"

    .line 293
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "masked"

    .line 294
    invoke-static {p1, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 298
    new-instance v10, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 300
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 301
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 303
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 307
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 309
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 313
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    move v11, v0

    goto :goto_2

    :cond_1
    move v11, v3

    .line 315
    :goto_2
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 318
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    move v11, v0

    goto :goto_3

    :cond_2
    move v11, v3

    .line 320
    :goto_3
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 321
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 325
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 326
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 325
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 326
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 327
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM blockexception WHERE number=? and country=?"

    .line 171
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Landroidx/room/m;->a(I)V

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 184
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 185
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 187
    invoke-static {p1, p2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v3, "number"

    .line 188
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "numberNormalized"

    .line 189
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "country"

    .line 190
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "block"

    .line 191
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "masked"

    .line 192
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 193
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 196
    new-instance v9, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 198
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 199
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 201
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 204
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 205
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 207
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 211
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    move v10, v2

    goto :goto_3

    :cond_2
    move v10, v0

    .line 213
    :goto_3
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 216
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_3

    move v10, v2

    goto :goto_4

    :cond_3
    move v10, v0

    .line 218
    :goto_4
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 219
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 223
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v8

    :catchall_0
    move-exception p2

    .line 223
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 225
    throw p2
.end method

.method public a(Lorg/mistergroup/shouldianswer/model/d;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 97
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)I

    .line 100
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->h()V

    .line 103
    throw p1
.end method

.method public varargs a([Lorg/mistergroup/shouldianswer/model/d;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 85
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a([Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->h()V

    .line 91
    throw p1
.end method

.method public b()Lorg/mistergroup/shouldianswer/model/d;
    .locals 11

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM blockexception WHERE block=1 limit 0,1"

    .line 231
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 233
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v4, "id"

    .line 235
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "number"

    .line 236
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "numberNormalized"

    .line 237
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "country"

    .line 238
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "block"

    .line 239
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "masked"

    .line 240
    invoke-static {v2, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 242
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 243
    new-instance v3, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v3}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 245
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 246
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 248
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 251
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 254
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 258
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    .line 260
    :goto_0
    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 263
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v5

    .line 265
    :cond_1
    invoke-virtual {v3, v0}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 273
    throw v0
.end method

.method public c()V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 109
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/f;->d:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->c()Landroidx/i/a/f;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 112
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    .line 113
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->h()V

    .line 116
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/f;->d:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 115
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->h()V

    .line 116
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->d:Landroidx/room/p;

    invoke-virtual {v2, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    .line 117
    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM blockexception WHERE block=1"

    .line 333
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 335
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 337
    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 338
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 339
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 340
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "block"

    .line 341
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "masked"

    .line 342
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 343
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 346
    new-instance v10, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 348
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 349
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 351
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 352
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 354
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 355
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 357
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 358
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 361
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v0

    .line 363
    :goto_1
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 366
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    move v12, v0

    .line 368
    :goto_2
    invoke-virtual {v10, v12}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 369
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 373
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 374
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 374
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 375
    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM blockexception WHERE block=0"

    .line 381
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 383
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 385
    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 386
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 387
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 388
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "block"

    .line 389
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "masked"

    .line 390
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 391
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 394
    new-instance v10, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 396
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 397
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 399
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 400
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 402
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 403
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 405
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 406
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 409
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v0

    .line 411
    :goto_1
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 414
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    move v12, v0

    .line 416
    :goto_2
    invoke-virtual {v10, v12}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 417
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 422
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 421
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 422
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 423
    throw v0
.end method

.method public f()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM blockexception WHERE masked=1"

    .line 429
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 431
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/f;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 433
    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 434
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 435
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 436
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "block"

    .line 437
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "masked"

    .line 438
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 439
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 442
    new-instance v10, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 444
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 445
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(I)V

    .line 447
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 448
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    .line 450
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 451
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    .line 453
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 454
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    .line 457
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    move v11, v0

    .line 459
    :goto_1
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 462
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    move v12, v0

    .line 464
    :goto_2
    invoke-virtual {v10, v12}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 465
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 469
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 470
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 469
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 470
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 471
    throw v0
.end method
