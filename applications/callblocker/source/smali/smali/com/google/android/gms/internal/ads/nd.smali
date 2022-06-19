.class public final Lcom/google/android/gms/internal/ads/nd;
.super Lcom/google/android/gms/internal/ads/nt;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/act;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    const-string/jumbo v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nd;->a:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->b:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->c:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->f:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nd;->d:J

    .line 8
    const-string/jumbo v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nd;->e:J

    .line 9
    const-string/jumbo v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->g:Ljava/lang/String;

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/nd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->b:Landroid/content/Context;

    return-object v0
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private final e(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 17
    :goto_0
    return-wide v0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 19
    const-string/jumbo v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ecp;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecp;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    const-string/jumbo v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->d(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->d()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    sget v0, Lcom/google/android/gms/ads/d/a$a;->s5:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    if-eqz v2, :cond_3

    sget v0, Lcom/google/android/gms/ads/d/a$a;->s6:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    if-eqz v2, :cond_4

    sget v0, Lcom/google/android/gms/ads/d/a$a;->s3:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/ng;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/ng;-><init>(Lcom/google/android/gms/internal/ads/nd;)V

    .line 31
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    if-eqz v2, :cond_5

    sget v0, Lcom/google/android/gms/ads/d/a$a;->s4:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/ads/nf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/nf;-><init>(Lcom/google/android/gms/internal/ads/nd;)V

    .line 34
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 27
    :cond_2
    const-string/jumbo v0, "Create calendar event"

    goto :goto_1

    .line 28
    :cond_3
    const-string/jumbo v0, "Allow Ad to create a calendar event?"

    goto :goto_2

    .line 30
    :cond_4
    const-string/jumbo v0, "Accept"

    goto :goto_3

    .line 33
    :cond_5
    const-string/jumbo v0, "Decline"

    goto :goto_4
.end method

.method final b()Landroid/content/Intent;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nd;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 42
    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nd;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nd;->e:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 44
    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/nd;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    return-object v0
.end method
