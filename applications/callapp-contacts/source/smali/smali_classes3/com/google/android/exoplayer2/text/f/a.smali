.class public final Lcom/google/android/exoplayer2/text/f/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/StringBuilder;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/f/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/f/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SubripDecoder"

    .line 69
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/f/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    return p0
.end method

.method private static a(Ljava/util/regex/Matcher;I)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 227
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 228
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long v5, v5, v1

    mul-long v5, v5, v1

    mul-long v5, v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 230
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long v7, v7, v1

    mul-long v7, v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v0, p1, 0x3

    .line 231
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v3

    add-long/2addr v5, v0

    add-int/lit8 p1, p1, 0x4

    .line 232
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 234
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v5, p0

    :cond_1
    mul-long v5, v5, v3

    return-wide v5
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/google/android/exoplayer2/text/f/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    sub-int/2addr v3, v1

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v3, v2

    const-string v5, ""

    .line 161
    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "SubripDecoder"

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v3, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/o;-><init>()V

    .line 78
    new-instance v4, Lcom/google/android/exoplayer2/util/u;

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    .line 81
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_d

    .line 89
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v4, "Unexpected end"

    .line 98
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 102
    :cond_0
    sget-object v7, Lcom/google/android/exoplayer2/text/f/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 103
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v5, 0x1

    .line 104
    invoke-static {v7, v5}, Lcom/google/android/exoplayer2/text/f/a;->a(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    const/4 v8, 0x6

    .line 105
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/text/f/a;->a(Ljava/util/regex/Matcher;I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    .line 112
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/f/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 114
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v7

    .line 115
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 116
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 117
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/google/android/exoplayer2/text/f/a;->d:Ljava/util/ArrayList;

    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/text/f/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 123
    :cond_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/f/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 126
    :goto_2
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/f/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 127
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/f/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "\\{\\\\an[1-9]\\}"

    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v9, v11

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1176
    :cond_4
    :goto_3
    new-instance v10, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 1539
    iput-object v7, v10, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    if-nez v9, :cond_5

    .line 1178
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v5

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    goto/16 :goto_a

    .line 1182
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string/jumbo v13, "{\\an9}"

    const-string/jumbo v14, "{\\an8}"

    const-string/jumbo v15, "{\\an7}"

    const-string/jumbo v8, "{\\an6}"

    const-string/jumbo v11, "{\\an5}"

    const-string/jumbo v12, "{\\an4}"

    const-string/jumbo v6, "{\\an3}"

    const-string/jumbo v5, "{\\an2}"

    const-string/jumbo v0, "{\\an1}"

    const/16 v16, -0x1

    move-object/from16 v17, v4

    const/4 v4, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x5

    goto :goto_5

    :sswitch_1
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    goto :goto_5

    :sswitch_2
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_3
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x4

    goto :goto_5

    :sswitch_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x7

    goto :goto_5

    :sswitch_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :sswitch_6
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_7
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x6

    goto :goto_5

    :sswitch_8
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v7, -0x1

    :goto_5
    move-object/from16 v18, v3

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    if-eq v7, v3, :cond_8

    if-eq v7, v4, :cond_8

    const/4 v4, 0x3

    if-eq v7, v4, :cond_7

    const/4 v4, 0x4

    if-eq v7, v4, :cond_7

    const/4 v4, 0x5

    if-eq v7, v4, :cond_7

    .line 3675
    iput v3, v10, Lcom/google/android/exoplayer2/text/b$a;->f:I

    goto :goto_6

    :cond_7
    const/4 v3, 0x2

    .line 2675
    iput v3, v10, Lcom/google/android/exoplayer2/text/b$a;->f:I

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 1675
    iput v3, v10, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 1202
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_7

    :sswitch_9
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x5

    goto :goto_8

    :sswitch_a
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x4

    goto :goto_8

    :sswitch_b
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x3

    goto :goto_8

    :sswitch_c
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v8, 0x8

    goto :goto_8

    :sswitch_d
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x7

    goto :goto_8

    :sswitch_e
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x6

    goto :goto_8

    :sswitch_f
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x2

    goto :goto_8

    :sswitch_10
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    goto :goto_8

    :sswitch_11
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v8, -0x1

    :goto_8
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    if-eq v8, v0, :cond_b

    const/4 v3, 0x2

    if-eq v8, v3, :cond_b

    const/4 v3, 0x3

    if-eq v8, v3, :cond_a

    const/4 v3, 0x4

    if-eq v8, v3, :cond_a

    const/4 v3, 0x5

    if-eq v8, v3, :cond_a

    .line 6634
    iput v0, v10, Lcom/google/android/exoplayer2/text/b$a;->d:I

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    .line 5634
    iput v0, v10, Lcom/google/android/exoplayer2/text/b$a;->d:I

    goto :goto_9

    :cond_b
    const/4 v0, 0x2

    .line 4634
    iput v0, v10, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 6686
    :goto_9
    iget v0, v10, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 1221
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/f/a;->a(I)F

    move-result v0

    .line 7655
    iput v0, v10, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 8645
    iget v0, v10, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1222
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/f/a;->a(I)F

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v5

    .line 134
    :goto_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/google/android/exoplayer2/text/b;->a:Lcom/google/android/exoplayer2/text/b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 107
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Skipping invalid timing: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    goto :goto_c

    :catch_0
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 91
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Skipping invalid index: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v4, v17

    :goto_c
    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_e
    :goto_d
    move-object/from16 v18, v3

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/text/b;

    .line 138
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/text/b;

    move-object/from16 v1, v18

    .line 9081
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/o;->b:[J

    iget v1, v1, Lcom/google/android/exoplayer2/util/o;->a:I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 140
    new-instance v2, Lcom/google/android/exoplayer2/text/f/b;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/text/f/b;-><init>([Lcom/google/android/exoplayer2/text/b;[J)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
