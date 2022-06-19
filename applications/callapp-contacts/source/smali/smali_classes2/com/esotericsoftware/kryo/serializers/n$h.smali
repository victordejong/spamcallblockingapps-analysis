.class public Lcom/esotericsoftware/kryo/serializers/n$h;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/OffsetTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1237
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;

    move-result-object p1

    .line 1238
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneOffset;

    move-result-object p2

    .line 1239
    invoke-static {p1, p2}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p3, Ljava/time/OffsetTime;

    .line 2232
    invoke-virtual {p3}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V

    .line 2233
    invoke-virtual {p3}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneOffset;)V

    return-void
.end method
