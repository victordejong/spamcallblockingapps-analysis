.class public final Lcom/esotericsoftware/kryo/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Type;

.field b:[Lcom/esotericsoftware/kryo/c/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/c/e$a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 5

    .line 164
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    .line 167
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 168
    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    .line 169
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    .line 170
    array-length v0, p3

    .line 171
    new-array v2, v0, [Lcom/esotericsoftware/kryo/c/e$a;

    iput-object v2, p0, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 173
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    new-instance v3, Lcom/esotericsoftware/kryo/c/e$a;

    aget-object v4, p3, v1

    invoke-direct {v3, p1, p2, v4}, Lcom/esotericsoftware/kryo/c/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 175
    :cond_1
    instance-of v0, p3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 179
    :goto_1
    check-cast p3, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 180
    instance-of v3, p3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/c/e$a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 184
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/c/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 185
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_4

    if-ne v2, v0, :cond_3

    .line 187
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    return-void

    .line 189
    :cond_3
    check-cast p1, Ljava/lang/Class;

    new-array p2, v2, [I

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    :cond_4
    return-void

    .line 194
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/c/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 202
    :cond_0
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p1, v0}, Lcom/esotericsoftware/kryo/c/e;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 218
    check-cast v1, Ljava/lang/Class;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->g(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    if-eqz v1, :cond_4

    const/16 v1, 0x3c

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    array-length v1, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    if-lez v4, :cond_1

    const-string v5, ", "

    .line 224
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    iget-object v5, p0, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/c/e$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 232
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->f(Ljava/lang/Class;)I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_5

    const-string v2, "[]"

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 235
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
