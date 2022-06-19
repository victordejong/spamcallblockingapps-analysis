.class public Lscala/sys/PropImpl;
.super Ljava/lang/Object;
.source "PropImpl.scala"

# interfaces
.implements Lscala/sys/Prop;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/sys/Prop<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001u4Q!\u0001\u0002\u0001\u0005\u0019\u0011\u0001\u0002\u0015:pa&k\u0007\u000f\u001c\u0006\u0003\u0007\u0011\t1a]=t\u0015\u0005)\u0011!B:dC2\u000cWCA\u0004\u0013\'\r\u0001\u0001\u0002\u0004\t\u0003\u0013)i\u0011\u0001B\u0005\u0003\u0017\u0011\u0011a!\u00118z%\u00164\u0007cA\u0007\u000f!5\t!!\u0003\u0002\u0010\u0005\t!\u0001K]8q!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001AQ1\u0001\u0016\u0005\u0005!6\u0001A\t\u0003-e\u0001\"!C\u000c\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0013iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0003\u0005\u001e\u0001\t\u0015\r\u0011\"\u0001\u001f\u0003\rYW-_\u000b\u0002?A\u0011\u0001e\t\u0008\u0003\u0013\u0005J!A\t\u0003\u0002\rA\u0013X\rZ3g\u0013\t!SE\u0001\u0004TiJLgn\u001a\u0006\u0003E\u0011A\u0001b\n\u0001\u0003\u0002\u0003\u0006IaH\u0001\u0005W\u0016L\u0008\u0005\u0003\u0005*\u0001\t\u0005\t\u0015!\u0003+\u0003\u001d1\u0018\r\\;f\r:\u0004B!C\u0016 !%\u0011A\u0006\u0002\u0002\n\rVt7\r^5p]FBQA\u000c\u0001\u0005\u0002=\na\u0001P5oSRtDc\u0001\u00192eA\u0019Q\u0002\u0001\t\t\u000bui\u0003\u0019A\u0010\t\u000b%j\u0003\u0019\u0001\u0016\t\u000bQ\u0002A\u0011A\u001b\u0002\u000bY\u000cG.^3\u0016\u0003AAQa\u000e\u0001\u0005\u0002a\nQ![:TKR,\u0012!\u000f\t\u0003\u0013iJ!a\u000f\u0003\u0003\u000f\t{w\u000e\\3b]\")Q\u0008\u0001C\u0001}\u0005\u00191/\u001a;\u0015\u0005}y\u0004\"\u0002!=\u0001\u0004y\u0012\u0001\u00038foZ\u000bG.^3\t\u000b\t\u0003A\u0011A\"\u0002\u0011M,GOV1mk\u0016,\"\u0001R$\u0015\u0005A)\u0005\"\u0002!B\u0001\u00041\u0005CA\tH\t\u0015A\u0015I1\u0001J\u0005\t!\u0016\'\u0005\u0002\u00113!)1\n\u0001C\u0001=\u0005\u0019q-\u001a;\t\u000b5\u0003A\u0011\u0001(\u0002\u000b\rdW-\u0019:\u0015\u0003=\u0003\"!\u0003)\n\u0005E#!\u0001B+oSRDQa\u0015\u0001\u0005\u0002Q\u000baa\u001c9uS>tW#A+\u0011\u0007%1\u0006#\u0003\u0002X\t\t1q\n\u001d;j_:DQ!\u0017\u0001\u0005\u0002i\u000b!a\u001c:\u0016\u0005mkFC\u0001/_!\t\tR\u000cB\u0003I1\n\u0007\u0011\n\u0003\u0004`1\u0012\u0005\r\u0001Y\u0001\u0004C2$\u0008cA\u0005b9&\u0011!\r\u0002\u0002\ty\tLh.Y7f}!)A\r\u0001C\tK\u0006QQO\u001c3fe2L\u0018N\\4\u0016\u0003\u0019\u0004Ba\u001a7 ?5\t\u0001N\u0003\u0002jU\u00069Q.\u001e;bE2,\'BA6\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0003[\"\u00141!T1q\u0011\u0015y\u0007\u0001\"\u00056\u0003\u0011QXM]8\t\u000bE\u0004A\u0011\u0002:\u0002\u0013\u001d,Go\u0015;sS:<W#A:\u0011\u0005QLX\"A;\u000b\u0005Y<\u0018\u0001\u00027b]\u001eT\u0011\u0001_\u0001\u0005U\u00064\u0018-\u0003\u0002%k\")1\u0010\u0001C!y\u0006AAo\\*ue&tw\rF\u0001 \u0001"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final valueFn:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lscala/sys/PropImpl;->key:Ljava/lang/String;

    iput-object p2, p0, Lscala/sys/PropImpl;->valueFn:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getString()Ljava/lang/String;
    .locals 2

    .line 41
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "currently: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unset"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lscala/sys/PropImpl$$anonfun$get$1;

    invoke-direct {v2, p0}, Lscala/sys/PropImpl$$anonfun$get$1;-><init>(Lscala/sys/PropImpl;)V

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/Map;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isSet()Z
    .locals 2

    .line 18
    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lscala/sys/PropImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method public option()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/sys/PropImpl;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public or(Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT1;>;)TT1;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->value()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public set(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lscala/collection/mutable/Map;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(TT1;)TT;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lscala/sys/PropImpl;->value()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lscala/sys/PropImpl;->set(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/sys/PropImpl;->set(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 42
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "%s (%s)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lscala/sys/PropImpl;->getString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/sys/PropImpl;->valueFn:Lscala/Function1;

    invoke-virtual {p0}, Lscala/sys/PropImpl;->get()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/sys/PropImpl;->zero()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public zero()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
