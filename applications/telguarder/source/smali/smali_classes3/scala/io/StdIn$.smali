.class public final Lscala/io/StdIn$;
.super Ljava/lang/Object;
.source "StdIn.scala"

# interfaces
.implements Lscala/io/StdIn;


# static fields
.field public static final MODULE$:Lscala/io/StdIn$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/StdIn$;

    invoke-direct {v0}, Lscala/io/StdIn$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/StdIn$;->MODULE$:Lscala/io/StdIn$;

    invoke-static {p0}, Lscala/io/StdIn$class;->$init$(Lscala/io/StdIn;)V

    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readBoolean(Lscala/io/StdIn;)Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readByte(Lscala/io/StdIn;)B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readChar(Lscala/io/StdIn;)C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readDouble(Lscala/io/StdIn;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readFloat(Lscala/io/StdIn;)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readInt(Lscala/io/StdIn;)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readLine(Lscala/io/StdIn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1, p2}, Lscala/io/StdIn$class;->readLine(Lscala/io/StdIn;Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readLong()J
    .locals 2

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readLong(Lscala/io/StdIn;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .line 229
    invoke-static {p0}, Lscala/io/StdIn$class;->readShort(Lscala/io/StdIn;)S

    move-result v0

    return v0
.end method

.method public readf(Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1}, Lscala/io/StdIn$class;->readf(Lscala/io/StdIn;Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public readf1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-static {p0, p1}, Lscala/io/StdIn$class;->readf1(Lscala/io/StdIn;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readf2(Ljava/lang/String;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1}, Lscala/io/StdIn$class;->readf2(Lscala/io/StdIn;Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public readf3(Ljava/lang/String;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Tuple3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1}, Lscala/io/StdIn$class;->readf3(Lscala/io/StdIn;Ljava/lang/String;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method
