.class public abstract Lokhttp3/ab;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lokhttp3/v;[B)Lokhttp3/ab;
    .locals 2
    .param p0    # Lokhttp3/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lokhttp3/ab;->a(Lokhttp3/v;[BII)Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/v;[BII)Lokhttp3/ab;
    .locals 6
    .param p0    # Lokhttp3/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/c;->a(JJJ)V

    .line 88
    new-instance v0, Lokhttp3/ab$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lokhttp3/ab$1;-><init>(Lokhttp3/v;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lokhttp3/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(La/d;)V
.end method

.method public b()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method
