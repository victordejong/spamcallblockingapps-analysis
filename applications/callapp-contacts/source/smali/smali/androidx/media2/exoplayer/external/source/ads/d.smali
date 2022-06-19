.class final synthetic Landroidx/media2/exoplayer/external/source/ads/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/ads/b;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/ads/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/d;->a:Landroidx/media2/exoplayer/external/source/ads/b;

    return-void
.end method

.method static a(Landroidx/media2/exoplayer/external/source/ads/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/d;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/ads/d;-><init>(Landroidx/media2/exoplayer/external/source/ads/b;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
