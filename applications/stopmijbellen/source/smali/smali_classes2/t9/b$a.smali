.class public final Lt9/b$a;
.super Laa/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(Laa/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laa/j;-><init>(Laa/x;)V

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Laa/j;->E(Laa/f;J)V

    .line 2
    iget-wide v0, p0, Lt9/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lt9/b$a;->b:J

    return-void
.end method
