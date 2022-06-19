.class public final Ldt$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldt$c;->a:I

    iput-wide p2, p0, Ldt$c;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLdt$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldt$c;-><init>(IJ)V

    return-void
.end method

.method public static synthetic a(Ldt$c;)I
    .locals 0

    iget p0, p0, Ldt$c;->a:I

    return p0
.end method

.method public static synthetic b(Ldt$c;)J
    .locals 2

    iget-wide v0, p0, Ldt$c;->b:J

    return-wide v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    iget v0, p0, Ldt$c;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
