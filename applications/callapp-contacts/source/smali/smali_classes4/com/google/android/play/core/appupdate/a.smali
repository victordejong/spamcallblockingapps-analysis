.class public abstract Lcom/google/android/play/core/appupdate/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/google/android/play/core/appupdate/d;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->j()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->l()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->l()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/play/core/appupdate/a;->b(Lcom/google/android/play/core/appupdate/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->n()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->k()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->k()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/play/core/appupdate/a;->b(Lcom/google/android/play/core/appupdate/d;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/a;->m()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/Integer;
.end method

.method public abstract f()I
.end method

.method public abstract g()J
.end method

.method public abstract h()J
.end method

.method abstract i()J
.end method

.method abstract j()J
.end method

.method abstract k()Landroid/app/PendingIntent;
.end method

.method abstract l()Landroid/app/PendingIntent;
.end method

.method abstract m()Landroid/app/PendingIntent;
.end method

.method abstract n()Landroid/app/PendingIntent;
.end method
