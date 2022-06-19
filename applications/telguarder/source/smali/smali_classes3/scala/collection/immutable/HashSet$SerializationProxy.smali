.class public Lscala/collection/immutable/HashSet$SerializationProxy;
.super Ljava/lang/Object;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2L


# instance fields
.field private transient scala$collection$immutable$HashSet$SerializationProxy$$orig:Lscala/collection/immutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 1032
    iput-object p1, p0, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig:Lscala/collection/immutable/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10

    .line 1042
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    sget-object v0, Lscala/collection/immutable/HashSet$EmptyHashSet$;->MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;

    check-cast v0, Lscala/collection/immutable/HashSet;

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(Lscala/collection/immutable/HashSet;)V

    .line 1043
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1044
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig()Lscala/collection/immutable/HashSet;

    move-result-object v9

    invoke-virtual {v9, v8}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object v8

    invoke-virtual {p0, v8}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(Lscala/collection/immutable/HashSet;)V

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 1034
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig()Lscala/collection/immutable/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    .line 1035
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1036
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig()Lscala/collection/immutable/HashSet;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1;-><init>(Lscala/collection/immutable/HashSet$SerializationProxy;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/HashSet;->foreach(Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public scala$collection$immutable$HashSet$SerializationProxy$$orig()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig:Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(Lscala/collection/immutable/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 1032
    iput-object p1, p0, Lscala/collection/immutable/HashSet$SerializationProxy;->scala$collection$immutable$HashSet$SerializationProxy$$orig:Lscala/collection/immutable/HashSet;

    return-void
.end method
