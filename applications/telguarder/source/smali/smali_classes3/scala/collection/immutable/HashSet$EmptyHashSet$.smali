.class public Lscala/collection/immutable/HashSet$EmptyHashSet$;
.super Lscala/collection/immutable/HashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyHashSet$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/HashSet<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashSet$EmptyHashSet$;

    invoke-direct {v0}, Lscala/collection/immutable/HashSet$EmptyHashSet$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Lscala/collection/immutable/HashSet;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashSet$EmptyHashSet$;->MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 222
    sget-object v0, Lscala/collection/immutable/HashSet$EmptyHashSet$;->MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;

    return-object v0
.end method
