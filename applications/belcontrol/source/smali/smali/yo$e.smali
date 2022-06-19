.class public final Lyo$e;
.super Lph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lph;-><init>()V

    iput-object p1, p0, Lyo$e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILph$b;Z)Lph$b;
    .locals 8

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lph$b;->n(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lph$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(ILph$c;ZJ)Lph$c;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo$e;->b:Ljava/lang/Object;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v16}, Lph$c;->e(Ljava/lang/Object;JJZZJJIIJ)Lph$c;

    return-object p2
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
