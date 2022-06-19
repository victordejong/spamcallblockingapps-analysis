.class final Lcom/esotericsoftware/kryo/serializers/o$f;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 65
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 4

    .line 76
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->f:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->d()I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->f:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->b(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 83
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    sget-object v3, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/o$f;->k:J

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method
