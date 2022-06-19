.class public Lscala/collection/immutable/LongMap$Tip$;
.super Ljava/lang/Object;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tip$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/LongMap$Tip$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/LongMap$Tip$;

    invoke-direct {v0}, Lscala/collection/immutable/LongMap$Tip$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/LongMap$Tip$;->MODULE$:Lscala/collection/immutable/LongMap$Tip$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lscala/collection/immutable/LongMap$Tip$;->MODULE$:Lscala/collection/immutable/LongMap$Tip$;

    return-object v0
.end method


# virtual methods
.method public apply(JLjava/lang/Object;)Lscala/collection/immutable/LongMap$Tip;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;)",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tip"

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/LongMap$Tip;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TT;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
