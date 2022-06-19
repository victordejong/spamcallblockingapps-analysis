.class public Lcom/esotericsoftware/kryo/serializers/g$u;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/lang/Enum;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$u;->setAcceptsNull(Z)V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/g$u;->a:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 363
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "The type must be an enum: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 p1, 0x1

    .line 1376
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/g$u;->a:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, p1

    if-gt p2, v1, :cond_1

    .line 1381
    aget-object p1, v0, p2

    .line 1382
    check-cast p1, Ljava/lang/Enum;

    return-object p1

    .line 1380
    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid ordinal for enum \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 349
    check-cast p3, Ljava/lang/Enum;

    const/4 p1, 0x1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 2369
    invoke-virtual {p2, p3, p1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    return-void

    .line 2372
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3, p1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    return-void
.end method
