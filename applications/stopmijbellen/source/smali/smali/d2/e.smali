.class public Ld2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld2/f4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Ld2/f1;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e;->a:Ld2/f1;

    iput-wide p2, p0, Ld2/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/e;->a:Ld2/f1;

    .line 2
    iget-boolean v0, v0, Ld2/f1;->S:Z

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Ld2/e;->b:J

    .line 4
    invoke-static {v0, v1}, Ld2/b;->g(J)Ld2/f4;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 5
    invoke-static {v0, v1}, Ld2/b;->g(J)Ld2/f4;

    move-result-object v0

    :goto_0
    return-object v0
.end method
