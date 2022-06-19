.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;

.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;Lcom/bytedance/sdk/openadsdk/preload/a/f;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/v;Lcom/bytedance/sdk/openadsdk/preload/a/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TV;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 154
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;

    invoke-direct {p1, p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 156
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;

    invoke-direct {p1, p2, p6, p5}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 158
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->m()Lcom/bytedance/sdk/openadsdk/preload/a/q;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->f()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    .line 261
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 172
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    goto :goto_0

    .line 178
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 185
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/f;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)V

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 191
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;->a:Z

    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 207
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 216
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 220
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v5

    .line 221
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->g()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V

    .line 231
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void

    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    .line 238
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    .line 239
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 240
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 242
    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void
.end method

.method public final synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g$a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
