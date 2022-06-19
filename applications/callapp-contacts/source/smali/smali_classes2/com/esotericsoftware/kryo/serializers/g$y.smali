.class public Lcom/esotericsoftware/kryo/serializers/g$y;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Lcom/esotericsoftware/kryo/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1479
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/esotericsoftware/kryo/e;

    .line 1480
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
