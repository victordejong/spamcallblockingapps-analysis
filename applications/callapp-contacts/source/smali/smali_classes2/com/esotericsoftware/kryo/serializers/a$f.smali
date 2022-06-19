.class final Lcom/esotericsoftware/kryo/serializers/a$f;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 0

    .line 71
    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/serializers/a$f;->f:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->d()I

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 1

    .line 64
    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/serializers/a$f;->f:Z

    if-eqz p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a$f;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/c/c;->g()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    return-void

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a$f;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/c/c;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->b(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
