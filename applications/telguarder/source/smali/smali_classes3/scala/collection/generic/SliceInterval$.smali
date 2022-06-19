.class public final Lscala/collection/generic/SliceInterval$;
.super Ljava/lang/Object;
.source "SliceInterval.scala"


# static fields
.field public static final MODULE$:Lscala/collection/generic/SliceInterval$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/SliceInterval$;

    invoke-direct {v0}, Lscala/collection/generic/SliceInterval$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/SliceInterval$;->MODULE$:Lscala/collection/generic/SliceInterval$;

    return-void
.end method


# virtual methods
.method public apply(II)Lscala/collection/generic/SliceInterval;
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 48
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 49
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p2, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p2

    if-gt p2, p1, :cond_0

    .line 51
    new-instance p2, Lscala/collection/generic/SliceInterval;

    invoke-direct {p2, p1, p1}, Lscala/collection/generic/SliceInterval;-><init>(II)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lscala/collection/generic/SliceInterval;

    invoke-direct {v0, p1, p2}, Lscala/collection/generic/SliceInterval;-><init>(II)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method
