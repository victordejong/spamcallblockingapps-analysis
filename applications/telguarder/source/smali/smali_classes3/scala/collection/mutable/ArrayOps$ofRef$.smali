.class public Lscala/collection/mutable/ArrayOps$ofRef$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofRef$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofRef$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    return-void
.end method


# virtual methods
.method public final apply$extension([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 193
    aget-object p1, p1, p2

    return-object p1
.end method

.method public final equals$extension([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 186
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofRef;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofRef;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

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

.method public final hashCode$extension([Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 192
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/ArrayBuilder$ofRef<",
            "TT;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofRef;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public final thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 189
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    return-object p1
.end method

.method public final update$extension([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    .line 194
    aput-object p3, p1, p2

    return-void
.end method
