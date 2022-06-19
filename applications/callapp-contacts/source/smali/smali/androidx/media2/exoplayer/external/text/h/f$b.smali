.class final Landroidx/media2/exoplayer/external/text/h/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/text/h/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media2/exoplayer/external/text/h/d;


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/text/h/d;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p1, p0, Landroidx/media2/exoplayer/external/text/h/f$b;->a:I

    .line 489
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/h/f$b;->b:Landroidx/media2/exoplayer/external/text/h/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 482
    check-cast p1, Landroidx/media2/exoplayer/external/text/h/f$b;

    .line 1494
    iget v0, p0, Landroidx/media2/exoplayer/external/text/h/f$b;->a:I

    iget p1, p1, Landroidx/media2/exoplayer/external/text/h/f$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method
