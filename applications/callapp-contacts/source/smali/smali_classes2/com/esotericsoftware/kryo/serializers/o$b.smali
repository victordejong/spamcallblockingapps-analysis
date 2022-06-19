.class final Lcom/esotericsoftware/kryo/serializers/o$b;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 128
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/o$b;->k:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 3

    .line 136
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$b;->k:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 132
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$b;->k:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 140
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$b;->k:J

    sget-object v3, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/o$b;->k:J

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method
