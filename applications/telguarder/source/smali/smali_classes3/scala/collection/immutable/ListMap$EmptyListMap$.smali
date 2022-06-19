.class public Lscala/collection/immutable/ListMap$EmptyListMap$;
.super Lscala/collection/immutable/ListMap;
.source "ListMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyListMap$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/ListMap<",
        "Ljava/lang/Object;",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/ListMap$EmptyListMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/ListMap$EmptyListMap$;

    invoke-direct {v0}, Lscala/collection/immutable/ListMap$EmptyListMap$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lscala/collection/immutable/ListMap;-><init>()V

    sput-object p0, Lscala/collection/immutable/ListMap$EmptyListMap$;->MODULE$:Lscala/collection/immutable/ListMap$EmptyListMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lscala/collection/immutable/ListMap$EmptyListMap$;->MODULE$:Lscala/collection/immutable/ListMap$EmptyListMap$;

    return-object v0
.end method
