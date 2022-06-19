.class public final Lvn$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvn$a;->a:I

    iput-wide p2, p0, Lvn$a;->b:J

    return-void
.end method

.method public static a(Lbk;Lyt;)Lvn$a;
    .locals 3

    iget-object v0, p1, Lyt;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lbk;->peekFully([BII)V

    invoke-virtual {p1, v1}, Lyt;->J(I)V

    invoke-virtual {p1}, Lyt;->h()I

    move-result p0

    invoke-virtual {p1}, Lyt;->m()J

    move-result-wide v0

    new-instance p1, Lvn$a;

    invoke-direct {p1, p0, v0, v1}, Lvn$a;-><init>(IJ)V

    return-object p1
.end method
