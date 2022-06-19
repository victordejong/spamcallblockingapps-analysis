.class public final Ltk$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltk$b;->a:I

    iput-wide p2, p0, Ltk$b;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLtk$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltk$b;-><init>(IJ)V

    return-void
.end method

.method public static synthetic a(Ltk$b;)J
    .locals 2

    iget-wide v0, p0, Ltk$b;->b:J

    return-wide v0
.end method

.method public static synthetic b(Ltk$b;)I
    .locals 0

    iget p0, p0, Ltk$b;->a:I

    return p0
.end method
