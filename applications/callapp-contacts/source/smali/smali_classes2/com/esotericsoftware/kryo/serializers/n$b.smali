.class public Lcom/esotericsoftware/kryo/serializers/n$b;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 p1, 0x1

    .line 1090
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide v0

    .line 1091
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p1

    int-to-long p1, p1

    .line 1092
    invoke-static {v0, v1, p1, p2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 83
    check-cast p3, Ljava/time/Instant;

    .line 2085
    invoke-virtual {p3}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    .line 2086
    invoke-virtual {p3}, Ljava/time/Instant;->getNano()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    return-void
.end method
