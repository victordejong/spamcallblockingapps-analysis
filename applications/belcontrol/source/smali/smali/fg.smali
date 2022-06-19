.class public final Lfg;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lfg;->a:I

    iput-object p2, p0, Lfg;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/OutOfMemoryError;)Lfg;
    .locals 3

    new-instance v0, Lfg;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lfg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/Exception;I)Lfg;
    .locals 2

    new-instance v0, Lfg;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lfg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static c(Ljava/io/IOException;)Lfg;
    .locals 3

    new-instance v0, Lfg;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lfg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/RuntimeException;)Lfg;
    .locals 3

    new-instance v0, Lfg;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lfg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public e()Ljava/io/IOException;
    .locals 1

    iget v0, p0, Lfg;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p0, Lfg;->b:Ljava/lang/Throwable;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
