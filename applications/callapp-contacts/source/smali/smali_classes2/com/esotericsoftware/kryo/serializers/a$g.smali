.class final Lcom/esotericsoftware/kryo/serializers/a$g;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 0

    .line 185
    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/serializers/a$g;->f:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->g()J

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 178
    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/serializers/a$g;->f:Z

    if-eqz p2, :cond_0

    .line 179
    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a$g;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/c/c;->h()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    return-void

    .line 181
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a$g;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/c/c;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(J)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
