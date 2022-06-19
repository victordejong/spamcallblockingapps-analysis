.class abstract Lcom/google/android/material/datepicker/c;
.super Lcom/google/android/material/internal/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/textfield/TextInputLayout;

.field private final b:Ljava/text/DateFormat;

.field private final c:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/internal/k;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/text/DateFormat;

    .line 51
    iput-object p3, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    iput-object p4, p0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 53
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$j;->mtrl_picker_out_of_range:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/String;

    .line 54
    new-instance p2, Lcom/google/android/material/datepicker/c$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/c$1;-><init>(Lcom/google/android/material/datepicker/c;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 118
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/c;)Ljava/text/DateFormat;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/c;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method abstract a(Ljava/lang/Long;)V
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/c;->a(Ljava/lang/Long;)V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->b:Ljava/text/DateFormat;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    .line 93
    iget-object p4, p0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p4}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 94
    invoke-virtual {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->isWithinBounds(J)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/c;->a(Ljava/lang/Long;)V

    return-void

    .line 1107
    :cond_1
    new-instance p1, Lcom/google/android/material/datepicker/c$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/material/datepicker/c$2;-><init>(Lcom/google/android/material/datepicker/c;J)V

    .line 99
    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->f:Ljava/lang/Runnable;

    .line 100
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p2, p1}, Lcom/google/android/material/datepicker/c;->a(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 102
    :catch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->e:Ljava/lang/Runnable;

    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/c;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
