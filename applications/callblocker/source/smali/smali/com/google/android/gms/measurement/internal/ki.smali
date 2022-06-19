.class abstract Lcom/google/android/gms/measurement/internal/ki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/Boolean;

.field d:Ljava/lang/Boolean;

.field e:Ljava/lang/Long;

.field f:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ki;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/measurement/internal/ki;->b:I

    .line 4
    return-void
.end method

.method static a(DLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v2

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/ag$d;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(JLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/ag$d;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/ag$d;D)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$f$b;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dy;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/ag$f$b;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/dy;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-ne p1, v0, :cond_2

    .line 41
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-nez p3, :cond_3

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-nez p2, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-ne p1, v0, :cond_5

    .line 48
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/ke;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f$b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 47
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 49
    :pswitch_0
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 50
    :goto_2
    :try_start_0
    invoke-static {p5, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_6
    const/16 v0, 0x42

    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    if-eqz p6, :cond_7

    .line 55
    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Invalid regular expression in REGEXP audience filter. expression"

    .line 56
    invoke-virtual {v0, v2, p5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    move-object v0, v1

    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_5
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$f;Lcom/google/android/gms/measurement/internal/dy;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    if-nez p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v5

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->b()Lcom/google/android/gms/internal/measurement/ag$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->a:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-eq v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->b()Lcom/google/android/gms/internal/measurement/ag$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-ne v0, v1, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->h()I

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->b()Lcom/google/android/gms/internal/measurement/ag$f$b;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->f()Z

    move-result v2

    .line 20
    if-nez v2, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->g:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-ne v1, v0, :cond_7

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->d()Ljava/lang/String;

    move-result-object v3

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->h()I

    move-result v0

    if-nez v0, :cond_8

    move-object v4, v5

    .line 35
    :cond_4
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$f$b;->b:Lcom/google/android/gms/internal/measurement/ag$f$b;

    if-ne v1, v0, :cond_5

    move-object v5, v3

    :cond_5
    move-object v0, p0

    move-object v6, p2

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/ki;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$f$b;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dy;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$f;->g()Ljava/util/List;

    move-result-object v4

    .line 26
    if-nez v2, :cond_4

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :cond_9
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2
.end method

.method private static a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/ag$d;D)Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->b()Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$d$a;->a:Lcom/google/android/gms/internal/measurement/ag$d$a;

    if-ne v0, v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->b()Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$d$a;->e:Lcom/google/android/gms/internal/measurement/ag$d$a;

    if-ne v0, v2, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->b()Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v6

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->b()Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$d$a;->e:Lcom/google/android/gms/internal/measurement/ag$d$a;

    if-ne v0, v2, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 105
    :goto_1
    sget-object v7, Lcom/google/android/gms/internal/measurement/ag$d$a;->e:Lcom/google/android/gms/internal/measurement/ag$d$a;

    if-ne v6, v7, :cond_5

    .line 106
    if-eqz v2, :cond_0

    .line 109
    :goto_2
    sget-object v7, Lcom/google/android/gms/measurement/internal/ke;->b:[I

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ag$d$a;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v8, :cond_6

    move v0, v4

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    move-object v2, v1

    .line 100
    goto :goto_1

    .line 108
    :cond_5
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_6
    move v0, v5

    .line 110
    goto :goto_3

    .line 111
    :pswitch_1
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v4, :cond_7

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_4

    .line 112
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_9

    .line 113
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v4, :cond_8

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 118
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    move v4, v5

    .line 117
    goto :goto_5

    .line 119
    :cond_9
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_a

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_6

    .line 120
    :pswitch_3
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-eq v1, v8, :cond_b

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eq v0, v4, :cond_b

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_7

    .line 102
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 96
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Z
.end method

.method abstract c()Z
.end method
