.class public final Landroidx/media2/exoplayer/external/text/e/a;
.super Landroidx/media2/exoplayer/external/text/b;
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

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/e/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/e/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SubripDecoder"

    .line 72
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/e/a;->d:Ljava/util/ArrayList;

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

    .line 263
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
    .locals 8

    add-int/lit8 v0, p1, 0x1

    .line 245
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    add-int/lit8 v6, p1, 0x2

    .line 246
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x3

    .line 247
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 248
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    mul-long v0, v0, v4

    return-wide v0
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

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    sget-object v1, Landroidx/media2/exoplayer/external/text/e/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    sub-int/2addr v3, v1

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v3, v2

    const-string v5, ""

    .line 172
    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "SubripDecoder"

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v3, Landroidx/media2/exoplayer/external/util/k;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/util/k;-><init>()V

    .line 81
    new-instance v4, Landroidx/media2/exoplayer/external/util/p;

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v4, v5, v6}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    .line 84
    :goto_0
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 85
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    .line 92
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v4, "Unexpected end"

    .line 102
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 106
    :cond_0
    sget-object v6, Landroidx/media2/exoplayer/external/text/e/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v5, 0x1

    .line 108
    invoke-static {v6, v5}, Landroidx/media2/exoplayer/external/text/e/a;->a(Ljava/util/regex/Matcher;I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    const/4 v7, 0x6

    .line 109
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 111
    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/text/e/a;->a(Ljava/util/regex/Matcher;I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 119
    :goto_1
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 120
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v8

    .line 122
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 123
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 124
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/e/a;->d:Ljava/util/ArrayList;

    invoke-static {v8, v11}, Landroidx/media2/exoplayer/external/text/e/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 130
    :cond_3
    iget-object v8, v0, Landroidx/media2/exoplayer/external/text/e/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 133
    :goto_3
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_5

    .line 134
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/e/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "\\{\\\\an[1-9]\\}"

    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v8, v12

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v8, :cond_6

    .line 1188
    new-instance v5, Landroidx/media2/exoplayer/external/text/a;

    invoke-direct {v5, v11}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v21, v1

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    goto/16 :goto_b

    .line 1193
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v14, "{\\an9}"

    const-string v15, "{\\an8}"

    const-string v7, "{\\an7}"

    const-string v9, "{\\an6}"

    const-string v12, "{\\an5}"

    const-string v13, "{\\an4}"

    const-string v5, "{\\an3}"

    const-string v0, "{\\an2}"

    move-object/from16 v19, v4

    const-string v4, "{\\an1}"

    const/16 v18, -0x1

    move-object/from16 v20, v3

    const/4 v3, 0x2

    sparse-switch v10, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x5

    goto :goto_6

    :sswitch_1
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x8

    goto :goto_6

    :sswitch_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x2

    goto :goto_6

    :sswitch_3
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x7

    goto :goto_6

    :sswitch_5
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x6

    goto :goto_6

    :sswitch_8
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v10, -0x1

    :goto_6
    move-object/from16 v21, v1

    if-eqz v10, :cond_9

    const/4 v1, 0x1

    if-eq v10, v1, :cond_9

    if-eq v10, v3, :cond_9

    const/4 v1, 0x3

    if-eq v10, v1, :cond_8

    const/4 v1, 0x4

    if-eq v10, v1, :cond_8

    const/4 v1, 0x5

    if-eq v10, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x2

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 1214
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x5

    goto :goto_9

    :sswitch_a
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x4

    goto :goto_9

    :sswitch_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x3

    goto :goto_9

    :sswitch_c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v7, 0x8

    goto :goto_9

    :sswitch_d
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x7

    goto :goto_9

    :sswitch_e
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x6

    goto :goto_9

    :sswitch_f
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x2

    goto :goto_9

    :sswitch_10
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :sswitch_11
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v7, -0x1

    :goto_9
    if-eqz v7, :cond_c

    const/4 v0, 0x1

    if-eq v7, v0, :cond_c

    if-eq v7, v3, :cond_c

    const/4 v4, 0x3

    if-eq v7, v4, :cond_b

    const/4 v3, 0x4

    if-eq v7, v3, :cond_b

    const/4 v3, 0x5

    if-eq v7, v3, :cond_b

    const/4 v15, 0x1

    goto :goto_a

    :cond_b
    const/4 v15, 0x0

    goto :goto_a

    :cond_c
    const/4 v15, 0x2

    .line 1233
    :goto_a
    new-instance v5, Landroidx/media2/exoplayer/external/text/a;

    const/4 v12, 0x0

    .line 1236
    invoke-static {v15}, Landroidx/media2/exoplayer/external/text/e/a;->a(I)F

    move-result v13

    const/4 v14, 0x0

    .line 1239
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/e/a;->a(I)F

    move-result v16

    const/16 v18, 0x1

    move-object v10, v5

    move/from16 v17, v1

    invoke-direct/range {v10 .. v18}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 141
    :goto_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_d

    .line 144
    sget-object v0, Landroidx/media2/exoplayer/external/text/a;->a:Landroidx/media2/exoplayer/external/text/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    goto/16 :goto_0

    :cond_e
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    const-string v0, "Skipping invalid timing: "

    .line 114
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_c
    move-object/from16 v1, v21

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_0
    move-object/from16 v20, v3

    move-object/from16 v19, v4

    const-string v0, "Skipping invalid index: "

    .line 94
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_d
    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_12
    :goto_f
    move-object/from16 v20, v3

    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/text/a;

    .line 149
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    invoke-virtual/range {v20 .. v20}, Landroidx/media2/exoplayer/external/util/k;->a()[J

    move-result-object v1

    .line 151
    new-instance v2, Landroidx/media2/exoplayer/external/text/e/b;

    invoke-direct {v2, v0, v1}, Landroidx/media2/exoplayer/external/text/e/b;-><init>([Landroidx/media2/exoplayer/external/text/a;[J)V

    return-object v2

    nop

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
