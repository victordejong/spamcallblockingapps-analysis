.class public final Landroidx/media2/exoplayer/external/ak$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media2/exoplayer/external/ai;

.field private c:Landroidx/media2/exoplayer/external/util/b;

.field private d:Landroidx/media2/exoplayer/external/trackselection/g;

.field private e:Landroidx/media2/exoplayer/external/y;

.field private f:Landroidx/media2/exoplayer/external/upstream/c;

.field private g:Landroidx/media2/exoplayer/external/a/a;

.field private h:Landroid/os/Looper;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    new-instance v0, Landroidx/media2/exoplayer/external/f;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/f;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/ak$a;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;)V
    .locals 10

    .line 145
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroidx/media2/exoplayer/external/d;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/d;-><init>()V

    .line 150
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/j;->a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/j;

    move-result-object v5

    .line 151
    invoke-static {}, Landroidx/media2/exoplayer/external/util/ac;->a()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Landroidx/media2/exoplayer/external/a/a;

    sget-object v0, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    invoke-direct {v7, v0}, Landroidx/media2/exoplayer/external/a/a;-><init>(Landroidx/media2/exoplayer/external/util/b;)V

    sget-object v9, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 145
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/ak$a;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroid/os/Looper;Landroidx/media2/exoplayer/external/a/a;ZLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroid/os/Looper;Landroidx/media2/exoplayer/external/a/a;ZLandroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak$a;->a:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ak$a;->b:Landroidx/media2/exoplayer/external/ai;

    .line 187
    iput-object p3, p0, Landroidx/media2/exoplayer/external/ak$a;->d:Landroidx/media2/exoplayer/external/trackselection/g;

    .line 188
    iput-object p4, p0, Landroidx/media2/exoplayer/external/ak$a;->e:Landroidx/media2/exoplayer/external/y;

    .line 189
    iput-object p5, p0, Landroidx/media2/exoplayer/external/ak$a;->f:Landroidx/media2/exoplayer/external/upstream/c;

    .line 190
    iput-object p6, p0, Landroidx/media2/exoplayer/external/ak$a;->h:Landroid/os/Looper;

    .line 191
    iput-object p7, p0, Landroidx/media2/exoplayer/external/ak$a;->g:Landroidx/media2/exoplayer/external/a/a;

    .line 192
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/ak$a;->i:Z

    .line 193
    iput-object p9, p0, Landroidx/media2/exoplayer/external/ak$a;->c:Landroidx/media2/exoplayer/external/util/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ak$a;
    .locals 1

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak$a;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 245
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak$a;->h:Landroid/os/Looper;

    return-object p0
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/g;)Landroidx/media2/exoplayer/external/ak$a;
    .locals 1

    .line 204
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak$a;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 205
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak$a;->d:Landroidx/media2/exoplayer/external/trackselection/g;

    return-object p0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/c;)Landroidx/media2/exoplayer/external/ak$a;
    .locals 1

    .line 230
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak$a;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 231
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak$a;->f:Landroidx/media2/exoplayer/external/upstream/c;

    return-object p0
.end method

.method public final a()Landroidx/media2/exoplayer/external/ak;
    .locals 11

    .line 300
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak$a;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 301
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/ak$a;->j:Z

    .line 302
    new-instance v0, Landroidx/media2/exoplayer/external/ak;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ak$a;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ak$a;->b:Landroidx/media2/exoplayer/external/ai;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ak$a;->d:Landroidx/media2/exoplayer/external/trackselection/g;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ak$a;->e:Landroidx/media2/exoplayer/external/y;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/ak$a;->f:Landroidx/media2/exoplayer/external/upstream/c;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/ak$a;->g:Landroidx/media2/exoplayer/external/a/a;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/ak$a;->c:Landroidx/media2/exoplayer/external/util/b;

    iget-object v10, p0, Landroidx/media2/exoplayer/external/ak$a;->h:Landroid/os/Looper;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/ak;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/a/a;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V

    return-object v0
.end method
