.class public final Lscala/collection/parallel/immutable/ParRange$;
.super Ljava/lang/Object;
.source "ParRange.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParRange$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParRange$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParRange$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParRange$;->MODULE$:Lscala/collection/parallel/immutable/ParRange$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 113
    sget-object v0, Lscala/collection/parallel/immutable/ParRange$;->MODULE$:Lscala/collection/parallel/immutable/ParRange$;

    return-object v0
.end method


# virtual methods
.method public apply(IIIZ)Lscala/collection/parallel/immutable/ParRange;
    .locals 1

    .line 114
    new-instance v0, Lscala/collection/parallel/immutable/ParRange;

    if-eqz p4, :cond_0

    .line 115
    new-instance p4, Lscala/collection/immutable/Range$Inclusive;

    invoke-direct {p4, p1, p2, p3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p4, Lscala/collection/immutable/Range;

    invoke-direct {p4, p1, p2, p3}, Lscala/collection/immutable/Range;-><init>(III)V

    .line 114
    :goto_0
    invoke-direct {v0, p4}, Lscala/collection/parallel/immutable/ParRange;-><init>(Lscala/collection/immutable/Range;)V

    return-object v0
.end method
