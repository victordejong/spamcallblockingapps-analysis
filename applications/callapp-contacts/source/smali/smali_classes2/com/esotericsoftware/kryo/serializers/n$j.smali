.class public Lcom/esotericsoftware/kryo/serializers/n$j;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/YearMonth;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    .line 1290
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p1

    .line 1291
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result p2

    .line 1292
    invoke-static {p1, p2}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 1

    .line 283
    check-cast p3, Ljava/time/YearMonth;

    .line 2285
    invoke-virtual {p3}, Ljava/time/YearMonth;->getYear()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 2286
    invoke-virtual {p3}, Ljava/time/YearMonth;->getMonthValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void
.end method
