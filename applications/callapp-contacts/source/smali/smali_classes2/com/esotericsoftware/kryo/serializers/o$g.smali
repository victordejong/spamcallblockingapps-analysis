.class final Lcom/esotericsoftware/kryo/serializers/o$g;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 184
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 185
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 13

    .line 196
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->f:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide v5

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    .line 199
    :cond_0
    sget-object v7, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v9, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->g()J

    move-result-wide v11

    move-object v8, p2

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 189
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->f:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(J)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 203
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    sget-object v1, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/o$g;->k:J

    invoke-virtual {v1, p1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method
