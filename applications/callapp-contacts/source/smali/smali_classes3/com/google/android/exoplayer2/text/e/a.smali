.class public final Lcom/google/android/exoplayer2/text/e/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/exoplayer2/text/e/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/e/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/e/a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    const v0, -0x800001

    .line 90
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/a;->e:F

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/a;->f:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Z

    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 98
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/e/b;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/e/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Lcom/google/android/exoplayer2/text/e/b;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/u;)V

    return-void

    .line 101
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Z

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Lcom/google/android/exoplayer2/text/e/b;

    return-void
.end method

.method private static a(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method private static a(JLjava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;>;)I"
        }
    .end annotation

    .line 462
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 463
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    .line 467
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 472
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 476
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 474
    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 8

    .line 290
    sget-object v0, Lcom/google/android/exoplayer2/text/e/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    const/4 v6, 0x2

    .line 296
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 297
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 298
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 2

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "[Script Info]"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/e/a;->b(Lcom/google/android/exoplayer2/util/u;)V

    goto :goto_0

    :cond_1
    const-string v1, "[V4+ Styles]"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/e/a;->c(Lcom/google/android/exoplayer2/util/u;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->d:Ljava/util/Map;

    goto :goto_0

    :cond_2
    const-string v1, "[V4 Styles]"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    goto :goto_0

    :cond_3
    const-string v1, "[Events]"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 216
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/a;->c:Lcom/google/android/exoplayer2/text/e/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Format:"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/e/b;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Dialogue:"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    .line 223
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping dialogue line before complete format: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaDecoder"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/google/android/exoplayer2/text/e/a;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/e/b;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/e/b;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/e/b;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "Dialogue:"

    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const/16 v5, 0x9

    .line 243
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer2/text/e/b;->e:I

    const-string v7, ","

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 244
    array-length v6, v5

    iget v7, v2, Lcom/google/android/exoplayer2/text/e/b;->e:I

    const-string v8, "SsaDecoder"

    if-eq v6, v7, :cond_0

    .line 245
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    iget v6, v2, Lcom/google/android/exoplayer2/text/e/b;->a:I

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/e/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    const-string v9, "Skipping invalid timing: "

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v6, v10

    if-nez v12, :cond_1

    .line 251
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_1
    iget v12, v2, Lcom/google/android/exoplayer2/text/e/b;->b:I

    aget-object v12, v5, v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/e/a;->a(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-nez v14, :cond_2

    .line 257
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/e/a;->d:Ljava/util/Map;

    const/4 v9, -0x1

    if-eqz v1, :cond_3

    iget v1, v2, Lcom/google/android/exoplayer2/text/e/b;->c:I

    if-eq v1, v9, :cond_3

    .line 264
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/e/a;->d:Ljava/util/Map;

    iget v11, v2, Lcom/google/android/exoplayer2/text/e/b;->c:I

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/e/c;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 266
    :goto_0
    iget v2, v2, Lcom/google/android/exoplayer2/text/e/b;->d:I

    aget-object v2, v5, v2

    .line 267
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/e/c$b;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/c$b;

    move-result-object v5

    .line 269
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/e/c$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "\\N"

    const-string v14, "\n"

    .line 270
    invoke-virtual {v2, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "\\n"

    .line 271
    invoke-virtual {v2, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "\\h"

    const-string v14, "\u00a0"

    .line 272
    invoke-virtual {v2, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 273
    iget v11, v0, Lcom/google/android/exoplayer2/text/e/a;->e:F

    iget v14, v0, Lcom/google/android/exoplayer2/text/e/a;->f:F

    .line 1308
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1309
    new-instance v2, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 1539
    iput-object v15, v2, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    const v16, -0x800001

    if-eqz v1, :cond_8

    .line 1312
    iget-object v9, v1, Lcom/google/android/exoplayer2/text/e/c;->c:Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 1313
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget-object v10, v1, Lcom/google/android/exoplayer2/text/e/c;->c:Ljava/lang/Integer;

    .line 1314
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1316
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v10

    move-wide/from16 v17, v12

    const/16 v0, 0x21

    const/4 v12, 0x0

    .line 1313
    invoke-virtual {v15, v9, v12, v10, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v12

    .line 1319
    :goto_1
    iget v0, v1, Lcom/google/android/exoplayer2/text/e/c;->d:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_5

    cmpl-float v0, v14, v16

    if-eqz v0, :cond_5

    .line 1320
    iget v0, v1, Lcom/google/android/exoplayer2/text/e/c;->d:F

    div-float/2addr v0, v14

    const/4 v9, 0x1

    invoke-virtual {v2, v0, v9}, Lcom/google/android/exoplayer2/text/b$a;->b(FI)Lcom/google/android/exoplayer2/text/b$a;

    .line 1323
    :cond_5
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/text/e/c;->e:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/text/e/c;->f:Z

    if-eqz v0, :cond_6

    .line 1324
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x3

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1327
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    const/4 v12, 0x0

    .line 1324
    invoke-virtual {v15, v0, v12, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    const/16 v10, 0x21

    const/4 v12, 0x0

    .line 1329
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/text/e/c;->e:Z

    if-eqz v0, :cond_7

    .line 1330
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1333
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 1330
    invoke-virtual {v15, v0, v12, v13, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    .line 1335
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/text/e/c;->f:Z

    if-eqz v0, :cond_9

    .line 1336
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v13, 0x2

    invoke-direct {v0, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1339
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 1336
    invoke-virtual {v15, v0, v12, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_8
    move-wide/from16 v17, v12

    :cond_9
    :goto_2
    const/4 v13, 0x2

    .line 1345
    :goto_3
    iget v0, v5, Lcom/google/android/exoplayer2/text/e/c$b;->a:I

    const/4 v9, -0x1

    if-eq v0, v9, :cond_a

    .line 1346
    iget v9, v5, Lcom/google/android/exoplayer2/text/e/c$b;->a:I

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 1348
    iget v9, v1, Lcom/google/android/exoplayer2/text/e/c;->b:I

    :cond_b
    :goto_4
    const-string v0, "Unknown alignment: "

    packed-switch v9, :pswitch_data_0

    .line 2388
    :pswitch_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2384
    :pswitch_1
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_6

    .line 2380
    :pswitch_2
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_6

    .line 2376
    :pswitch_3
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_6

    :goto_5
    :pswitch_4
    const/4 v10, 0x0

    .line 2581
    :goto_6
    iput-object v10, v2, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    const/high16 v12, -0x80000000

    packed-switch v9, :pswitch_data_1

    .line 3434
    :pswitch_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    const/4 v1, 0x2

    goto :goto_8

    :pswitch_7
    const/4 v1, 0x1

    goto :goto_8

    :pswitch_8
    const/4 v1, 0x0

    goto :goto_8

    :goto_7
    :pswitch_9
    const/high16 v1, -0x80000000

    .line 3675
    :goto_8
    iput v1, v2, Lcom/google/android/exoplayer2/text/b$a;->f:I

    packed-switch v9, :pswitch_data_2

    .line 4411
    :pswitch_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_b
    const/4 v10, 0x0

    goto :goto_a

    :pswitch_c
    const/4 v10, 0x1

    goto :goto_a

    :pswitch_d
    const/4 v10, 0x2

    goto :goto_a

    :goto_9
    :pswitch_e
    const/high16 v10, -0x80000000

    .line 4634
    :goto_a
    iput v10, v2, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1356
    iget-object v0, v5, Lcom/google/android/exoplayer2/text/e/c$b;->b:Landroid/graphics/PointF;

    if-eqz v0, :cond_c

    cmpl-float v0, v14, v16

    if-eqz v0, :cond_c

    cmpl-float v0, v11, v16

    if-eqz v0, :cond_c

    .line 1359
    iget-object v0, v5, Lcom/google/android/exoplayer2/text/e/c$b;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v11

    .line 4655
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1360
    iget-object v0, v5, Lcom/google/android/exoplayer2/text/e/c$b;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v14

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    .line 4686
    iget v0, v2, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 1363
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/e/a;->a(I)F

    move-result v0

    .line 5655
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 6645
    iget v0, v2, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1364
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/e/a;->a(I)F

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    .line 1367
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    .line 275
    invoke-static {v6, v7, v4, v3}, Lcom/google/android/exoplayer2/text/e/a;->a(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    move-wide/from16 v5, v17

    .line 276
    invoke-static {v5, v6, v4, v3}, Lcom/google/android/exoplayer2/text/e/a;->a(JLjava/util/List;Ljava/util/List;)I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_d

    .line 279
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private b(Lcom/google/android/exoplayer2/util/u;)V
    .locals 4

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->b()I

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_4

    :cond_1
    const-string v1, ":"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 157
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "playresx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "playresy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    :try_start_0
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/e/a;->f:F

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 160
    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/e/a;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/e/c;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->b()I

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_4

    :cond_1
    const-string v3, "Format:"

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/e/c$a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/c$a;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v3, "Style:"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    .line 195
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SsaDecoder"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/text/e/c;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/e/c$a;)Lcom/google/android/exoplayer2/text/e/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/e/c;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 2

    .line 108
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    .line 112
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/e/a;->b:Z

    if-nez p1, :cond_0

    .line 113
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 115
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lcom/google/android/exoplayer2/text/e/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/util/List;Ljava/util/List;)V

    .line 116
    new-instance p1, Lcom/google/android/exoplayer2/text/e/d;

    invoke-direct {p1, p3, v0}, Lcom/google/android/exoplayer2/text/e/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
