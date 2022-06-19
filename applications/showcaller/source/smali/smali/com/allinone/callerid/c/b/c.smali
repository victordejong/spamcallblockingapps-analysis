.class public Lcom/allinone/callerid/c/b/c;
.super Ljava/lang/Object;
.source "SharedPreferencesBacukup.java"


# direct methods
.method public static a()Z
    .locals 3

    const-string v0, "Backup"

    const-string v1, "backup_enable"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "Backup"

    const-string v1, "backup_account"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 3

    const-string v0, "Backup"

    const-string v1, "backup_frequency"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 3

    const-string v0, "Backup"

    const-string v1, "backup_net"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 4

    const-string v0, "Backup"

    const-string v1, "last_backup_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Z)V
    .locals 2

    const-string v0, "Backup"

    const-string v1, "backup_enable"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Backup"

    const-string v1, "backup_account"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(I)V
    .locals 2

    const-string v0, "Backup"

    const-string v1, "backup_frequency"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static i(I)V
    .locals 2

    const-string v0, "Backup"

    const-string v1, "backup_net"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static j(J)V
    .locals 2

    const-string v0, "Backup"

    const-string v1, "last_backup_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
