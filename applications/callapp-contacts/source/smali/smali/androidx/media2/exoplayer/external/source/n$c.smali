.class public final Landroidx/media2/exoplayer/external/source/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f$a;

.field private b:Landroidx/media2/exoplayer/external/extractor/j;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private e:Landroidx/media2/exoplayer/external/upstream/t;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/n$c;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 89
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/q;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/q;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/n$c;->e:Landroidx/media2/exoplayer/external/upstream/t;

    const/high16 p1, 0x100000

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/source/n$c;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/j;)Landroidx/media2/exoplayer/external/source/n$c;
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/n$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/n$c;->b:Landroidx/media2/exoplayer/external/extractor/j;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/n$c;
    .locals 1

    .line 134
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/n$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/n$c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/n;
    .locals 10

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/n$c;->g:Z

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/n$c;->b:Landroidx/media2/exoplayer/external/extractor/j;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/n$c;->b:Landroidx/media2/exoplayer/external/extractor/j;

    .line 202
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/n;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/n$c;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/n$c;->b:Landroidx/media2/exoplayer/external/extractor/j;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/n$c;->e:Landroidx/media2/exoplayer/external/upstream/t;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/n$c;->c:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/source/n$c;->f:I

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/n$c;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/source/n;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/extractor/j;Landroidx/media2/exoplayer/external/upstream/t;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/n$1;)V

    return-object v0
.end method

.method public final synthetic b(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/t;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/n;

    move-result-object p1

    return-object p1
.end method
