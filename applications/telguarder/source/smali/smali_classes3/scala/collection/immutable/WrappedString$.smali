.class public final Lscala/collection/immutable/WrappedString$;
.super Ljava/lang/Object;
.source "WrappedString.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/WrappedString$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/WrappedString$;

    invoke-direct {v0}, Lscala/collection/immutable/WrappedString$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/WrappedString;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/immutable/WrappedString$$anon$1;

    invoke-direct {v0}, Lscala/collection/immutable/WrappedString$$anon$1;-><init>()V

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 63
    sget-object v0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v1, Lscala/collection/immutable/WrappedString$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/immutable/WrappedString$$anonfun$newBuilder$1;-><init>()V

    invoke-static {v0, v1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
