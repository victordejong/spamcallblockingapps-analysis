.class public final Lcom/google/api/client/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/a/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:J

.field private final d:Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    .line 42
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/a/l;->a:Ljava/util/TimeZone;

    const-string v0, "(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/a/l;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/a/l;-><init>(ZJLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/api/client/a/l;-><init>(ZJLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    invoke-static {p1}, Lcom/google/api/client/a/l;->b(Ljava/lang/String;)Lcom/google/api/client/a/l$a;

    move-result-object p1

    .line 1339
    invoke-virtual {p1}, Lcom/google/api/client/a/l$a;->a()Lcom/google/api/client/a/l;

    move-result-object p1

    .line 146
    iget-boolean v0, p1, Lcom/google/api/client/a/l;->d:Z

    iput-boolean v0, p0, Lcom/google/api/client/a/l;->d:Z

    .line 147
    iget-wide v0, p1, Lcom/google/api/client/a/l;->c:J

    iput-wide v0, p0, Lcom/google/api/client/a/l;->c:J

    .line 148
    iget p1, p1, Lcom/google/api/client/a/l;->e:I

    iput p1, p0, Lcom/google/api/client/a/l;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/a/l;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 4

    .line 73
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    const p2, 0xea60

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/google/api/client/a/l;-><init>(ZJLjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ZJLjava/lang/Integer;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean p1, p0, Lcom/google/api/client/a/l;->d:Z

    .line 122
    iput-wide p2, p0, Lcom/google/api/client/a/l;->c:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 124
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    const p2, 0xea60

    div-int/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/google/api/client/a/l;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/api/client/a/l;
    .locals 0

    .line 277
    invoke-static {p0}, Lcom/google/api/client/a/l;->b(Ljava/lang/String;)Lcom/google/api/client/a/l$a;

    move-result-object p0

    .line 2339
    invoke-virtual {p0}, Lcom/google/api/client/a/l$a;->a()Lcom/google/api/client/a/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;II)V
    .locals 2

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p1, p1

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    .line 434
    div-int/lit8 v0, v0, 0xa

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    const/16 v1, 0x30

    .line 438
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/google/api/client/a/l$a;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/google/api/client/a/l;->b:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 374
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x2

    .line 375
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    const/4 v3, 0x3

    .line 376
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x4

    .line 377
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/16 v3, 0x9

    .line 378
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    if-eqz v12, :cond_3

    if-eqz v16, :cond_2

    goto :goto_2

    .line 387
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid date/time format, cannot specify time zone shift without specifying time: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v16, :cond_5

    const/4 v1, 0x5

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x6

    .line 395
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x7

    .line 396
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x8

    .line 397
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 398
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    move v9, v4

    move v10, v8

    goto :goto_3

    :cond_4
    move v9, v4

    move v10, v8

    const/4 v15, 0x0

    :goto_3
    move v8, v1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 402
    :goto_4
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/api/client/a/l;->a:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 403
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    move-object v4, v1

    .line 404
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 405
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    if-eqz v16, :cond_8

    if-eqz v12, :cond_8

    .line 408
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_7

    const/16 v3, 0xb

    .line 410
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0xc

    .line 411
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0xa

    .line 412
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    neg-int v3, v3

    :cond_6
    int-to-long v4, v3

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    sub-long/2addr v1, v4

    .line 416
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    .line 418
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    move-object/from16 v17, v0

    goto :goto_6

    :cond_8
    move-object/from16 v17, v13

    :goto_6
    const-wide/16 v3, 0x3e8

    .line 422
    div-long v13, v1, v3

    .line 423
    new-instance v0, Lcom/google/api/client/a/l$a;

    const/16 v18, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/google/api/client/a/l$a;-><init>(JIZLjava/lang/Integer;Lcom/google/api/client/a/l$1;)V

    return-object v0

    .line 371
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/api/client/a/l;->a:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 185
    iget-wide v2, p0, Lcom/google/api/client/a/l;->c:J

    iget v4, p0, Lcom/google/api/client/a/l;->e:I

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    .line 186
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x2d

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 190
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 192
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 193
    iget-boolean v2, p0, Lcom/google/api/client/a/l;->d:Z

    if-nez v2, :cond_3

    const/16 v2, 0x54

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x3a

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    .line 198
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v0, v5, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    .line 200
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v0, v5, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    const/16 v5, 0xe

    .line 202
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v5, 0x3

    invoke-static {v0, v1, v5}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 207
    :cond_0
    iget v1, p0, Lcom/google/api/client/a/l;->e:I

    if-nez v1, :cond_1

    const/16 v1, 0x5a

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    const/16 v3, 0x2b

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v1

    .line 218
    :goto_0
    div-int/lit8 v3, v1, 0x3c

    .line 219
    rem-int/lit8 v1, v1, 0x3c

    .line 220
    invoke-static {v0, v3, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v0, v1, v4}, Lcom/google/api/client/a/l;->a(Ljava/lang/StringBuilder;II)V

    .line 225
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Lcom/google/api/client/a/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 247
    :cond_1
    check-cast p1, Lcom/google/api/client/a/l;

    .line 248
    iget-boolean v1, p0, Lcom/google/api/client/a/l;->d:Z

    iget-boolean v3, p1, Lcom/google/api/client/a/l;->d:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/api/client/a/l;->c:J

    iget-wide v5, p1, Lcom/google/api/client/a/l;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/api/client/a/l;->e:I

    iget p1, p1, Lcom/google/api/client/a/l;->e:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 253
    iget-wide v1, p0, Lcom/google/api/client/a/l;->c:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-boolean v1, p0, Lcom/google/api/client/a/l;->d:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/api/client/a/l;->e:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/google/api/client/a/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
