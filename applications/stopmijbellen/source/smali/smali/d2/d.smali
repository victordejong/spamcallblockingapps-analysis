.class public Ld2/d;
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
    iput-object p1, p0, Ld2/d;->a:Ld2/f1;

    iput-wide p2, p0, Ld2/d;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/d;->a:Ld2/f1;

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    iget-wide v1, p0, Ld2/d;->b:J

    invoke-virtual {v0, v1, v2}, Ld2/b2;->b(J)Ld2/f4;

    move-result-object v0

    invoke-static {v0}, Ld2/i3;->d(Ld2/f4;)Ld2/f4;

    return-object v0
.end method
