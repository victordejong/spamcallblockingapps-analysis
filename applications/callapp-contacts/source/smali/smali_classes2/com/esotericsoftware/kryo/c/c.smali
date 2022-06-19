.class public final Lcom/esotericsoftware/kryo/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/c/e;


# instance fields
.field private final a:Lcom/esotericsoftware/kryo/c;

.field private b:I

.field private c:[Lcom/esotericsoftware/kryo/c/e$a;

.field private d:[I

.field private e:I

.field private f:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/esotericsoftware/kryo/c/e$a;

    .line 33
    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    new-array v1, v0, [I

    .line 34
    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 37
    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    .line 40
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/c;->a:Lcom/esotericsoftware/kryo/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/c/e$b;[Lcom/esotericsoftware/kryo/c/e$a;)I
    .locals 10

    .line 97
    iget v0, p1, Lcom/esotericsoftware/kryo/c/e$b;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/esotericsoftware/kryo/c/e$b;->b:I

    array-length v2, p2

    if-le v0, v2, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    .line 102
    iget v2, p1, Lcom/esotericsoftware/kryo/c/e$b;->a:I

    add-int/2addr v2, v0

    .line 103
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    array-length v4, v3

    if-le v2, v4, :cond_1

    .line 104
    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 105
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    .line 110
    :cond_1
    iget-object v2, p1, Lcom/esotericsoftware/kryo/c/e$b;->c:[I

    .line 111
    iget-object p1, p1, Lcom/esotericsoftware/kryo/c/e$b;->d:[Ljava/lang/reflect/TypeVariable;

    .line 112
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 113
    aget-object v5, p2, v1

    .line 114
    invoke-virtual {v5, p0}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 116
    aget v7, v2, v1

    if-nez v5, :cond_2

    add-int/2addr v4, v7

    goto :goto_2

    :cond_2
    add-int/2addr v7, v4

    :goto_1
    if-ge v4, v7, :cond_3

    .line 121
    iget-object v5, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    iget v8, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    aget-object v9, p1, v4

    aput-object v9, v5, v8

    add-int/lit8 v9, v8, 0x1

    .line 122
    aput-object v6, v5, v9

    add-int/lit8 v8, v8, 0x2

    .line 123
    iput v8, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    sub-int/2addr p1, v0

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public final a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2

    .line 141
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 66
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 68
    iput v0, p0, Lcom/esotericsoftware/kryo/c/c;->b:I

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 133
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    sub-int p1, v0, p1

    .line 134
    iput p1, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/c/e$a;)V
    .locals 5

    .line 46
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 47
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    array-length v3, v2

    if-ne v1, v3, :cond_0

    .line 48
    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/esotericsoftware/kryo/c/e$a;

    const/4 v4, 0x0

    .line 49
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    .line 51
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 52
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    .line 56
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/c/c;->b:I

    .line 57
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    aput-object p1, v1, v0

    .line 58
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/c;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method public final b()[Lcom/esotericsoftware/kryo/c/e$a;
    .locals 4

    .line 73
    iget v0, p0, Lcom/esotericsoftware/kryo/c/c;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 76
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->c:[Lcom/esotericsoftware/kryo/c/e$a;

    aget-object v2, v2, v0

    .line 77
    iget-object v3, v2, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    if-nez v3, :cond_0

    return-object v1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->d:[I

    aget v0, v3, v0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/c;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 80
    iget-object v0, v2, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    iget-object v1, v2, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c/c;->a(Lcom/esotericsoftware/kryo/c/e$a;)V

    .line 81
    iget-object v0, v2, Lcom/esotericsoftware/kryo/c/e$a;->b:[Lcom/esotericsoftware/kryo/c/e$a;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final c()Ljava/lang/Class;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/c;->b()[Lcom/esotericsoftware/kryo/c/e$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 91
    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/c/e$a;->a(Lcom/esotericsoftware/kryo/c/e;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/c/c;->e:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/c;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
