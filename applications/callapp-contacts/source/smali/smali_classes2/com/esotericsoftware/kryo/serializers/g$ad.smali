.class public Lcom/esotericsoftware/kryo/serializers/g$ad;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 434
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 436
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$ad;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 434
    check-cast p2, Ljava/lang/StringBuffer;

    .line 1450
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 2444
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2446
    :cond_0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 434
    check-cast p3, Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3440
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    return-void
.end method
