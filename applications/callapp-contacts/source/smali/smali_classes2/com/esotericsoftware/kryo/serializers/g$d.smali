.class public final Lcom/esotericsoftware/kryo/serializers/g$d;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 876
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 876
    check-cast p2, Ljava/util/BitSet;

    .line 1891
    invoke-virtual {p2}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object p1

    invoke-static {p1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    .line 2884
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p1

    .line 2885
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->d(I)[J

    move-result-object p1

    .line 2886
    invoke-static {p1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 1

    .line 876
    check-cast p3, Ljava/util/BitSet;

    .line 3878
    invoke-virtual {p3}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object p1

    .line 3879
    array-length p3, p1

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 3880
    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/esotericsoftware/kryo/a/c;->a([JII)V

    return-void
.end method
