.class public Lcom/esotericsoftware/kryo/serializers/n$e;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/LocalTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method static a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;
    .locals 5

    .line 164
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    not-int v0, v0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v2

    if-gez v2, :cond_1

    not-int p0, v2

    const/4 v2, 0x0

    move v1, p0

    const/4 p0, 0x0

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v3

    if-gez v3, :cond_2

    not-int p0, v3

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result v1

    move p0, v3

    move v4, v2

    move v2, v1

    move v1, v4

    .line 183
    :goto_1
    invoke-static {v0, v1, p0, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 144
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 148
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 149
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result p1

    not-int p1, p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 152
    :cond_2
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 153
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 154
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 155
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1160
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p3, Ljava/time/LocalTime;

    .line 2134
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/n$e;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/LocalTime;)V

    return-void
.end method
