.class public final Lscala/Predef$ArrayCharSequence;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayCharSequence"
.end annotation


# instance fields
.field private final __arrayOfChars:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 291
    iput-object p1, p0, Lscala/Predef$ArrayCharSequence;->__arrayOfChars:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __arrayOfChars()[C
    .locals 1

    .line 291
    iget-object v0, p0, Lscala/Predef$ArrayCharSequence;->__arrayOfChars:[C

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    .line 293
    invoke-virtual {p0}, Lscala/Predef$ArrayCharSequence;->__arrayOfChars()[C

    move-result-object v0

    aget-char p1, v0, p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 292
    invoke-virtual {p0}, Lscala/Predef$ArrayCharSequence;->__arrayOfChars()[C

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 294
    new-instance v0, Lscala/runtime/ArrayCharSequence;

    invoke-virtual {p0}, Lscala/Predef$ArrayCharSequence;->__arrayOfChars()[C

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lscala/runtime/ArrayCharSequence;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 295
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/Predef$ArrayCharSequence;->__arrayOfChars()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->charArrayOps([C)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
