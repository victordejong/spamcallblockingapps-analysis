.class final Lcom/esotericsoftware/kryo/serializers/a$h;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->j()S

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 106
    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/a$h;->i:Lcom/esotericsoftware/c/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/c/c;->f()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->c(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
