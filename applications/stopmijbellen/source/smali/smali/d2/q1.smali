.class public Ld2/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld2/a<",
        "Ld2/w1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Ld2/w1;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ld2/r1;[Ld2/w1;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/q1;->a:[Ld2/w1;

    iput-object p3, p0, Ld2/q1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ld2/w1;

    .line 2
    iget-object v0, p0, Ld2/q1;->a:[Ld2/w1;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    iget-object p1, p0, Ld2/q1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
