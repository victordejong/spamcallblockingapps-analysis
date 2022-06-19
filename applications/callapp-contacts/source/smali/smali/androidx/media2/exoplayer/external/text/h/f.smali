.class public final Landroidx/media2/exoplayer/external/text/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/h/f$a;,
        Landroidx/media2/exoplayer/external/text/h/f$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/h/f;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/h/f;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/f;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    .line 296
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string v0, "Invalid anchor value: "

    .line 305
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;)V
    .locals 10

    const-string v0, "WebvttCueParser"

    .line 134
    sget-object v1, Landroidx/media2/exoplayer/external/text/h/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 135
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 137
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v5, "line"

    .line 139
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, -0x80000000

    const/16 v7, 0x2c

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v5, :cond_3

    .line 1263
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v9, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 1265
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;)I

    move-result v3

    .line 2143
    iput v3, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->g:I

    .line 1266
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3143
    :cond_0
    iput v6, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->g:I

    :goto_1
    const-string v2, "%"

    .line 1270
    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    invoke-static {v4}, Landroidx/media2/exoplayer/external/text/h/h;->b(Ljava/lang/String;)F

    move-result v1

    .line 4133
    iput v1, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->e:F

    .line 4138
    iput v8, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->f:I

    goto :goto_0

    .line 1273
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    int-to-float v2, v2

    .line 5133
    iput v2, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->e:F

    .line 5138
    iput v1, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->f:I

    goto :goto_0

    :cond_3
    const-string v5, "align"

    .line 141
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5311
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "start"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :sswitch_1
    const-string v2, "right"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x5

    goto :goto_3

    :sswitch_2
    const-string v2, "left"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :sswitch_3
    const-string v2, "end"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x4

    goto :goto_3

    :sswitch_4
    const-string v2, "middle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x3

    goto :goto_3

    :sswitch_5
    const-string v2, "center"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, -0x1

    :goto_3
    if-eqz v8, :cond_8

    if-eq v8, v1, :cond_8

    if-eq v8, v3, :cond_7

    if-eq v8, v7, :cond_7

    if-eq v8, v6, :cond_6

    if-eq v8, v5, :cond_6

    const-string v1, "Invalid alignment value: "

    .line 5322
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_4
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_5

    .line 5320
    :cond_6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 5317
    :cond_7
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 5314
    :cond_8
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6128
    :goto_5
    iput-object v1, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    goto/16 :goto_0

    :cond_9
    const-string v1, "position"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6285
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v9, :cond_a

    add-int/lit8 v2, v1, 0x1

    .line 6287
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;)I

    move-result v2

    .line 7153
    iput v2, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    .line 6288
    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 8153
    :cond_a
    iput v6, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    .line 6292
    :goto_6
    invoke-static {v4}, Landroidx/media2/exoplayer/external/text/h/h;->b(Ljava/lang/String;)F

    move-result v1

    .line 9148
    iput v1, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->h:F

    goto/16 :goto_0

    :cond_b
    const-string v1, "size"

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 146
    invoke-static {v4}, Landroidx/media2/exoplayer/external/text/h/h;->b(Ljava/lang/String;)F

    move-result v1

    .line 9158
    iput v1, p1, Landroidx/media2/exoplayer/external/text/h/e$a;->j:F

    goto/16 :goto_0

    .line 148
    :cond_c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown cue setting "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    const-string v1, "Skipping bad cue setting: "

    .line 151
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_7
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/h/f$a;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/f$b;",
            ">;)V"
        }
    .end annotation

    .line 375
    iget v0, p1, Landroidx/media2/exoplayer/external/text/h/f$a;->b:I

    .line 376
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 377
    iget-object v2, p1, Landroidx/media2/exoplayer/external/text/h/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    return-void

    .line 387
    :pswitch_0
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 383
    :pswitch_1
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 379
    :pswitch_2
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 397
    :goto_2
    :pswitch_3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 398
    invoke-static {p3, p0, p1, p4}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Ljava/util/List;)V

    .line 399
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p0, :cond_16

    .line 401
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media2/exoplayer/external/text/h/f$b;

    iget-object p3, p3, Landroidx/media2/exoplayer/external/text/h/f$b;->b:Landroidx/media2/exoplayer/external/text/h/d;

    if-eqz p3, :cond_15

    .line 13410
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/h/d;->a()I

    move-result v2

    if-eq v2, v5, :cond_7

    .line 13411
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/text/h/d;->a()I

    move-result v9

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14191
    :cond_7
    iget v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->j:I

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_9

    .line 13415
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14200
    :cond_9
    iget v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->k:I

    if-ne v2, v8, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    .line 13418
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14240
    :cond_b
    iget-boolean v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->g:Z

    if-eqz v2, :cond_d

    .line 13421
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 15227
    iget-boolean v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->g:Z

    if-eqz v9, :cond_c

    .line 15230
    iget v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->f:I

    .line 13421
    invoke-direct {v2, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 15228
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Font color not defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15257
    :cond_d
    :goto_6
    iget-boolean v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->i:Z

    if-eqz v2, :cond_f

    .line 13425
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 16244
    iget-boolean v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->i:Z

    if-eqz v9, :cond_e

    .line 16247
    iget v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->h:I

    .line 13425
    invoke-direct {v2, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 16245
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Background color not defined."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17218
    :cond_f
    :goto_7
    iget-object v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->e:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 13429
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 18218
    iget-object v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->e:Ljava/lang/String;

    .line 13429
    invoke-direct {v2, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18261
    :cond_10
    iget-object v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->p:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_11

    .line 13433
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    .line 19261
    iget-object v9, p3, Landroidx/media2/exoplayer/external/text/h/d;->p:Landroid/text/Layout$Alignment;

    .line 13433
    invoke-direct {v2, v9}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19280
    :cond_11
    iget v2, p3, Landroidx/media2/exoplayer/external/text/h/d;->n:I

    if-eq v2, v8, :cond_14

    if-eq v2, v6, :cond_13

    if-eq v2, v4, :cond_12

    goto :goto_8

    .line 13446
    :cond_12
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 21284
    iget p3, p3, Landroidx/media2/exoplayer/external/text/h/d;->o:F

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr p3, v9

    .line 13446
    invoke-direct {v2, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 13442
    :cond_13
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 20284
    iget p3, p3, Landroidx/media2/exoplayer/external/text/h/d;->o:F

    .line 13442
    invoke-direct {v2, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 13438
    :cond_14
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 19284
    iget p3, p3, Landroidx/media2/exoplayer/external/text/h/d;->o:F

    float-to-int p3, p3

    .line 13438
    invoke-direct {v2, p3, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/h/e$a;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 166
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 167
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 170
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1a

    .line 171
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    const/16 v11, 0x3c

    const/16 v12, 0x26

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-eq v8, v12, :cond_11

    if-eq v8, v11, :cond_0

    .line 219
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v8, v11, :cond_2

    :cond_1
    :goto_1
    move v7, v8

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 9335
    :goto_2
    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v14, :cond_4

    .line 9336
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v9, v8, -0x2

    .line 181
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v11, :cond_6

    const/4 v12, 0x2

    goto :goto_5

    :cond_6
    const/4 v12, 0x1

    :goto_5
    add-int/2addr v7, v12

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v8, -0x1

    .line 182
    :goto_6
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 9462
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 9463
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    const-string v12, "[ \\.]"

    .line 9466
    invoke-static {v9, v12}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    :goto_7
    if-eqz v9, :cond_1

    .line 10360
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v12, "lang"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_8

    :cond_9
    const/4 v12, 0x5

    const/4 v14, 0x5

    goto :goto_8

    :sswitch_1
    const-string v12, "v"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_8

    :cond_a
    const/4 v12, 0x4

    const/4 v14, 0x4

    goto :goto_8

    :sswitch_2
    const-string v12, "u"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_8

    :cond_b
    const/4 v14, 0x3

    goto :goto_8

    :sswitch_3
    const-string v12, "i"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_8

    :cond_c
    const/4 v14, 0x2

    goto :goto_8

    :sswitch_4
    const-string v12, "c"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_8

    :cond_d
    const/4 v14, 0x1

    goto :goto_8

    :sswitch_5
    const-string v12, "b"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    packed-switch v14, :pswitch_data_0

    const/4 v15, 0x0

    :pswitch_0
    if-eqz v15, :cond_1

    if-eqz v11, :cond_10

    .line 191
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 194
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/text/h/f$a;

    .line 195
    invoke-static {v0, v7, v3, v2, v5}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 196
    iget-object v7, v7, Landroidx/media2/exoplayer/external/text/h/f$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_1

    :cond_10
    if-nez v10, :cond_1

    .line 198
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-static {v7, v9}, Landroidx/media2/exoplayer/external/text/h/f$a;->a(Ljava/lang/String;I)Landroidx/media2/exoplayer/external/text/h/f$a;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_11
    const/16 v10, 0x3b

    add-int/lit8 v7, v7, 0x1

    .line 202
    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/16 v6, 0x20

    .line 203
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ne v10, v14, :cond_12

    move v10, v13

    goto :goto_9

    :cond_12
    if-ne v13, v14, :cond_13

    goto :goto_9

    .line 206
    :cond_13
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_9
    if-eq v10, v14, :cond_19

    .line 208
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 11340
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_a

    :sswitch_6
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_a

    :cond_14
    const/4 v14, 0x3

    goto :goto_a

    :sswitch_7
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_a

    :cond_15
    const/4 v14, 0x2

    goto :goto_a

    :sswitch_8
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_a

    :cond_16
    const/4 v14, 0x1

    goto :goto_a

    :sswitch_9
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_a

    :cond_17
    const/4 v14, 0x0

    :goto_a
    packed-switch v14, :pswitch_data_1

    .line 11354
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "ignoring unsupported entity: \'&"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";\'"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WebvttCueParser"

    invoke-static {v7, v6}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 11348
    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 11351
    :pswitch_2
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 11342
    :pswitch_3
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 11345
    :pswitch_4
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_b
    if-ne v10, v13, :cond_18

    const-string v6, " "

    .line 210
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_18
    add-int/lit8 v7, v10, 0x1

    goto :goto_c

    .line 214
    :cond_19
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 225
    :cond_1a
    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 226
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/h/f$a;

    invoke-static {v0, v1, v3, v2, v5}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_d

    .line 228
    :cond_1b
    invoke-static {}, Landroidx/media2/exoplayer/external/text/h/f$a;->a()Landroidx/media2/exoplayer/external/text/h/f$a;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v5}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p2

    .line 12123
    iput-object v3, v0, Landroidx/media2/exoplayer/external/text/h/e$a;->c:Landroid/text/SpannableStringBuilder;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xced -> :sswitch_9
        0xd88 -> :sswitch_8
        0x179c4 -> :sswitch_7
        0x337f11 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/f$a;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/h/f$a;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/f$b;",
            ">;)V"
        }
    .end annotation

    .line 471
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 473
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/h/d;

    .line 474
    iget-object v4, p2, Landroidx/media2/exoplayer/external/text/h/f$a;->a:Ljava/lang/String;

    iget-object v5, p2, Landroidx/media2/exoplayer/external/text/h/f$a;->d:[Ljava/lang/String;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/text/h/f$a;->c:Ljava/lang/String;

    .line 22158
    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->d:Ljava/lang/String;

    .line 22159
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 22162
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 22165
    :cond_0
    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->a:Ljava/lang/String;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v7, p1, v8}, Landroidx/media2/exoplayer/external/text/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 22166
    iget-object v8, v3, Landroidx/media2/exoplayer/external/text/h/d;->b:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v7, v8, v4, v9}, Landroidx/media2/exoplayer/external/text/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 22167
    iget-object v7, v3, Landroidx/media2/exoplayer/external/text/h/d;->d:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-static {v4, v7, v6, v8}, Landroidx/media2/exoplayer/external/text/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 22168
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v3, Landroidx/media2/exoplayer/external/text/h/d;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 22171
    :cond_1
    iget-object v5, v3, Landroidx/media2/exoplayer/external/text/h/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-lez v4, :cond_3

    .line 476
    new-instance v5, Landroidx/media2/exoplayer/external/text/h/f$b;

    invoke-direct {v5, v4, v3}, Landroidx/media2/exoplayer/external/text/h/f$b;-><init>(ILandroidx/media2/exoplayer/external/text/h/d;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Landroidx/media2/exoplayer/external/util/p;",
            "Landroidx/media2/exoplayer/external/text/h/e$a;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 237
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/h/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 13113
    iput-wide v2, p3, Landroidx/media2/exoplayer/external/text/h/e$a;->a:J

    const/4 v2, 0x2

    .line 238
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/h/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 13118
    iput-wide v2, p3, Landroidx/media2/exoplayer/external/text/h/e$a;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    .line 244
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;)V

    .line 247
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    .line 251
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p5}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/util/List;)V

    return v1

    :catch_0
    nop

    const-string p0, "Skipping cue with bad header: "

    .line 240
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_1
    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "Landroidx/media2/exoplayer/external/text/h/e$a;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;)Z"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    sget-object v2, Landroidx/media2/exoplayer/external/text/h/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 109
    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/h/f;->c:Ljava/lang/StringBuilder;

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    .line 116
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/h/f;->c:Ljava/lang/StringBuilder;

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
