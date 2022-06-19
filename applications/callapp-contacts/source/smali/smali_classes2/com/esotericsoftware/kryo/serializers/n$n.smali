.class public Lcom/esotericsoftware/kryo/serializers/n$n;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/ZonedDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1266
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalDate;

    move-result-object p1

    .line 1267
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;

    move-result-object p3

    .line 1268
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$l;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneId;

    move-result-object p2

    .line 1269
    invoke-static {p1, p3, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p3, Ljava/time/ZonedDateTime;

    .line 2260
    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalDate;)V

    .line 2261
    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V

    .line 2262
    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$l;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneId;)V

    return-void
.end method
