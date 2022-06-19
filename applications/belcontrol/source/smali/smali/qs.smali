.class public final synthetic Lqs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnt$a;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqs;->a:I

    iput-wide p2, p0, Lqs;->b:J

    iput-wide p4, p0, Lqs;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lqs;->a:I

    iget-wide v1, p0, Lqs;->b:J

    iget-wide v3, p0, Lqs;->c:J

    move-object v5, p1

    check-cast v5, Lgs$a;

    invoke-static/range {v0 .. v5}, Lss;->k(IJJLgs$a;)V

    return-void
.end method
