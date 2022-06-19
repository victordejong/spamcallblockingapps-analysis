.class Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    new-instance v1, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$p4EppID6ZQ_pvT7fdZO3zZs_frY;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$p4EppID6ZQ_pvT7fdZO3zZs_frY;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    const v2, 0x7f12024d

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    return-void
.end method

.method private synthetic a([Ljava/lang/String;[I)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    new-instance p2, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method

.method public static synthetic lambda$IIb1TcAS4Ynb0TKK-PX7Zz1Vl4w(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a([Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic lambda$VyTEjwITCuVqnS6KqYHSUJ-Segg(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a()V

    return-void
.end method

.method public static synthetic lambda$p4EppID6ZQ_pvT7fdZO3zZs_frY(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p1

    const-string p2, "true"

    const-string p3, "false"

    if-eqz p1, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    const-wide/16 v4, 0x0

    const-string v1, "Permissions"

    const-string v2, "Default dailer from setup"

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    const-string p3, "Permissions"

    const-string p4, "Default dialer"

    invoke-virtual {p1, p3, p4, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->g()V

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    new-instance p3, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$IIb1TcAS4Ynb0TKK-PX7Zz1Vl4w;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$IIb1TcAS4Ynb0TKK-PX7Zz1Vl4w;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V

    new-instance p4, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$VyTEjwITCuVqnS6KqYHSUJ-Segg;

    invoke-direct {p4, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$VyTEjwITCuVqnS6KqYHSUJ-Segg;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;Ljava/lang/Runnable;)V

    return-void
.end method
