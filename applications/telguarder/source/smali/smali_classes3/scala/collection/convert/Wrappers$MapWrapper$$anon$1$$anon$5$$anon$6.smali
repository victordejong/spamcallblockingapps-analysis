.class public final Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;

.field private final k$1:Ljava/lang/Object;

.field private final v$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$MapWrapper<",
            "TA;TB;>.$anon$1$$anon$5;)V"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->$outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;

    iput-object p2, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->k$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->v$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 198
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->k$1:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_8

    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->v$1:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_6
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_7

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->k$1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->v$1:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 197
    sget-object v0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v2, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->k$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result v0

    sget-object v1, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v3, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->v$1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TB;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->$outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;

    invoke-virtual {v0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->scala$collection$convert$Wrappers$MapWrapper$$anon$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;->k$1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/convert/Wrappers$MapWrapper;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
