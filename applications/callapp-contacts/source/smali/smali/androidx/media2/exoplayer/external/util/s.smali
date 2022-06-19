.class public final Landroidx/media2/exoplayer/external/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/s$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/s$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/s$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/util/s$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Landroidx/media2/exoplayer/external/util/s$a;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/util/t;->a:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/s;->a:Ljava/util/Comparator;

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/util/u;->a:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/s;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/util/s;->c:I

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/media2/exoplayer/external/util/s$a;

    .line 69
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/s;->e:[Landroidx/media2/exoplayer/external/util/s$a;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/s;->d:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Landroidx/media2/exoplayer/external/util/s;->f:I

    return-void
.end method

.method static final synthetic a(Landroidx/media2/exoplayer/external/util/s$a;Landroidx/media2/exoplayer/external/util/s$a;)I
    .locals 0

    .line 46
    iget p0, p0, Landroidx/media2/exoplayer/external/util/s$a;->c:F

    iget p1, p1, Landroidx/media2/exoplayer/external/util/s$a;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static final synthetic b(Landroidx/media2/exoplayer/external/util/s$a;Landroidx/media2/exoplayer/external/util/s$a;)I
    .locals 0

    .line 44
    iget p0, p0, Landroidx/media2/exoplayer/external/util/s$a;->a:I

    iget p1, p1, Landroidx/media2/exoplayer/external/util/s$a;->a:I

    sub-int/2addr p0, p1

    return p0
.end method
