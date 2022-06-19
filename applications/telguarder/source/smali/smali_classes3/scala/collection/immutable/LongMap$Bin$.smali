.class public Lscala/collection/immutable/LongMap$Bin$;
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
    name = "Bin$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/LongMap$Bin$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/LongMap$Bin$;

    invoke-direct {v0}, Lscala/collection/immutable/LongMap$Bin$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/LongMap$Bin$;->MODULE$:Lscala/collection/immutable/LongMap$Bin$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 73
    sget-object v0, Lscala/collection/immutable/LongMap$Bin$;->MODULE$:Lscala/collection/immutable/LongMap$Bin$;

    return-object v0
.end method


# virtual methods
.method public apply(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap$Bin;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)",
            "Lscala/collection/immutable/LongMap$Bin<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v7, Lscala/collection/immutable/LongMap$Bin;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    return-object v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bin"

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/LongMap$Bin;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap$Bin<",
            "TT;>;)",
            "Lscala/Option<",
            "Lscala/Tuple4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple4;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v3

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
