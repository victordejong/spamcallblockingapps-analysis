.class public final Lscala/collection/mutable/WrappedArray$ofChar;
.super Lscala/collection/mutable/WrappedArray;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/WrappedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ofChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/WrappedArray<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 145
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofChar;->array:[C

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)C
    .locals 1

    .line 148
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofChar;->array()[C

    move-result-object v0

    aget-char p1, v0, p1

    return p1
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofChar;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofChar;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofChar;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public array()[C
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofChar;->array:[C

    return-object v0
.end method

.method public elemTag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofChar;->array()[C

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public update(IC)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofChar;->array()[C

    move-result-object v0

    aput-char p2, v0, p1

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 0

    .line 145
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WrappedArray$ofChar;->update(IC)V

    return-void
.end method
