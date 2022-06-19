.class public final Lfq0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lbq0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbq0$c;

    invoke-direct {v0}, Lbq0$c;-><init>()V

    sput-object v0, Lfq0;->a:Lbq0$c;

    return-void
.end method

.method public static a(Ljava/util/List;)Lbq0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldq0;",
            ">;)",
            "Lbq0$a;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbq0$a;

    invoke-direct {v0, p0}, Lbq0$a;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uris must not be null or empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)Lbq0$b;
    .locals 1

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_0

    new-instance v0, Lbq0$b;

    invoke-direct {v0, p0, p1}, Lbq0$b;-><init>(II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window end can\'t be less than window start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window start can\'t be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
