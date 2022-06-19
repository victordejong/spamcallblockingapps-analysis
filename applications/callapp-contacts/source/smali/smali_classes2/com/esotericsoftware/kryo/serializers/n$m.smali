.class public Lcom/esotericsoftware/kryo/serializers/n$m;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/ZoneOffset;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method static a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneOffset;
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->d()I

    move-result p0

    invoke-static {p0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneOffset;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    .line 194
    rem-int/lit16 v0, p1, 0x384

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    div-int/lit16 v0, p1, 0x384

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 195
    :goto_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    if-ne v0, v1, :cond_1

    .line 197
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->b(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1202
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p3, Ljava/time/ZoneOffset;

    .line 2189
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/n$m;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneOffset;)V

    return-void
.end method
