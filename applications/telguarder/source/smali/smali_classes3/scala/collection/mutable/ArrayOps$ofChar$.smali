.class public Lscala/collection/mutable/ArrayOps$ofChar$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofChar$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofChar$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofChar$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofChar$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofChar$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofChar$;

    return-void
.end method


# virtual methods
.method public final apply$extension([CI)C
    .locals 0

    .line 229
    aget-char p1, p1, p2

    return p1
.end method

.method public final equals$extension([CLjava/lang/Object;)Z
    .locals 3

    .line 222
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofChar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofChar;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofChar;->repr()[C

    move-result-object p2

    :goto_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final hashCode$extension([C)I
    .locals 0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([C)I
    .locals 0

    .line 228
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([C)Lscala/collection/mutable/ArrayBuilder$ofChar;
    .locals 0

    .line 226
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofChar;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([C)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofChar;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofChar;-><init>([C)V

    return-object v0
.end method

.method public final toCollection$extension([C[C)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C[C)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofChar;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofChar;-><init>([C)V

    return-object p1
.end method

.method public final update$extension([CIC)V
    .locals 0

    .line 230
    aput-char p3, p1, p2

    return-void
.end method
