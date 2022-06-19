.class public Lscala/collection/immutable/ListSet$EmptyListSet$;
.super Lscala/collection/immutable/ListSet;
.source "ListSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/ListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyListSet$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/ListSet<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/ListSet$EmptyListSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/ListSet$EmptyListSet$;

    invoke-direct {v0}, Lscala/collection/immutable/ListSet$EmptyListSet$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/collection/immutable/ListSet;-><init>()V

    sput-object p0, Lscala/collection/immutable/ListSet$EmptyListSet$;->MODULE$:Lscala/collection/immutable/ListSet$EmptyListSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lscala/collection/immutable/ListSet$EmptyListSet$;->MODULE$:Lscala/collection/immutable/ListSet$EmptyListSet$;

    return-object v0
.end method
