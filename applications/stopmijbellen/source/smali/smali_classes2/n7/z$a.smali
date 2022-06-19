.class public Ln7/z$a;
.super Lk7/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    return-void
.end method

.method public static p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;
    .locals 4

    .line 1
    new-instance v0, Ln7/z$a;

    invoke-direct {v0}, Ln7/z$a;-><init>()V

    .line 2
    new-instance v1, Ln7/z$a$a;

    invoke-direct {v1, v0, p1}, Ln7/z$a$a;-><init>(Ln7/z$a;Ljava/lang/Exception;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    return-object v0
.end method
