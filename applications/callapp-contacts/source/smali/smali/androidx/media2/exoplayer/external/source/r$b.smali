.class final Landroidx/media2/exoplayer/external/source/r$b;
.super Landroidx/media2/exoplayer/external/source/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/o;-><init>(Landroidx/media2/exoplayer/external/al;)V

    .line 243
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/r$b;
    .locals 1

    .line 238
    new-instance v0, Landroidx/media2/exoplayer/external/source/r$b;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/r$b;-><init>(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/r$b;)Ljava/lang/Object;
    .locals 0

    .line 214
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/r$b;
    .locals 2

    .line 226
    new-instance v0, Landroidx/media2/exoplayer/external/source/r$b;

    new-instance v1, Landroidx/media2/exoplayer/external/source/r$a;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/source/r$a;-><init>(Ljava/lang/Object;)V

    sget-object p0, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Landroidx/media2/exoplayer/external/source/r$b;-><init>(Landroidx/media2/exoplayer/external/al;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r$b;->b:Landroidx/media2/exoplayer/external/al;

    sget-object v1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r$b;->b:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    .line 263
    iget-object p1, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    sget-object p1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    iput-object p1, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r$b;->b:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 277
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/r$b;->d:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method
