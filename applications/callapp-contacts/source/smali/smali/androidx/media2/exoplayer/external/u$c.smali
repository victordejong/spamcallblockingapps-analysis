.class final Landroidx/media2/exoplayer/external/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:I

.field private d:Landroidx/media2/exoplayer/external/ac;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/u$1;)V
    .locals 0

    .line 1958
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1976
    iget v0, p0, Landroidx/media2/exoplayer/external/u$c;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/u$c;->a:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ac;)Z
    .locals 1

    .line 1966
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u$c;->d:Landroidx/media2/exoplayer/external/ac;

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/media2/exoplayer/external/u$c;->a:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/u$c;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(I)V
    .locals 3

    .line 1980
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/u$c;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/u$c;->c:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1984
    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    return-void

    .line 1987
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/u$c;->b:Z

    .line 1988
    iput p1, p0, Landroidx/media2/exoplayer/external/u$c;->c:I

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/ac;)V
    .locals 0

    .line 1970
    iput-object p1, p0, Landroidx/media2/exoplayer/external/u$c;->d:Landroidx/media2/exoplayer/external/ac;

    const/4 p1, 0x0

    .line 1971
    iput p1, p0, Landroidx/media2/exoplayer/external/u$c;->a:I

    .line 1972
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/u$c;->b:Z

    return-void
.end method
