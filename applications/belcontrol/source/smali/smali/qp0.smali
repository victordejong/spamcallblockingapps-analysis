.class public final Lqp0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lxp0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxp0;

    const-string v1, "com.firebase.jobdispatcher."

    invoke-direct {v0, v1}, Lxp0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lqp0;->a:Lxp0;

    return-void
.end method

.method public static a(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lzp0;Landroid/os/Bundle;)V
    .locals 4

    invoke-interface {p0}, Lzp0;->c()[I

    move-result-object p0

    invoke-static {p0}, Lip0;->a([I)I

    move-result p0

    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "requiresCharging"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    and-int/lit8 v0, p0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "requiresIdle"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lqp0;->a(I)I

    move-result p0

    const-string v0, "requiredNetwork"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Landroid/os/Bundle;Lbq0$a;)V
    .locals 6

    const-string v0, "trigger_type"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lbq0$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1}, Lbq0$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldq0;

    invoke-virtual {v4}, Ldq0;->a()I

    move-result v5

    aput v5, v1, v3

    invoke-virtual {v4}, Ldq0;->b()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "content_uri_flags_array"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "content_uri_array"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public static e(Lzp0;Landroid/os/Bundle;Lbq0$b;)V
    .locals 2

    const-string v0, "trigger_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p0}, Lzp0;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lbq0$b;->a()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "period"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p2}, Lbq0$b;->a()I

    move-result p0

    invoke-virtual {p2}, Lbq0$b;->b()I

    move-result p2

    sub-int/2addr p0, p2

    int-to-long v0, p0

    const-string p0, "period_flex"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lbq0$b;->b()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "window_start"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p2}, Lbq0$b;->a()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "window_end"

    :goto_0
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "trigger_type"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "window_start"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "window_end"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Lzp0;Landroid/os/Bundle;)V
    .locals 3

    invoke-interface {p0}, Lzp0;->b()Leq0;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Leq0;->c()I

    move-result v1

    invoke-static {v1}, Lqp0;->b(I)I

    move-result v1

    const-string v2, "retry_policy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Leq0;->a()I

    move-result v1

    const-string v2, "initial_backoff_seconds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Leq0;->b()I

    move-result p0

    const-string v1, "maximum_backoff_seconds"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "retryStrategy"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static i(Lzp0;Landroid/os/Bundle;)V
    .locals 2

    invoke-interface {p0}, Lzp0;->a()Lbq0;

    move-result-object v0

    sget-object v1, Lfq0;->a:Lbq0$c;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lqp0;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lbq0$b;

    if-eqz v1, :cond_1

    check-cast v0, Lbq0$b;

    invoke-static {p0, p1, v0}, Lqp0;->e(Lzp0;Landroid/os/Bundle;Lbq0$b;)V

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lbq0$a;

    if-eqz p0, :cond_2

    check-cast v0, Lbq0$a;

    invoke-static {p1, v0}, Lqp0;->d(Landroid/os/Bundle;Lbq0$a;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown trigger: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public h(Lzp0;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lzp0;->e()Z

    move-result v0

    const-string v1, "update_current"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lzp0;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "persisted"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lqp0;->i(Lzp0;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lqp0;->c(Lzp0;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lqp0;->g(Lzp0;Landroid/os/Bundle;)V

    invoke-interface {p1}, Lzp0;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    iget-object v1, p0, Lqp0;->a:Lxp0;

    invoke-virtual {v1, p1, v0}, Lxp0;->g(Lzp0;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p1, "extras"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method
