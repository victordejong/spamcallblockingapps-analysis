.class public Lcom/esotericsoftware/kryo/serializers/d;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection;",
        ">",
        "Lcom/esotericsoftware/kryo/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/esotericsoftware/kryo/h;

.field c:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    .line 50
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/d;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/d;->c:Ljava/lang/Class;

    .line 184
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/d;->b:Lcom/esotericsoftware/kryo/h;

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/esotericsoftware/kryo/c/e;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {v2}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    move-object v0, v2

    .line 196
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->e()Z

    move-result v2

    .line 200
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->f()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    .line 202
    invoke-virtual {p2, v5}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v5, :cond_2

    .line 249
    :goto_1
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-object v3

    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 206
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;

    move-result-object p3

    .line 207
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_a

    .line 249
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-object p3

    .line 211
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->e()Z

    move-result v5

    .line 212
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->f()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 216
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;

    move-result-object p3

    .line 217
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_9

    .line 222
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_3
    if-ge v4, v6, :cond_7

    .line 225
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 226
    :cond_7
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/esotericsoftware/kryo/c/e;->a()V

    goto :goto_2

    .line 1046
    :cond_8
    iget-object v0, v0, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 230
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    if-eqz v2, :cond_9

    .line 231
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->l()Z

    move-result v2

    :cond_9
    move v5, v6

    :cond_a
    if-eqz v1, :cond_c

    if-eqz v2, :cond_b

    :goto_4
    if-ge v4, v5, :cond_3

    .line 238
    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    if-ge v4, v5, :cond_3

    .line 241
    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    if-ge v4, v5, :cond_3

    .line 245
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_0
    move-exception p2

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    .line 250
    throw p2
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 175
    const-class p2, Ljava/util/ArrayList;

    if-ne p3, p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 176
    :cond_0
    const-class p2, Ljava/util/HashSet;

    if-ne p3, p2, :cond_1

    new-instance p1, Ljava/util/HashSet;

    int-to-float p2, p4

    const/high16 p3, 0x3f400000    # 0.75f

    div-float/2addr p2, p3

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    const/16 p3, 0x10

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    return-object p1

    .line 177
    :cond_1
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 178
    instance-of p2, p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_2
    return-object p1
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/c;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 262
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 263
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/d;->b(Lcom/esotericsoftware/kryo/c;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 9

    .line 44
    check-cast p3, Ljava/util/Collection;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1087
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 1091
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1093
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 1094
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V

    return-void

    .line 1098
    :cond_1
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    .line 1099
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/d;->b:Lcom/esotericsoftware/kryo/h;

    if-nez v4, :cond_2

    .line 1101
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/c/e;->c()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1102
    invoke-static {v5}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    .line 1109
    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    add-int/2addr v1, v2

    .line 1111
    invoke-virtual {p2, v2, v1}, Lcom/esotericsoftware/kryo/a/c;->a(ZI)I

    goto :goto_0

    :cond_4
    add-int/2addr v1, v2

    .line 1115
    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(ZI)I

    goto :goto_1

    :cond_5
    add-int/2addr v1, v2

    .line 1118
    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    :goto_0
    move v0, v3

    .line 1119
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V

    move v3, v0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 1123
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8

    const/4 v7, 0x1

    goto :goto_2

    :cond_8
    if-nez v5, :cond_9

    .line 1127
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    .line 1128
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v8, v5, :cond_7

    add-int/2addr v1, v2

    .line 1129
    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(ZI)I

    .line 1130
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V

    goto :goto_3

    :cond_a
    add-int/2addr v1, v2

    .line 1134
    invoke-virtual {p2, v2, v1}, Lcom/esotericsoftware/kryo/a/c;->a(ZI)I

    .line 1135
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/d;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Collection;)V

    if-nez v5, :cond_b

    .line 1137
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-void

    .line 1141
    :cond_b
    :try_start_1
    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    .line 1142
    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v4

    if-eqz v3, :cond_c

    .line 1144
    invoke-virtual {p2, v7}, Lcom/esotericsoftware/kryo/a/c;->a(Z)V

    move v3, v7

    :cond_c
    :goto_3
    if-eqz v4, :cond_e

    if-eqz v3, :cond_d

    .line 1151
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1152
    invoke-virtual {p1, p2, v0, v4}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_4

    .line 1154
    :cond_d
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1155
    invoke-virtual {p1, p2, v0, v4}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_5

    .line 1158
    :cond_e
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1159
    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 1162
    :cond_f
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    .line 1163
    throw p2
.end method
