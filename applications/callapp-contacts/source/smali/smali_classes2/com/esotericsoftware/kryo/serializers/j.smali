.class public Lcom/esotericsoftware/kryo/serializers/j;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Lcom/esotericsoftware/kryo/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Class;

.field b:Ljava/lang/Class;

.field c:Lcom/esotericsoftware/kryo/h;

.field d:Lcom/esotericsoftware/kryo/h;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/j;->e:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/j;->f:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/j;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 191
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/esotericsoftware/kryo/serializers/j;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Map;

    move-result-object p3

    .line 192
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    return-object p3

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/j;->a:Ljava/lang/Class;

    .line 196
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/j;->b:Ljava/lang/Class;

    .line 197
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/j;->c:Lcom/esotericsoftware/kryo/h;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/j;->d:Lcom/esotericsoftware/kryo/h;

    .line 199
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/c/e;->b()[Lcom/esotericsoftware/kryo/c/e$a;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    .line 202
    aget-object v8, v6, v7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 203
    invoke-static {v8}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 204
    invoke-virtual {p1, v8}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v4

    move-object v2, v8

    :cond_2
    if-nez v5, :cond_3

    .line 209
    aget-object v0, v6, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    invoke-static {v0}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 211
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v5

    move-object v3, v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_a

    if-eqz v6, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-interface {v8, v9}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    :cond_4
    if-eqz v4, :cond_6

    .line 221
    iget-boolean v8, p0, Lcom/esotericsoftware/kryo/serializers/j;->e:Z

    if-eqz v8, :cond_5

    .line 222
    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 224
    :cond_5
    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 226
    :cond_6
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    if-eqz v6, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v9

    invoke-interface {v9}, Lcom/esotericsoftware/kryo/c/e;->a()V

    :cond_7
    if-eqz v5, :cond_9

    .line 230
    iget-boolean v9, p0, Lcom/esotericsoftware/kryo/serializers/j;->f:Z

    if-eqz v9, :cond_8

    .line 231
    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 233
    :cond_8
    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 235
    :cond_9
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v9

    .line 236
    :goto_2
    invoke-interface {p3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-object p3
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;I)Ljava/util/Map;
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

    .line 176
    const-class p2, Ljava/util/HashMap;

    if-ne p3, p2, :cond_2

    const/4 p1, 0x3

    if-ge p4, p1, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    if-ge p4, p1, :cond_1

    int-to-float p1, p4

    const/high16 p2, 0x3f400000    # 0.75f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-int p4, p1

    .line 181
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    .line 183
    :cond_2
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 243
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method protected a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Map;)V
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

.method public b(Lcom/esotericsoftware/kryo/c;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/j;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 248
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/j;->b(Lcom/esotericsoftware/kryo/c;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/j;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 7

    .line 42
    check-cast p3, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1117
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 1121
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1123
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 1124
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/j;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Map;)V

    return-void

    :cond_1
    add-int/2addr v1, v2

    .line 1128
    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 1129
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/j;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/util/Map;)V

    .line 1131
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/j;->c:Lcom/esotericsoftware/kryo/h;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/j;->d:Lcom/esotericsoftware/kryo/h;

    .line 1133
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/esotericsoftware/kryo/c/e;->b()[Lcom/esotericsoftware/kryo/c/e$a;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    .line 1136
    aget-object v5, v4, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1137
    invoke-static {v5}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    :cond_2
    if-nez v3, :cond_3

    .line 1140
    aget-object v2, v4, v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1141
    invoke-static {v2}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v3

    .line 1145
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1146
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v4, :cond_4

    .line 1147
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    :cond_4
    if-eqz v1, :cond_6

    .line 1149
    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/j;->e:Z

    if-eqz v5, :cond_5

    .line 1150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v1}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_1

    .line 1152
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_1

    .line 1154
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_7

    .line 1155
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/c/e;->a()V

    :cond_7
    if-eqz v3, :cond_9

    .line 1157
    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/j;->f:Z

    if-eqz v5, :cond_8

    .line 1158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_0

    .line 1160
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_0

    .line 1162
    :cond_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 1164
    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-void
.end method
