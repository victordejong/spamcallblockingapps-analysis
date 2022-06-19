.class public Lcom/allinone/callerid/util/recorder/b;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/d;->b()I

    move-result v0

    sput v0, Lcom/allinone/callerid/util/recorder/b;->a:I

    return-void
.end method

.method public static a()I
    .locals 3

    .line 1
    sget v0, Lcom/allinone/callerid/util/recorder/b;->a:I

    const-string v1, "RecordMode"

    const-string v2, "AUDIOSOURCE"

    invoke-static {v1, v2, v0}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "CLEARRECORDDATA"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "ISFIRSTENTER"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "HOMERECORDERNEWTIPVIEW"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "ISOPENRECORD"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "RECORDERGUIDE"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "RecordContactCall"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 2

    const-string v0, "RecordMode"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v0, v1}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "RecordUnknownCall"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "show_accept_dialog"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "show_guide_dialog"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 3

    const-string v0, "RecordMode"

    const-string v1, "show_permission_acctpt_dialog"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m(I)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "AUDIOSOURCE"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "CLEARRECORDDATA"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "RecordMode"

    const-string v1, "ISFIRSTENTER"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static p(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "HOMERECORDERNEWTIPVIEW"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Z)V
    .locals 4

    const-string v0, "RecordMode"

    const-string v1, "ISOPENRECORD"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string v0, "recorder_open_record_first_count"

    invoke-virtual {p0, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string v0, "recorder_open_record_function_count"

    invoke-virtual {p0, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string v0, "recorder_close_record_function_count"

    invoke-virtual {p0, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static r(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "RECORDERGUIDE"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static s(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "RecordContactCall"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static t(I)V
    .locals 1

    const-string v0, "RecordMode"

    .line 1
    invoke-static {v0, v0, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static u(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "RecordUnknownCall"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static v(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "show_accept_dialog"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static w(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "show_guide_dialog"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static x(Z)V
    .locals 2

    const-string v0, "RecordMode"

    const-string v1, "show_permission_acctpt_dialog"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
