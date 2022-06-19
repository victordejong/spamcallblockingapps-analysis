.class public final synthetic Lzn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldo$g;


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzn;->a:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lzn;->a:Landroidx/media2/exoplayer/external/Format;

    check-cast p1, Lwn;

    invoke-static {v0, p1}, Ldo;->s(Landroidx/media2/exoplayer/external/Format;Lwn;)I

    move-result p1

    return p1
.end method
