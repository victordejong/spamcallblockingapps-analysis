.class public final Lcom/esotericsoftware/kryo/serializers/g$af;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "af"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$af;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1166
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p3, Ljava/lang/String;

    .line 2162
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    return-void
.end method
