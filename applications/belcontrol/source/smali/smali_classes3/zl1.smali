.class public abstract Lzl1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lxl1;[B)Lzl1;
    .locals 2
    .param p0    # Lxl1;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lzl1;->b(Lxl1;[BII)Lzl1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lxl1;[BII)Lzl1;
    .locals 7
    .param p0    # Lxl1;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcm1;->b(JJJ)V

    new-instance v0, Lzl1$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lzl1$a;-><init>(Lxl1;I[BI)V

    return-object v0
.end method
