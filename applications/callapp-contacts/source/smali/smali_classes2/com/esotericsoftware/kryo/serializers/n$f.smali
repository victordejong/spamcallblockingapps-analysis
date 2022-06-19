.class public Lcom/esotericsoftware/kryo/serializers/n$f;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/MonthDay;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1303
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result p1

    .line 1304
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result p2

    .line 1305
    invoke-static {p1, p2}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 296
    check-cast p3, Ljava/time/MonthDay;

    .line 2298
    invoke-virtual {p3}, Ljava/time/MonthDay;->getMonthValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 2299
    invoke-virtual {p3}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void
.end method
