.class public abstract Lbm1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lxl1;JLem1;)Lbm1;
    .locals 1
    .param p0    # Lxl1;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "source == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbm1$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lbm1$a;-><init>(Lxl1;JLem1;)V

    return-object v0
.end method

.method public static e(Lxl1;[B)Lbm1;
    .locals 3
    .param p0    # Lxl1;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ldm1;

    invoke-direct {v0}, Ldm1;-><init>()V

    invoke-virtual {v0, p1}, Ldm1;->D([B)Ldm1;

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lbm1;->a(Lxl1;JLem1;)Lbm1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lbm1;->g()Lem1;

    move-result-object v0

    invoke-static {v0}, Lcm1;->c(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract g()Lem1;
.end method
