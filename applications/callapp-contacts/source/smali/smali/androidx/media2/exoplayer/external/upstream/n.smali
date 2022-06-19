.class public final Landroidx/media2/exoplayer/external/upstream/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media2/exoplayer/external/upstream/w;

.field private final c:Landroidx/media2/exoplayer/external/upstream/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/upstream/n;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/upstream/f$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/n;->a:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/n;->b:Landroidx/media2/exoplayer/external/upstream/w;

    .line 79
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/n;->c:Landroidx/media2/exoplayer/external/upstream/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/n;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 53
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/p;

    invoke-direct {v0, p2, p3}, Landroidx/media2/exoplayer/external/upstream/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;)V

    invoke-direct {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/upstream/n;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/upstream/f$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 3

    .line 1084
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/m;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/n;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/n;->c:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 1085
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/upstream/f$a;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/m;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f;)V

    .line 1086
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/n;->b:Landroidx/media2/exoplayer/external/upstream/w;

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/m;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    :cond_0
    return-object v0
.end method
