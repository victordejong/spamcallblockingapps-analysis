.class public final Lkl$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[J

.field public final b:[I

.field public final c:I

.field public final d:[J

.field public final e:[I

.field public final f:J


# direct methods
.method public constructor <init>([J[II[J[IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl$b;->a:[J

    iput-object p2, p0, Lkl$b;->b:[I

    iput p3, p0, Lkl$b;->c:I

    iput-object p4, p0, Lkl$b;->d:[J

    iput-object p5, p0, Lkl$b;->e:[I

    iput-wide p6, p0, Lkl$b;->f:J

    return-void
.end method

.method public synthetic constructor <init>([J[II[J[IJLkl$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lkl$b;-><init>([J[II[J[IJ)V

    return-void
.end method
