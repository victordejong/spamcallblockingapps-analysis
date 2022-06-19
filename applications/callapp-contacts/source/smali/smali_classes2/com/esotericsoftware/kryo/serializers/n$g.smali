.class public Lcom/esotericsoftware/kryo/serializers/n$g;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/OffsetDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1251
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalDate;

    move-result-object p1

    .line 1252
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;

    move-result-object p3

    .line 1253
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneOffset;

    move-result-object p2

    .line 1254
    invoke-static {p1, p3, p2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 243
    check-cast p3, Ljava/time/OffsetDateTime;

    .line 2245
    invoke-virtual {p3}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalDate;)V

    .line 2246
    invoke-virtual {p3}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V

    .line 2247
    invoke-virtual {p3}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneOffset;)V

    return-void
.end method
