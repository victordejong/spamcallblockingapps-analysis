.class public Lcom/esotericsoftware/kryo/serializers/n$c;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method static a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalDate;
    .locals 2

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result p0

    .line 115
    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalDate;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 103
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 104
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1108
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p3, Ljava/time/LocalDate;

    .line 2098
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/n$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalDate;)V

    return-void
.end method
