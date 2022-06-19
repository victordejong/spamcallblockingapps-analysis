.class public Lcom/callerid/block/util/n0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "enalbe_unknow_number_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static A0(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "count_identify"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static A1()J
    .locals 3

    const-string v0, "OfflineDownloadTime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static B(Landroid/content/Context;)J
    .locals 2

    const-string p0, "first_enter_time_new"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static B0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "current_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static B1()I
    .locals 2

    const-string v0, "current_theme"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "first_upload_calllog"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static C0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_uuid"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static C1()J
    .locals 3

    const-string v0, "update_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "has_update_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static D0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "show_current_version_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D1(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "is_auto_block"

    invoke-static {p1, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static E(Landroid/content/Context;)J
    .locals 2

    const-string p0, "incoming_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static E0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "db_is_base"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static E1(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "is_can_start_collect_job"

    invoke-static {p1, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "is_spam_or_name"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static F0(I)V
    .locals 1

    const-string v0, "default_slotid"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static F1()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "OfflineDownloadTime"

    invoke-static {v2, v0, v1}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "is_spam_or_name"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static G0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "download_full_dose"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static G1(I)V
    .locals 1

    const-string v0, "current_theme"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static H(Landroid/content/Context;)J
    .locals 2

    const-string p0, "last_calllog_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static H0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "enable_keep_alive"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static H1(J)V
    .locals 1

    const-string v0, "update_time"

    invoke-static {v0, p0, p1}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static I(Landroid/content/Context;)J
    .locals 2

    const-string p0, "last_collect_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static I0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "enalbe_block_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "local_ip"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "enalbe_unknow_block_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static K(Landroid/content/Context;)J
    .locals 2

    const-string p0, "mid_time_vest"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static K0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "enalbe_unknow_number_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static L(Landroid/content/Context;)J
    .locals 2

    const-string p0, "min_update_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static L0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "first_enter_time_new"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static M(Landroid/content/Context;)J
    .locals 2

    const-string p0, "offline_time_vest_new"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static M0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "first_upload_calllog"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static N(Landroid/content/Context;)J
    .locals 2

    const-string p0, "parser_ip_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static N0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "has_update_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static O(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-string p0, "share_time_vest"

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static O0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "incoming_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static P(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_answer"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static P0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "is_spam_or_name"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q()Z
    .locals 2

    const-string v0, "show_battery_optimi"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Q0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "is_spam_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "copy_number_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static R0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "is_spam_or_name"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "copy_dialog_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static S0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "last_calllog_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static T(Landroid/content/Context;)J
    .locals 2

    const-string p0, "show_ly_time_new_new"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static T0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "last_collect_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static U(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_miss_dia_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static U0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "local_ip"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static V(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_notifi"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static V0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "mid_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static W()Z
    .locals 2

    const-string v0, "show_overlay_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "min_update_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static X(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_sub_guide"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static X0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "offline_time_vest_new"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static Y()Z
    .locals 2

    const-string v0, "show_whatsapp_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Y0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "parser_ip_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static Z(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_xuan_fu_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static Z0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "share_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "agreen_privacy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a0(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "show_xuan_fu_c_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_answer"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    const-string p0, "answer_timevest"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b0(Landroid/content/Context;)I
    .locals 1

    const-string p0, "spam_counts_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b1(Z)V
    .locals 1

    const-string v0, "show_battery_optimi"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    add-long/2addr v0, v2

    const-string p0, "block_enable_time_vest"

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c0(Landroid/content/Context;)J
    .locals 2

    const-string p0, "spam_time_vest"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "copy_number_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "block_international_number"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d0(Landroid/content/Context;)I
    .locals 1

    const-string p0, "xuanfu_style_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static d1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "copy_dialog_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e()I
    .locals 2

    const-string v0, "BlockMethod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e0(Landroid/content/Context;)J
    .locals 2

    const-string p0, "sub_guide_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e1(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "show_ly_time_new_new"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "block_top_spam_number"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "switchl"

    const-string v0, "en"

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_miss_dia_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "blocked_notifi"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g0(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "first_language"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_new_tui"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static h(Landroid/content/Context;)J
    .locals 2

    const-string p0, "buyu_enabled_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h0()Z
    .locals 2

    const-string v0, "theme_system_default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_notifi"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "buyu_token_max"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static i0()Z
    .locals 2

    const-string v0, "enable_wa"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i1(Z)V
    .locals 1

    const-string v0, "show_overlay_dialog"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j(Landroid/content/Context;)I
    .locals 1

    const-string p0, "call_log_filter_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static j0(Landroid/content/Context;)I
    .locals 1

    const/high16 v0, 0x433e0000    # 190.0f

    invoke-static {p0, v0}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result p0

    const-string v0, "xuanfu_position_vest"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static j1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_sub_guide"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "can_coll_wiki"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static k0(Z)V
    .locals 1

    const-string v0, "agreen_privacy"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_tip_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "is_search_sms"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "answer_timevest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static l1(Z)V
    .locals 1

    const-string v0, "show_whatsapp_guide"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "can_stat"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static m0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "block_enable_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static m1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_xuan_fu_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n(Landroid/content/Context;)I
    .locals 1

    const-string p0, "count"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static n0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "block_international_number"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "show_xuan_fu_c_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static o(Landroid/content/Context;)I
    .locals 1

    const-string p0, "clickcountnewnew"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static o0(I)V
    .locals 1

    const-string v0, "BlockMethod"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static o1(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "spam_counts_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static p(Landroid/content/Context;)J
    .locals 2

    const-string p0, "click_time_vest"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static p0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "block_top_spam_number"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static p1(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "spam_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static q(Landroid/content/Context;)I
    .locals 1

    const-string p0, "count_identify"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static q0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "blocked_notifi"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q1(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "xuanfu_style_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static r(Landroid/content/Context;)J
    .locals 2

    const-string p0, "current_time_vest"

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/callerid/block/util/y;->c(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static r0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "buyu_enabled_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static r1(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "sub_guide_time"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 2

    const-string v0, "current_uuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "buyu_token_max"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static s1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "switchl"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "show_current_version_vest"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t0(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "call_log_filter_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static t1(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "first_language"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "db_is_base"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static u0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "can_coll_wiki"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u1(Z)V
    .locals 1

    const-string v0, "theme_system_default"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v()I
    .locals 2

    const-string v0, "default_slotid"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static v0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "is_search_sms"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v1(Z)V
    .locals 1

    const-string v0, "under_min_version"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "download_full_dose"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static w0(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "can_stat"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w1(Z)V
    .locals 1

    const-string v0, "enable_wa"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "enable_keep_alive"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static x0(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "count"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static x1(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "xuanfu_position_vest"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "enalbe_block_vest"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static y0(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "clickcountnewnew"

    invoke-static {p0, p1}, Lcom/callerid/block/util/y;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static y1(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const-string p0, "is_auto_block"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "enalbe_unknow_block_vest"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static z0(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "click_time_vest"

    invoke-static {p0, p1, p2}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public static z1(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const-string p0, "is_can_start_collect_job"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
