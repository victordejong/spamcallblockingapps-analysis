.class public Lcom/esotericsoftware/kryo/serializers/n$l;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/time/ZoneId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method static a(Lcom/esotericsoftware/kryo/a/a;)Ljava/time/ZoneId;
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneId;)V
    .locals 0

    .line 217
    invoke-virtual {p1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1225
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p1

    .line 1226
    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p3, Ljava/time/ZoneId;

    .line 2213
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/n$l;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/time/ZoneId;)V

    return-void
.end method
