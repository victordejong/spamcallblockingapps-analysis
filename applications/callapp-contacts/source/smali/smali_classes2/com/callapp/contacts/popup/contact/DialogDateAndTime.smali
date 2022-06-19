.class public Lcom/callapp/contacts/popup/contact/DialogDateAndTime;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;
    }
.end annotation


# instance fields
.field public a:I

.field private b:J

.field private c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

.field private d:Ljava/util/Calendar;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Ljava/lang/Long;

.field private p:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;)V
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b:J

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    .line 39
    iput-boolean v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e:Z

    const v1, 0x7f1204ea

    .line 40
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->f:Ljava/lang/String;

    const v1, 0x7f1201a9

    .line 41
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->g:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->h:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->j:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->l:Landroid/view/ViewGroup;

    .line 47
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->n:Landroid/widget/ImageView;

    .line 49
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->o:Ljava/lang/Long;

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->p:Ljava/lang/Long;

    .line 58
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic a(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)Ljava/util/Calendar;
    .locals 7

    .line 3159
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    .line 3160
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    .line 3161
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 3162
    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3163
    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    return-object v6
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    return-object p1
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;Landroid/widget/TextView;)V
    .locals 0

    .line 2214
    iget p3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    .line 2215
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 197
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Ljava/util/Calendar;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    return-object p0
.end method

.method private b(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V
    .locals 5

    .line 219
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    invoke-virtual {p1, v2}, Landroid/widget/DatePicker;->setVisibility(I)V

    .line 229
    invoke-virtual {p2, v3}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 230
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->getDateTextByDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setDialogTitleText(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/DatePicker;->setVisibility(I)V

    .line 222
    invoke-virtual {p2, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e:Z

    if-eqz p2, :cond_2

    const p2, 0x7f1200cf

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p1, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b:J

    return-wide v0
.end method

.method private getDateTextByDate()Ljava/lang/String;
    .locals 5

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120176

    .line 261
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f12016b

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 263
    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 269
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const p2, 0x7f0d00b6

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a02e0

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    const v1, 0x7f0a0920

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    const v2, 0x7f0a031b

    .line 73
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    const v2, 0x7f0a0318

    .line 74
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->j:Landroid/widget/TextView;

    const v2, 0x7f0a0317

    .line 75
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    const v2, 0x7f0a0315

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    const v2, 0x7f0a031c

    .line 77
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->n:Landroid/widget/ImageView;

    .line 79
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->h:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->getDateTextByDate()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setDialogTitleText(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 82
    iget-boolean v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e:Z

    invoke-direct {p0, v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Z)V

    .line 83
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    const v3, 0x7f120176

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0218

    .line 85
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->l:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1237
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1238
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1239
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1240
    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1241
    iget-object v5, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1242
    iget-object v6, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b:J

    .line 1244
    invoke-virtual {v0, p1, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 1245
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1248
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->o:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 1249
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 1251
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->p:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_2
    const/4 p1, 0x0

    .line 1255
    invoke-virtual {v0, p1}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->l:Landroid/view/ViewGroup;

    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060088

    .line 99
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 100
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->i:Landroid/widget/TextView;

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;-><init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->j:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;-><init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V

    return-object p2
.end method

.method public setAllowToggleState(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e:Z

    .line 210
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Z)V

    return-void
.end method

.method public setDialogTitleText(Ljava/lang/String;)V
    .locals 3

    .line 167
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->h:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601ec

    invoke-static {v1, v2}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x11

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public setMaxDate(Ljava/lang/Long;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->p:Ljava/lang/Long;

    return-void
.end method

.method public setMinDate(Ljava/lang/Long;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->o:Ljava/lang/Long;

    return-void
.end method

.method public setNegativeBtnText(Ljava/lang/String;)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->g:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->k:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
