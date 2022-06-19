.class public final synthetic Lhg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lag$b;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhg;->a:Z

    iput p2, p0, Lhg;->b:I

    return-void
.end method


# virtual methods
.method public a(Lfh$b;)V
    .locals 2

    iget-boolean v0, p0, Lhg;->a:Z

    iget v1, p0, Lhg;->b:I

    invoke-static {v0, v1, p1}, Lmg;->y(ZILfh$b;)V

    return-void
.end method
