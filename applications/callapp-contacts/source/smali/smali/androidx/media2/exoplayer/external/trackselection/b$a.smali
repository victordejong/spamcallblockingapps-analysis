.class final Landroidx/media2/exoplayer/external/trackselection/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/media2/exoplayer/external/Format;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/trackselection/b$1;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    check-cast p2, Landroidx/media2/exoplayer/external/Format;

    .line 1218
    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    sub-int/2addr p2, p1

    return p2
.end method
