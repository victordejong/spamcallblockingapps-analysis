.class public final Luj$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final d:Luj$f;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Luj$f;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Luj$f;-><init>(IJJ)V

    sput-object v6, Luj$f;->d:Luj$f;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luj$f;->a:I

    iput-wide p2, p0, Luj$f;->b:J

    iput-wide p4, p0, Luj$f;->c:J

    return-void
.end method

.method public static synthetic a(Luj$f;)I
    .locals 0

    iget p0, p0, Luj$f;->a:I

    return p0
.end method

.method public static synthetic b(Luj$f;)J
    .locals 2

    iget-wide v0, p0, Luj$f;->b:J

    return-wide v0
.end method

.method public static synthetic c(Luj$f;)J
    .locals 2

    iget-wide v0, p0, Luj$f;->c:J

    return-wide v0
.end method

.method public static d(JJ)Luj$f;
    .locals 7

    new-instance v6, Luj$f;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Luj$f;-><init>(IJJ)V

    return-object v6
.end method

.method public static e(J)Luj$f;
    .locals 7

    new-instance v6, Luj$f;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Luj$f;-><init>(IJJ)V

    return-object v6
.end method

.method public static f(JJ)Luj$f;
    .locals 7

    new-instance v6, Luj$f;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Luj$f;-><init>(IJJ)V

    return-object v6
.end method
