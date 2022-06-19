.class public Lscala/collection/immutable/IntMap$Bin$;
.super Ljava/lang/Object;
.source "IntMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bin$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/IntMap$Bin$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/IntMap$Bin$;

    invoke-direct {v0}, Lscala/collection/immutable/IntMap$Bin$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/IntMap$Bin$;->MODULE$:Lscala/collection/immutable/IntMap$Bin$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Lscala/collection/immutable/IntMap$Bin$;->MODULE$:Lscala/collection/immutable/IntMap$Bin$;

    return-object v0
.end method


# virtual methods
.method public apply(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap$Bin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)",
            "Lscala/collection/immutable/IntMap$Bin<",
            "TT;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lscala/collection/immutable/IntMap$Bin;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bin"

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/IntMap$Bin;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap$Bin<",
            "TT;>;)",
            "Lscala/Option<",
            "Lscala/Tuple4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple4;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
