.class final synthetic Landroidx/media2/exoplayer/external/util/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/util/u;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/u;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/util/u;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media2/exoplayer/external/util/s$a;

    check-cast p2, Landroidx/media2/exoplayer/external/util/s$a;

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/s;->a(Landroidx/media2/exoplayer/external/util/s$a;Landroidx/media2/exoplayer/external/util/s$a;)I

    move-result p1

    return p1
.end method
