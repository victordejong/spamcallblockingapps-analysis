.class final Lcom/esotericsoftware/kryo/serializers/a;
.super Lcom/esotericsoftware/kryo/serializers/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/a$i;,
        Lcom/esotericsoftware/kryo/serializers/a$d;,
        Lcom/esotericsoftware/kryo/serializers/a$g;,
        Lcom/esotericsoftware/kryo/serializers/a$c;,
        Lcom/esotericsoftware/kryo/serializers/a$a;,
        Lcom/esotericsoftware/kryo/serializers/a$b;,
        Lcom/esotericsoftware/kryo/serializers/a$h;,
        Lcom/esotericsoftware/kryo/serializers/a$e;,
        Lcom/esotericsoftware/kryo/serializers/a$f;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/m;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/a;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p1}, Lcom/esotericsoftware/c/c;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string p1, ")"

    const-string p2, " ("

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/a;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/a;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {v1}, Lcom/esotericsoftware/c/c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 52
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 54
    throw v1

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a;->l:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 50
    throw v0
.end method
