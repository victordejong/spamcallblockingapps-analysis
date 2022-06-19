.class final Landroidx/media2/player/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 331
    iput-object v0, p0, Landroidx/media2/player/l$a;->a:[B

    return-void
.end method


# virtual methods
.method public final a(BB)V
    .locals 3

    .line 335
    iget v0, p0, Landroidx/media2/player/l$a;->b:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/media2/player/l$a;->a:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 337
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/l$a;->a:[B

    .line 339
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/l$a;->a:[B

    iget v1, p0, Landroidx/media2/player/l$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/l$a;->b:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 340
    iput p1, p0, Landroidx/media2/player/l$a;->b:I

    aput-byte p2, v0, v2

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 353
    iget v0, p0, Landroidx/media2/player/l$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
