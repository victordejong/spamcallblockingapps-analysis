.class final Lcom/google/android/material/datepicker/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/material/datepicker/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/o;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    :goto_0
    if-ltz p3, :cond_1

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 262
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 265
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/2addr p3, p2

    if-ltz p3, :cond_0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr p3, p2

    goto :goto_0

    :cond_1
    return p3
.end method

.method static a(J)J
    .locals 1

    const/4 v0, 0x0

    .line 4083
    invoke-static {v0}, Lcom/google/android/material/datepicker/o;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    invoke-static {v0}, Lcom/google/android/material/datepicker/o;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 139
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    const-string p1, "UTC"

    .line 5059
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object p0
.end method

.method static a(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "yMMMd"

    .line 182
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 3

    .line 162
    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p1

    .line 163
    sget v0, Lcom/google/android/material/a$j;->mtrl_picker_text_input_year_abbr:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_text_input_month_abbr:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    sget v2, Lcom/google/android/material/a$j;->mtrl_picker_text_input_day_abbr:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "d"

    .line 167
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "M"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "y"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 0

    .line 145
    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    const-string p1, "UTC"

    .line 6054
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method

.method static a()Ljava/util/Calendar;
    .locals 4

    .line 1047
    sget-object v0, Lcom/google/android/material/datepicker/o;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/n;

    if-nez v0, :cond_0

    .line 1048
    invoke-static {}, Lcom/google/android/material/datepicker/n;->a()Lcom/google/android/material/datepicker/n;

    move-result-object v0

    .line 1080
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/n;->b:Ljava/util/TimeZone;

    if-nez v1, :cond_1

    .line 1090
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1091
    :goto_0
    iget-object v2, v0, Lcom/google/android/material/datepicker/n;->a:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 1092
    iget-object v0, v0, Lcom/google/android/material/datepicker/n;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    const/16 v0, 0xb

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 68
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 69
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 70
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    const-string v0, "UTC"

    .line 2054
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1
.end method

.method static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    .line 113
    invoke-static {p0}, Lcom/google/android/material/datepicker/o;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x0

    .line 3083
    invoke-static {v0}, Lcom/google/android/material/datepicker/o;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 117
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 118
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 115
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    return-object v0
.end method

.method static b(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "MMMd"

    .line 187
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method static b()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/google/android/material/datepicker/o;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    const-string v0, "UTC"

    .line 3054
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    if-nez p0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    return-object v0
.end method

.method static c(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "MMMEd"

    .line 192
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method static c()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 153
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "UTC"

    .line 7054
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 157
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v1
.end method

.method static d(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "yMMMEd"

    .line 197
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method static e(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x2

    .line 205
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 6

    const/4 v0, 0x2

    .line 7205
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 213
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 214
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yY"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7230
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 7232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "EMd"

    .line 7239
    invoke-static {v0, v3, v2, v1}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 7241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 7242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v5, -0x1

    .line 7246
    invoke-static {v0, v3, v5, v1}, Lcom/google/android/material/datepicker/o;->a(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    add-int/2addr v1, v2

    .line 7249
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 7250
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p0
.end method

.method static g(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/o;->a(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method
