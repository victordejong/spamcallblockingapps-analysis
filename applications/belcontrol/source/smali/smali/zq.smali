.class public final Lzq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lju;

.field public final c:Lyt;

.field public d:Lck;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lzq;->g:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lzq;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq;->a:Ljava/lang/String;

    iput-object p2, p0, Lzq;->b:Lju;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lzq;->c:Lyt;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lzq;->e:[B

    return-void
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 4

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    iget v0, p0, Lzq;->f:I

    iget-object v1, p0, Lzq;->e:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lzq;->e:[B

    :cond_1
    iget-object v0, p0, Lzq;->e:[B

    iget v1, p0, Lzq;->f:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lbk;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget v0, p0, Lzq;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lzq;->f:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-virtual {p0}, Lzq;->e()V

    return v3
.end method

.method public b(Lbk;)Z
    .locals 4

    iget-object v0, p0, Lzq;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Lbk;->peekFully([BIIZ)Z

    iget-object v0, p0, Lzq;->c:Lyt;

    iget-object v3, p0, Lzq;->e:[B

    invoke-virtual {v0, v3, v2}, Lyt;->H([BI)V

    iget-object v0, p0, Lzq;->c:Lyt;

    invoke-static {v0}, Lpr;->b(Lyt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lzq;->e:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Lbk;->peekFully([BIIZ)Z

    iget-object p1, p0, Lzq;->c:Lyt;

    iget-object v0, p0, Lzq;->e:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lyt;->H([BI)V

    iget-object p1, p0, Lzq;->c:Lyt;

    invoke-static {p1}, Lpr;->b(Lyt;)Z

    move-result p1

    return p1
.end method

.method public c(Lck;)V
    .locals 3

    iput-object p1, p0, Lzq;->d:Lck;

    new-instance v0, Lik$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lik$b;-><init>(J)V

    invoke-interface {p1, v0}, Lck;->e(Lik;)V

    return-void
.end method

.method public final d(J)Lkk;
    .locals 10

    iget-object v0, p0, Lzq;->d:Lck;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lck;->track(II)Lkk;

    move-result-object v0

    iget-object v6, p0, Lzq;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Landroidx/media2/exoplayer/external/Format;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-interface {v0, p1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iget-object p1, p0, Lzq;->d:Lck;

    invoke-interface {p1}, Lck;->endTracks()V

    return-object v0
.end method

.method public final e()V
    .locals 12

    new-instance v0, Lyt;

    iget-object v1, p0, Lzq;->e:[B

    invoke-direct {v0, v1}, Lyt;-><init>([B)V

    invoke-static {v0}, Lpr;->d(Lyt;)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lyt;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v3, Lzq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Lch;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v4, Lzq;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v0, Lch;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpr;->c(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lju;->f(J)J

    move-result-wide v3

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lpr;->a(Lyt;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lzq;->d(J)Lkk;

    return-void

    :cond_6
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpr;->c(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lzq;->b:Lju;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lju;->i(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lju;->b(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {p0, v0, v1}, Lzq;->d(J)Lkk;

    move-result-object v5

    iget-object v0, p0, Lzq;->c:Lyt;

    iget-object v1, p0, Lzq;->e:[B

    iget v2, p0, Lzq;->f:I

    invoke-virtual {v0, v1, v2}, Lyt;->H([BI)V

    iget-object v0, p0, Lzq;->c:Lyt;

    iget v1, p0, Lzq;->f:I

    invoke-interface {v5, v0, v1}, Lkk;->c(Lyt;I)V

    const/4 v8, 0x1

    iget v9, p0, Lzq;->f:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lkk;->a(JIIILkk$a;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
