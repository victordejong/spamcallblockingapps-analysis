.class public Lcom/allinone/callerid/util/a1;
.super Ljava/lang/Object;
.source "SharedPreferencesConfig.java"


# direct methods
.method public static A()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "init_overlay"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static A0()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "wake_date_time"

    const-string v2, "0"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "last_download_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static A2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "use_new_call_end"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static B()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "install_app_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static B0()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const/high16 v1, 0x433e0000    # 190.0f

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v0

    const-string v1, "ShowcallerMain"

    const-string v2, "xuanfu_position"

    invoke-static {v1, v2, v0}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static B1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "last_search_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static B2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "blocknotice"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static C()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "block_hangup"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "xuan_fu_yin_dao"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "launch_app_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static C2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_recommend_new_new"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static D()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "caller_dialer"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D0(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "answer_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static D1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "launch_app_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static D2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_self"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static E()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_animation"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "battery_optimize_info"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static E1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "local_ip"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static E2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_share_tip"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static F()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_custm_block"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F0(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "buyu_enabled_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static F1(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "position"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static F2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_speaker"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static G()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "isdeaultsim"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "buyu_token_max"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static G1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "mid_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static G2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "incominghangup"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static H()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_first_close_rate"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static H0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "can_coll_wiki"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static H1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "min_update_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static H2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "is_auto_block"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static I()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_first_install"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "can_open_alive"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static I1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "admob_missed"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static I2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "is_block_and_end"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static J()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "set_first_install_time"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_premium"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static J1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "missed_awaketime"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static J2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "is_block_and_end"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static K()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_short_cut"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_spam"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static K1(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "missed_unknowncount"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static K2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_show_circle_point"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static L()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_create_shortcut"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static L0(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "update_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static L1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "offline_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static L2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_start_collect_job"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static M()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_one_block"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_cc"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static M1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "parser_ip_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static M2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "missednotice"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static N()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "private_block_tip"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_country"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static N1(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "report_count"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static N2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "new_call_end_failed"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static O()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_quick_contact"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_iso"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static O1(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "search_number_count"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static O2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "new_call_end_failed"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static P()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_red"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P0(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "click_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static P1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "share_show_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static P2()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ShowcallerMain"

    const-string v3, "OfflineDownloadTime"

    invoke-static {v2, v3, v0, v1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static Q()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_shortcut"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Q0(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "close_recommend_dialog_count_new_new"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static Q1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "copy_number"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "old_call_end_usable"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static R()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_spam"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static R0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_current_version"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static R1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "copy_dialog"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static R2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "outgoinghangup"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static S()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_spam_or_name"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static S0(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "default_slotid"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static S1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_miss_dia"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static S2(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "current_theme"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static T()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "last_calllog_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static T0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "download_full_dose"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static T1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_new_tui"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static T2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "use_new_call_end"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static U()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "last_close_neitui_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static U0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "enable_keep_alive"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static U1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_notifi"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static U2(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "ShowcallerMain"

    const-string v1, "use_new_call_end"

    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static V()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "last_collect_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static V0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "enable_stay_alive"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static V1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_overlay_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static W()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "last_download_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static W0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_block"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static W1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "rate_us"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static X()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ShowcallerMain"

    const-string v3, "last_search_time"

    invoke-static {v2, v3, v0, v1}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static X0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_unknow_block"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static X1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "rate_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static Y()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "launch_app_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Y0(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_unknow_number"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static Y1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_recommend_dialog_time_new_new"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static Z()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "local_ip"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Z0(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "fbtime"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static Z1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_tip_vest"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "answer_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "position"

    const/4 v2, -0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "first_install_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static a2(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_xuan_fu"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "battery_optimize_info"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "mid_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "addcontant_g"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static b2(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_xuan_fu_c"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "buyu_enabled_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "min_update_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "incoming_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static c2(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "spam_counts"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static d()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "buyu_token_max"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "admob_missed"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "init_overlay"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d2(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "xuanfu_style"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static e()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_coll_wiki"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "missed_awaketime"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "install_app_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static e2(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "switchl"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_open_alive"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "missed_unknowncount"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "block_hangup"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static f2(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "theme_system_default"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_premium"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "offline_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "block_hangup"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g2(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "under_min_version"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static h()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_spam"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "parser_ip_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "caller_dialer"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static h2(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "wake_date_time"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "update_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "report_count"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_animation"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static i2(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "wake_date_time"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_cc"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "search_number_count"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static j1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_custm_block"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static j2(I)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "xuanfu_position"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_country"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "share_show_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "isdeaultsim"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static k2(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "xuan_fu_yin_dao"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "choose_iso"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "copy_number"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_first_close_rate"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static l2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "blocknotice"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static m()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "click_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "copy_dialog"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_first_install"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static m2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_self"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static n()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "close_recommend_dialog_count_new_new"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_miss_dia"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "set_first_install_time"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static n2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_share_tip"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_current_version"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_notifi"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_short_cut"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static o2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "can_show_speaker"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "default_slotid"

    const/4 v2, -0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "show_overlay_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static p1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "show_create_shortcut"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static p2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "incominghangup"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "download_full_dose"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "rate_us"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_one_block"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static q2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_auto_block"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static r()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "enable_keep_alive"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r0()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "rate_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static r1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "private_block_tip"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static r2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_block_and_end"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static s()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "enable_stay_alive"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_tip_vest"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_quick_contact"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static s2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_show_circle_point"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static t()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_block"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_xuan_fu"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_red"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static t2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "is_can_start_collect_job"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static u()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_unknow_block"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "show_xuan_fu_c"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_show_shortcut"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static u2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "missednotice"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static v()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "enalbe_unknow_number"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "spam_counts"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static v1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_spam"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static v2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "new_call_end_failed"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static w()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "fbtime"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static w0()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "xuanfu_style"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static w1(Z)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "is_spam_or_name"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static w2()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "OfflineDownloadTime"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static x()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "first_install_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static x0()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowcallerMain"

    const-string v2, "switchl"

    invoke-static {v1, v2, v0}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "last_calllog_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static x2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "old_call_end_usable"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static y()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "addcontant_g"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static y0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "theme_system_default"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "last_close_neitui_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static y2()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "outgoinghangup"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static z()J
    .locals 4

    const-string v0, "ShowcallerMain"

    const-string v1, "incoming_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static z0()Z
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "under_min_version"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z1(J)V
    .locals 2

    const-string v0, "ShowcallerMain"

    const-string v1, "last_collect_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static z2()I
    .locals 3

    const-string v0, "ShowcallerMain"

    const-string v1, "current_theme"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
