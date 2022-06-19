.class public Lcom/esotericsoftware/kryo/serializers/n$a;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1077
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->g()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 1078
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p1

    int-to-long p1, p1

    .line 1079
    invoke-static {v0, v1, p1, p2}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 70
    check-cast p3, Ljava/time/Duration;

    .line 2072
    invoke-virtual {p3}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(J)V

    .line 2073
    invoke-virtual {p3}, Ljava/time/Duration;->getNano()I

    move-result p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    return-void
.end method
