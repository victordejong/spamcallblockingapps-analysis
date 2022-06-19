.class public final Lcom/google/android/exoplayer2/extractor/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/i/a$a;,
        Lcom/google/android/exoplayer2/extractor/i/a$c;,
        Lcom/google/android/exoplayer2/extractor/i/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private b:Lcom/google/android/exoplayer2/extractor/j;

.field private c:Lcom/google/android/exoplayer2/extractor/x;

.field private d:Lcom/google/android/exoplayer2/extractor/i/a$b;

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/google/android/exoplayer2/extractor/i/-$$Lambda$a$Ejz2n3Nq7tms0sJTN0x6WDywUm4;->INSTANCE:Lcom/google/android/exoplayer2/extractor/i/-$$Lambda$a$Ejz2n3Nq7tms0sJTN0x6WDywUm4;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/i/a;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i/a;->e:I

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/i/a;->f:J

    return-void
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 53
    new-instance v1, Lcom/google/android/exoplayer2/extractor/i/a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/i/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$Ejz2n3Nq7tms0sJTN0x6WDywUm4()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/i/a;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 94
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/i/c;->a(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/i/b;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 100
    iget p2, v5, Lcom/google/android/exoplayer2/extractor/i/b;->a:I

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 101
    new-instance p2, Lcom/google/android/exoplayer2/extractor/i/a$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-direct {p2, v2, v3, v5}, Lcom/google/android/exoplayer2/extractor/i/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    goto/16 :goto_1

    .line 102
    :cond_0
    iget p2, v5, Lcom/google/android/exoplayer2/extractor/i/b;->a:I

    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 103
    new-instance p2, Lcom/google/android/exoplayer2/extractor/i/a$c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v7, -0x1

    const-string v6, "audio/g711-alaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/i/a$c;-><init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    goto :goto_1

    .line 110
    :cond_1
    iget p2, v5, Lcom/google/android/exoplayer2/extractor/i/b;->a:I

    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    .line 111
    new-instance p2, Lcom/google/android/exoplayer2/extractor/i/a$c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v7, -0x1

    const-string v6, "audio/g711-mlaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/i/a$c;-><init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    goto :goto_1

    .line 120
    :cond_2
    iget p2, v5, Lcom/google/android/exoplayer2/extractor/i/b;->a:I

    iget v2, v5, Lcom/google/android/exoplayer2/extractor/i/b;->f:I

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const v3, 0xfffe

    if-eq p2, v3, :cond_5

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/16 p2, 0x20

    if-ne v2, p2, :cond_3

    const/4 p2, 0x4

    const/4 v7, 0x4

    goto :goto_0

    .line 2080
    :cond_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->b(I)I

    move-result p2

    move v7, p2

    :goto_0
    if-eqz v7, :cond_6

    .line 124
    new-instance p2, Lcom/google/android/exoplayer2/extractor/i/a$c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    const-string v6, "audio/raw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/i/a$c;-><init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    goto :goto_1

    .line 122
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported WAV format type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/google/android/exoplayer2/extractor/i/b;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_8
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->e:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 131
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/i/c;->b(Lcom/google/android/exoplayer2/extractor/i;)Landroid/util/Pair;

    move-result-object p2

    .line 132
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->e:I

    .line 133
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->f:J

    .line 134
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/i/a;->e:I

    invoke-interface {p2, v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/i/a$b;->a(IJ)V

    goto :goto_2

    .line 135
    :cond_9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_a

    .line 136
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->e:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 139
    :cond_a
    :goto_2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->f:J

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 140
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/i/a;->f:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 141
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/i/a$b;->a(Lcom/google/android/exoplayer2/extractor/i;J)Z

    move-result p1

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method public final a(JJ)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a;->d:Lcom/google/android/exoplayer2/extractor/i/a$b;

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/i/a$b;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 2

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/a;->c:Lcom/google/android/exoplayer2/extractor/x;

    .line 75
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/i/c;->a(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/i/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
