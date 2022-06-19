.class final Lcom/google/i18n/phonenumbers/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/h$a;,
        Lcom/google/i18n/phonenumbers/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/i18n/phonenumbers/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:[Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private final i:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private final j:Ljava/lang/CharSequence;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

.field private m:J

.field private n:I

.field private o:Lcom/google/i18n/phonenumbers/g;

.field private p:I

.field private final q:Lcom/google/i18n/phonenumbers/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->d:Ljava/util/regex/Pattern;

    const-string v0, ":[0-5]\\d"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->e:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "/+(.*)"

    .line 103
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(\\([^(]*)"

    .line 106
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    .line 109
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    .line 113
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\\.+\\p{Z}*([^.]+)"

    .line 115
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\\p{Z}+(\\P{Z}+)"

    .line 117
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->g:[Ljava/util/regex/Pattern;

    .line 134
    invoke-static {v2, v5}, Lcom/google/i18n/phonenumbers/h;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "(?:["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "(\\[\uff08\uff3b"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "])?(?:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[^(\\[\uff08\uff3b)\\]\uff09\uff3d]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "+["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")\\]\uff09\uff3d"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "])?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "+(?:["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "])"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->f:Ljava/util/regex/Pattern;

    .line 147
    invoke-static {v2, v4}, Lcom/google/i18n/phonenumbers/h;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v2, v6}, Lcom/google/i18n/phonenumbers/h;->a(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    .line 157
    invoke-static {v2, v4}, Lcom/google/i18n/phonenumbers/h;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\\p{Nd}"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/i18n/phonenumbers/h;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "(\\[\uff08\uff3b+\uff0b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/i18n/phonenumbers/h;->h:Ljava/util/regex/Pattern;

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(?:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;J)V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget v0, Lcom/google/i18n/phonenumbers/h$b;->a:I

    iput v0, p0, Lcom/google/i18n/phonenumbers/h;->n:I

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->o:Lcom/google/i18n/phonenumbers/g;

    const/4 v1, 0x0

    .line 208
    iput v1, p0, Lcom/google/i18n/phonenumbers/h;->p:I

    .line 214
    new-instance v1, Lcom/google/i18n/phonenumbers/a/c;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/google/i18n/phonenumbers/a/c;-><init>(I)V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/h;->q:Lcom/google/i18n/phonenumbers/a/c;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    .line 240
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h;->i:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 241
    :goto_0
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    .line 242
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/h;->k:Ljava/lang/String;

    .line 243
    iput-object p4, p0, Lcom/google/i18n/phonenumbers/h;->l:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

    .line 244
    iput-wide p5, p0, Lcom/google/i18n/phonenumbers/h;->m:J

    return-void

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 235
    :cond_2
    throw v0
.end method

.method private a(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/g;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 395
    :try_start_0
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/i18n/phonenumbers/h;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h;->l:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    if-lez p2, :cond_2

    .line 404
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 407
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->b(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v1

    .line 411
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    .line 412
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 413
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 414
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->b(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->a(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return-object v1

    .line 420
    :cond_4
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h;->i:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->k:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->l:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/h;->i:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v2, p1, v4, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->verify(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/h;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/k$a;->b()Lcom/google/i18n/phonenumbers/k$a;

    const/4 v3, 0x0

    .line 1140
    iput-boolean v3, v2, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    .line 1141
    iput-object v0, v2, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 1178
    iput-boolean v3, v2, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    .line 1179
    iput-object v0, v2, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 429
    new-instance v0, Lcom/google/i18n/phonenumbers/g;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, v2}, Lcom/google/i18n/phonenumbers/g;-><init>(ILjava/lang/String;Lcom/google/i18n/phonenumbers/k$a;)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_5
    :goto_0
    return-object v1
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 282
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static a(C)Z
    .locals 3

    .line 297
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    .line 300
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 301
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5

    .line 2149
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 462
    sget-object v1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/k$a$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 469
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 472
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    return v2

    .line 477
    :cond_1
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4047
    iget v3, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 483
    invoke-virtual {p0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 484
    invoke-virtual {p0, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 485
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p0

    .line 490
    aget-object p1, p3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4079
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 498
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static a(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 4

    .line 10149
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 658
    sget-object v1, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/k$a$a;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 11047
    :cond_0
    iget v0, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 662
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 668
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 11756
    iget-object v3, v0, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 670
    invoke-virtual {p1, v3, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12123
    iget-object v3, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 673
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 12141
    iget-boolean v3, v1, Lcom/google/i18n/phonenumbers/j$a;->d:Z

    if-eqz v3, :cond_2

    return v2

    .line 13123
    :cond_2
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 679
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 13130
    :cond_3
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 685
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 689
    invoke-virtual {p1, v1, v0, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j$b;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method static a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0x2f

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 607
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    .line 8149
    :cond_1
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 615
    sget-object v4, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/k$a$a;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 9149
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 616
    sget-object v4, Lcom/google/i18n/phonenumbers/k$a$a;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/k$a$a;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 618
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10047
    iget p0, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 619
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/2addr v0, v5

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    return v5
.end method

.method static a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 633
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 634
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    const/16 v5, 0x78

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 636
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2

    if-ne v6, v4, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 10079
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 646
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 641
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    move-result-object v1

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$b;

    if-eq v1, v4, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    return v3
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    .line 310
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static b(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 4

    .line 505
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 506
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 5078
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 509
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    array-length v0, p2

    sub-int/2addr v0, v1

    .line 513
    :goto_0
    array-length v2, p2

    if-eq v2, v1, :cond_5

    aget-object v2, p2, v0

    .line 515
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p0

    .line 514
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 520
    :cond_1
    array-length p0, p3

    sub-int/2addr p0, v1

    :goto_1
    const/4 p1, 0x0

    if-lez p0, :cond_3

    if-ltz v0, :cond_3

    .line 523
    aget-object v2, p2, v0

    aget-object v3, p3, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    .line 530
    aget-object p0, p2, v0

    aget-object p2, p3, p1

    .line 531
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return p1

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method final a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/h$a;)Z
    .locals 8

    const/4 v0, 0x1

    .line 571
    invoke-static {p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5542
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p3, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/k$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    .line 5545
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 5547
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v3, 0x2d

    .line 5550
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 5551
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-interface {p4, p3, p1, p2, v1}, Lcom/google/i18n/phonenumbers/h$a;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 6047
    :cond_1
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 578
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/d;->a(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v1

    .line 579
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 6756
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/i18n/phonenumbers/j$a;

    .line 582
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/j$a;->e()I

    move-result v6

    if-lez v6, :cond_3

    .line 584
    iget-object v6, p0, Lcom/google/i18n/phonenumbers/h;->q:Lcom/google/i18n/phonenumbers/a/c;

    .line 585
    invoke-virtual {v5, v4}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 586
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7562
    :cond_3
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object v6

    .line 7563
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {p3, v6, v5, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;)Ljava/lang/String;

    move-result-object v5

    .line 7564
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-interface {p4, p3, p1, p2, v5}, Lcom/google/i18n/phonenumbers/h$a;->a(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_4
    return v4
.end method

.method public final hasNext()Z
    .locals 19

    move-object/from16 v0, p0

    .line 696
    iget v1, v0, Lcom/google/i18n/phonenumbers/h;->n:I

    sget v2, Lcom/google/i18n/phonenumbers/h$b;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_a

    .line 697
    iget v1, v0, Lcom/google/i18n/phonenumbers/h;->p:I

    .line 13255
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    iget-object v5, v0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 13256
    :goto_0
    iget-wide v5, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13257
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 13258
    iget-object v5, v0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-interface {v5, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 13263
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v6, v5}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 13322
    sget-object v6, Lcom/google/i18n/phonenumbers/h;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_6

    .line 13327
    sget-object v6, Lcom/google/i18n/phonenumbers/h;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13328
    iget-object v6, v0, Lcom/google/i18n/phonenumbers/h;->j:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v12, v1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 13329
    sget-object v12, Lcom/google/i18n/phonenumbers/h;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_6

    .line 13335
    :cond_0
    invoke-direct {v0, v5, v1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/g;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v7, v6

    goto :goto_4

    .line 13354
    :cond_1
    sget-object v6, Lcom/google/i18n/phonenumbers/h;->g:[Ljava/util/regex/Pattern;

    array-length v12, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_6

    aget-object v14, v6, v13

    .line 13355
    invoke-virtual {v14, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    const/4 v15, 0x1

    .line 13357
    :goto_2
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_5

    iget-wide v10, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    cmp-long v18, v10, v8

    if-lez v18, :cond_5

    if-eqz v15, :cond_3

    .line 13360
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 13362
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-interface {v5, v3, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 13360
    invoke-static {v10, v11}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 13363
    invoke-direct {v0, v10, v1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/g;

    move-result-object v10

    if-eqz v10, :cond_2

    goto :goto_3

    .line 13367
    :cond_2
    iget-wide v10, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    const-wide/16 v15, 0x1

    sub-long/2addr v10, v15

    iput-wide v10, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    const/4 v15, 0x0

    .line 13370
    :cond_3
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 13371
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 13370
    invoke-static {v10, v11}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 13372
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    add-int/2addr v11, v1

    invoke-direct {v0, v10, v11}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/g;

    move-result-object v10

    if-eqz v10, :cond_4

    :goto_3
    move-object v7, v10

    goto :goto_4

    .line 13376
    :cond_4
    iget-wide v10, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    const-wide/16 v16, 0x1

    sub-long v10, v10, v16

    iput-wide v10, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    goto :goto_2

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    goto :goto_5

    .line 13270
    :cond_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 13271
    iget-wide v5, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/i18n/phonenumbers/h;->m:J

    goto/16 :goto_0

    .line 697
    :cond_8
    :goto_5
    iput-object v7, v0, Lcom/google/i18n/phonenumbers/h;->o:Lcom/google/i18n/phonenumbers/g;

    if-nez v7, :cond_9

    .line 699
    sget v1, Lcom/google/i18n/phonenumbers/h$b;->c:I

    iput v1, v0, Lcom/google/i18n/phonenumbers/h;->n:I

    goto :goto_6

    .line 701
    :cond_9
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/g;->a()I

    move-result v1

    iput v1, v0, Lcom/google/i18n/phonenumbers/h;->p:I

    .line 702
    sget v1, Lcom/google/i18n/phonenumbers/h$b;->b:I

    iput v1, v0, Lcom/google/i18n/phonenumbers/h;->n:I

    .line 705
    :cond_a
    :goto_6
    iget v1, v0, Lcom/google/i18n/phonenumbers/h;->n:I

    sget v2, Lcom/google/i18n/phonenumbers/h$b;->b:I

    if-ne v1, v2, :cond_b

    return v4

    :cond_b
    return v3
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 13711
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13716
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->o:Lcom/google/i18n/phonenumbers/g;

    const/4 v1, 0x0

    .line 13717
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/h;->o:Lcom/google/i18n/phonenumbers/g;

    .line 13718
    sget v1, Lcom/google/i18n/phonenumbers/h$b;->a:I

    iput v1, p0, Lcom/google/i18n/phonenumbers/h;->n:I

    return-object v0

    .line 13712
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
