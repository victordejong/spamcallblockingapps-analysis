.class Lcom/esotericsoftware/kryo/serializers/m;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/m$d;,
        Lcom/esotericsoftware/kryo/serializers/m$g;,
        Lcom/esotericsoftware/kryo/serializers/m$c;,
        Lcom/esotericsoftware/kryo/serializers/m$a;,
        Lcom/esotericsoftware/kryo/serializers/m$b;,
        Lcom/esotericsoftware/kryo/serializers/m$h;,
        Lcom/esotericsoftware/kryo/serializers/m$e;,
        Lcom/esotericsoftware/kryo/serializers/m$f;
    }
.end annotation


# instance fields
.field final l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

.field final m:Lcom/esotericsoftware/kryo/c/e$a;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 42
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .line 43
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Class;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/m;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/m;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/m;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 7

    const-string v0, ")"

    const-string v1, " ("

    .line 108
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->d:Lcom/esotericsoftware/kryo/h;

    .line 113
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/m;->a()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    .line 116
    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/esotericsoftware/kryo/serializers/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez v3, :cond_1

    .line 2060
    iget-object v3, v4, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 122
    :cond_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    .line 3046
    iget-object v4, v4, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 123
    invoke-virtual {v2, p1, v4, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 126
    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v3

    .line 128
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->c:Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->h:Z

    if-eqz v5, :cond_3

    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->d:Lcom/esotericsoftware/kryo/h;

    .line 130
    :cond_3
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    .line 131
    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->e:Z

    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {v2, p1, v4, v3}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {v2, p1, v4, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    :goto_0
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/esotericsoftware/kryo/c/e;->a()V

    .line 138
    invoke-virtual {p0, p2, p1}, Lcom/esotericsoftware/kryo/serializers/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 147
    throw p2

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 143
    throw p1

    :catch_1
    move-exception p1

    .line 140
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error accessing field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 7

    const-string v0, ")"

    const-string v1, " ("

    .line 55
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    .line 57
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/serializers/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/m;->d:Lcom/esotericsoftware/kryo/h;

    .line 60
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/m;->a()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v2, p1, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    return-void

    .line 67
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v5

    if-nez v4, :cond_1

    .line 1060
    iget-object v4, v5, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 73
    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->c:Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->h:Z

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/m;->d:Lcom/esotericsoftware/kryo/h;

    .line 77
    :cond_3
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    .line 78
    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/m;->e:Z

    if-eqz v5, :cond_4

    .line 79
    invoke-virtual {v2, p1, v3, v4}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 85
    :goto_0
    invoke-virtual {v2, p1, v3, v4}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    .line 88
    :goto_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-void

    .line 82
    :cond_5
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field value cannot be null when canBeNull is false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 101
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 103
    throw v2

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A StackOverflow occurred. The most likely cause is that your data has a circular reference resulting in infinite recursion. Try enabling references with Kryo.setReferences(true). If your data structure is really more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " levels deep then try increasing your Java stack size."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 93
    throw p1

    :catch_2
    move-exception p1

    .line 90
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error accessing field: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/m;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const-string v0, ")"

    const-string v1, " ("

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/esotericsoftware/kryo/serializers/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 168
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 170
    throw p2

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 166
    throw p1

    :catch_1
    move-exception p1

    .line 163
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error accessing field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/m;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
