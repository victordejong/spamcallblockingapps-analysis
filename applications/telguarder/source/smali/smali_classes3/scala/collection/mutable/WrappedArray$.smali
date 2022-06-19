.class public final Lscala/collection/mutable/WrappedArray$;
.super Ljava/lang/Object;
.source "WrappedArray.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/WrappedArray$;


# instance fields
.field private final EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/WrappedArray$ofRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/WrappedArray$;

    invoke-direct {v0}, Lscala/collection/mutable/WrappedArray$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    .line 92
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;

    return-void
.end method

.method private EmptyWrappedArray()Lscala/collection/mutable/WrappedArray$ofRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray$ofRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray:Lscala/collection/mutable/WrappedArray$ofRef;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/WrappedArray<",
            "*>;TT;",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lscala/collection/mutable/WrappedArray$$anon$1;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$$anon$1;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray$;->EmptyWrappedArray()Lscala/collection/mutable/WrappedArray$ofRef;

    move-result-object v0

    return-object v0
.end method

.method public make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 102
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_1

    .line 103
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    check-cast p1, [I

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    goto :goto_0

    .line 104
    :cond_2
    instance-of v0, p1, [D

    if-eqz v0, :cond_3

    check-cast p1, [D

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofDouble;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    goto :goto_0

    .line 105
    :cond_3
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    check-cast p1, [J

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofLong;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;-><init>([J)V

    goto :goto_0

    .line 106
    :cond_4
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    check-cast p1, [F

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofFloat;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofFloat;-><init>([F)V

    goto :goto_0

    .line 107
    :cond_5
    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    check-cast p1, [C

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofChar;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofChar;-><init>([C)V

    goto :goto_0

    .line 108
    :cond_6
    instance-of v0, p1, [B

    if-eqz v0, :cond_7

    check-cast p1, [B

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofByte;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofByte;-><init>([B)V

    goto :goto_0

    .line 109
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    check-cast p1, [S

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofShort;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofShort;-><init>([S)V

    goto :goto_0

    .line 110
    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    check-cast p1, [Z

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofBoolean;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofBoolean;-><init>([Z)V

    goto :goto_0

    .line 111
    :cond_9
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_a

    check-cast p1, [Lscala/runtime/BoxedUnit;

    new-instance v0, Lscala/collection/mutable/WrappedArray$ofUnit;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    goto :goto_0

    :goto_1
    return-object p1

    .line 100
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/mutable/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-object v0
.end method
