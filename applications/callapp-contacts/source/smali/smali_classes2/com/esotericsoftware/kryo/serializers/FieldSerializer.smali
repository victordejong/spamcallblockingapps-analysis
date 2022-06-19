.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$d;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$e;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

.field final config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

.field private final genericsHierarchy:Lcom/esotericsoftware/kryo/c/e$b;

.field final kryo:Lcom/esotericsoftware/kryo/c;

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 75
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    .line 76
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    .line 77
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    .line 79
    new-instance p1, Lcom/esotericsoftware/kryo/c/e$b;

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/c/e$b;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->genericsHierarchy:Lcom/esotericsoftware/kryo/c/e$b;

    .line 81
    new-instance p1, Lcom/esotericsoftware/kryo/serializers/b;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/serializers/b;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    .line 82
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/b;->a()V

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "type cannot be a primitive class: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->createCopy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected create(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 151
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCopyFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 174
    iget-object v4, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found on class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    return-object v0
.end method

.method public getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    return-object v0
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/c;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected initializeCachedFields()V
    .locals 0

    return-void
.end method

.method protected log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;I)V
    .locals 2

    .line 156
    instance-of v0, p2, Lcom/esotericsoftware/kryo/serializers/m;

    if-eqz v0, :cond_1

    .line 157
    move-object v0, p2

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/m;

    .line 158
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/m;->a()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 160
    :cond_0
    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/m;->m:Lcom/esotericsoftware/kryo/c/e$a;

    invoke-static {v1, v0}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/c/e$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " field "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    .line 168
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kryo"

    .line 167
    invoke-static {p2, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected popTypeVariables(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v0

    if-lez p1, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/c/e;->a(I)V

    .line 145
    :cond_0
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/c/e;->a()V

    return-void
.end method

.method protected pushTypeVariables()I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/c/e;->b()[Lcom/esotericsoftware/kryo/c/e$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->genericsHierarchy:Lcom/esotericsoftware/kryo/c/e$b;

    invoke-interface {v1, v2, v0}, Lcom/esotericsoftware/kryo/c/e;->a(Lcom/esotericsoftware/kryo/c/e$b;[Lcom/esotericsoftware/kryo/c/e$a;)I

    move-result v0

    .line 136
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generics: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getGenerics()Lcom/esotericsoftware/kryo/c/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v0

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->create(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    .line 117
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 121
    sget-boolean v3, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result v4

    const-string v5, "Read"

    invoke-virtual {p0, v5, v3, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;I)V

    .line 122
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-object p3
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;)V
    .locals 9

    .line 185
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1284
    :goto_0
    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 1285
    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    .line 1287
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v5, v5

    sub-int/2addr v5, v4

    new-array v6, v5, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1288
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1289
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    add-int/lit8 v8, v2, 0x1

    sub-int/2addr v5, v2

    invoke-static {v7, v8, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1290
    iput-object v6, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1291
    iget-object v2, v0, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 1296
    :goto_2
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 1297
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    aget-object v5, v5, v3

    if-ne v5, p1, :cond_2

    .line 1299
    iget-object v2, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v2, v2

    sub-int/2addr v2, v4

    new-array v6, v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1300
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v7, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    iget-object v1, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v7, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1302
    iput-object v6, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1303
    iget-object v1, v0, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    iget-object v2, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_3
    if-eqz v4, :cond_4

    return-void

    .line 1309
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found on class: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1253
    :goto_0
    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 1254
    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    aget-object v3, v3, v2

    .line 1255
    iget-object v5, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1256
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v5, v5

    sub-int/2addr v5, v4

    new-array v6, v5, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1257
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    add-int/lit8 v8, v2, 0x1

    sub-int/2addr v5, v2

    invoke-static {v7, v8, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    iput-object v6, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1260
    iget-object v2, v0, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 1265
    :goto_2
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 1266
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    aget-object v5, v5, v3

    .line 1267
    iget-object v6, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1268
    iget-object v2, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v2, v2

    sub-int/2addr v2, v4

    new-array v6, v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1269
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v7, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    iget-object v1, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v7, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v6, v0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 1272
    iget-object v1, v0, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    iget-object v2, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_3
    if-eqz v4, :cond_4

    return-void

    .line 1278
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found on class: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateFields()V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update fields: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/b;->a()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/c;",
            "TT;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 105
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 106
    sget-boolean v3, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v4

    const-string v5, "Write"

    invoke-virtual {p0, v5, v3, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;I)V

    .line 107
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    return-void
.end method
