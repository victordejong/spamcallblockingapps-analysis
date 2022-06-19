.class public final Lscala/collection/immutable/StringLike$;
.super Ljava/lang/Object;
.source "StringLike.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/StringLike$;


# instance fields
.field private final CR:I

.field private final FF:I

.field private final LF:I

.field private final SU:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/StringLike$;

    invoke-direct {v0}, Lscala/collection/immutable/StringLike$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/StringLike$;->MODULE$:Lscala/collection/immutable/StringLike$;

    return-void
.end method

.method private final CR()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method private final FF()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method private final LF()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private final SU()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method
