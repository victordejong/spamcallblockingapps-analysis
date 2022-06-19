.class public final Ltr$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method public constructor <init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr$a;->b:[I

    iput-object p2, p0, Ltr$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    array-length p1, p1

    iput p1, p0, Ltr$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ltr$a;->a:I

    return v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Ltr$a;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Ltr$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method
