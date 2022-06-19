.class public final Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->stripMargin(C)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/collection/mutable/StringBuilder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final buf$2:Lscala/collection/mutable/StringBuilder;

.field private final marginChar$1:C


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StringLike;Lscala/collection/mutable/StringBuilder;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StringLike<",
            "TRepr;>;)V"
        }
    .end annotation

    .line 187
    iput-object p2, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->buf$2:Lscala/collection/mutable/StringBuilder;

    iput-char p3, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->marginChar$1:C

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 4

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v2, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->buf$2:Lscala/collection/mutable/StringBuilder;

    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v3, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->marginChar$1:C

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_1
    invoke-virtual {v2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method
