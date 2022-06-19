.class public final Lc/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/y$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020\u0000J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/Segment;",
        "",
        "()V",
        "data",
        "",
        "pos",
        "",
        "limit",
        "shared",
        "",
        "owner",
        "([BIIZZ)V",
        "next",
        "prev",
        "compact",
        "",
        "pop",
        "push",
        "segment",
        "sharedCopy",
        "split",
        "byteCount",
        "unsharedCopy",
        "writeTo",
        "sink",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final h:Lc/y$a;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lc/y;

.field public g:Lc/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lc/y;->h:Lc/y$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lc/y;->a:[B

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lc/y;->e:Z

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lc/y;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/y;->a:[B

    .line 69
    iput p2, p0, Lc/y;->b:I

    .line 70
    iput p3, p0, Lc/y;->c:I

    .line 71
    iput-boolean p4, p0, Lc/y;->d:Z

    .line 72
    iput-boolean p5, p0, Lc/y;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lc/y;
    .locals 7

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lc/y;->d:Z

    .line 82
    new-instance v0, Lc/y;

    iget-object v2, p0, Lc/y;->a:[B

    iget v3, p0, Lc/y;->b:I

    iget v4, p0, Lc/y;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lc/y;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final a(Lc/y;)Lc/y;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object v0, p0

    check-cast v0, Lc/y;

    iput-object v0, p1, Lc/y;->g:Lc/y;

    .line 106
    iget-object v0, p0, Lc/y;->f:Lc/y;

    iput-object v0, p1, Lc/y;->f:Lc/y;

    .line 107
    iget-object v0, p0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p1, v0, Lc/y;->g:Lc/y;

    .line 108
    iput-object p1, p0, Lc/y;->f:Lc/y;

    return-object p1
.end method

.method public final a(Lc/y;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p1, Lc/y;->e:Z

    if-eqz v0, :cond_3

    .line 160
    iget v0, p1, Lc/y;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 162
    iget-boolean v1, p1, Lc/y;->d:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 163
    iget v3, p1, Lc/y;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 164
    iget-object v1, p1, Lc/y;->a:[B

    invoke-static {v1, v1, v3, v0}, Lkotlin/a/i;->a([B[BII)[B

    .line 165
    iget v0, p1, Lc/y;->c:I

    iget v1, p1, Lc/y;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lc/y;->c:I

    const/4 v0, 0x0

    .line 166
    iput v0, p1, Lc/y;->b:I

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 169
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/y;->a:[B

    iget-object v1, p1, Lc/y;->a:[B

    iget v2, p1, Lc/y;->c:I

    iget v3, p0, Lc/y;->b:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/a/i;->a([B[BIII)[B

    .line 171
    iget v0, p1, Lc/y;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lc/y;->c:I

    .line 172
    iget p1, p0, Lc/y;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lc/y;->b:I

    return-void

    .line 159
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final b()Lc/y;
    .locals 7

    .line 86
    new-instance v6, Lc/y;

    iget-object v0, p0, Lc/y;->a:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lc/y;->b:I

    iget v3, p0, Lc/y;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/y;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final c()Lc/y;
    .locals 4

    .line 93
    iget-object v0, p0, Lc/y;->f:Lc/y;

    move-object v1, p0

    check-cast v1, Lc/y;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 94
    :goto_0
    iget-object v1, p0, Lc/y;->g:Lc/y;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lc/y;->f:Lc/y;

    iput-object v3, v1, Lc/y;->f:Lc/y;

    .line 95
    iget-object v1, p0, Lc/y;->f:Lc/y;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lc/y;->g:Lc/y;

    iput-object v3, v1, Lc/y;->g:Lc/y;

    .line 96
    iput-object v2, p0, Lc/y;->f:Lc/y;

    .line 97
    iput-object v2, p0, Lc/y;->g:Lc/y;

    return-object v0
.end method
