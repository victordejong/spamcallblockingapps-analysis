.class public Lscala/StringContext$InvalidEscapeException;
.super Ljava/lang/IllegalArgumentException;
.source "StringContext.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/StringContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidEscapeException"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 11

    .line 178
    iput p2, p0, Lscala/StringContext$InvalidEscapeException;->index:I

    .line 179
    new-instance v0, Lscala/StringContext;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "invalid escape "

    const-string v3, " index "

    const-string v4, " in \""

    const-string v5, "\". Use \\\\\\\\ for literal \\\\."

    .line 183
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 179
    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge p2, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3, v6}, Lscala/Predef$;->require(Z)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    const/4 v6, 0x2

    if-ne p2, v3, :cond_1

    const-string v3, "at terminal"

    goto :goto_1

    :cond_1
    new-instance v3, Lscala/StringContext;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "\'\\\\"

    const-string v9, "\' not one of "

    const-string v10, " at"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-direct {v3, v7}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v9, p1, v10}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "[\\b, \\t, \\n, \\f, \\r, \\\\, \\\", \\\']"

    aput-object v9, v8, v5

    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-virtual {v3, v7}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v2, v4

    .line 183
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    aput-object p1, v2, v6

    .line 179
    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 178
    iget v0, p0, Lscala/StringContext$InvalidEscapeException;->index:I

    return v0
.end method
