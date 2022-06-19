.class public Lcom/esotericsoftware/kryo/serializers/n$d;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/LocalDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1126
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalDate;

    move-result-object p1

    .line 1127
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;

    move-result-object p2

    .line 1128
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p3, Ljava/time/LocalDateTime;

    .line 2121
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalDate;)V

    .line 2122
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V

    return-void
.end method
