.class public Lcom/callapp/contacts/api/helper/google/GoogleHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;
    }
.end annotation


# instance fields
.field private c:Lcom/google/android/gms/auth/api/signin/c;

.field private d:Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 1

    .line 71
    instance-of v0, p2, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_1

    .line 72
    check-cast p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/ApiException;->b()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->b()V

    return-void

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c:Lcom/google/android/gms/auth/api/signin/c;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/c;->b()Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1f40

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->b()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/tasks/h;)V
    .locals 1

    .line 230
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->a(I)V

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->d:Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;->onDisconnected()V

    :cond_0
    return-void
.end method

.method public static get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;
    .locals 1

    .line 263
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getGoogleHelper()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    return-object v0
.end method

.method private getSignInClient()Lcom/google/android/gms/auth/api/signin/c;
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c:Lcom/google/android/gms/auth/api/signin/c;

    if-nez v0, :cond_4

    .line 1115
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 1119
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 1120
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 1121
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    const v1, 0x7f120286

    .line 1123
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a:Z

    .line 3001
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 3002
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    const-string v3, "two different server client ids provided"

    .line 3003
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 2001
    iput-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b:Ljava/lang/String;

    .line 1123
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 1124
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://mail.google.com/"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/gmail.readonly"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    :goto_1
    new-array v2, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 1129
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    .line 108
    :goto_2
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c:Lcom/google/android/gms/auth/api/signin/c;

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c:Lcom/google/android/gms/auth/api/signin/c;

    return-object v0
.end method

.method public static k()Z
    .locals 5

    .line 198
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aI:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$UE7kSgjqL3nu6EnMrME4jkEwRqY(Lcom/callapp/contacts/api/helper/google/GoogleHelper;Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Landroid/app/Activity;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$aquGRIwHaIXvCIIVxXDCCVDHby0(Lcom/callapp/contacts/api/helper/google/GoogleHelper;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Lcom/google/android/gms/tasks/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 1

    .line 171
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 3011
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 174
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object p1

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->c(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZZ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 9

    .line 64
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a()V

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getSignInClient()Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c:Lcom/google/android/gms/auth/api/signin/c;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->c()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY;-><init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;Landroid/app/Activity;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/api/helper/google/-$$Lambda$14a4aVZ_FodMab971KeRnvActqI;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/google/-$$Lambda$14a4aVZ_FodMab971KeRnvActqI;-><init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c()V

    const v0, 0x7f12087f

    .line 90
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120350

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1204ea

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/callapp/contacts/api/helper/google/GoogleHelper$1;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper$1;-><init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;)V

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {v0, p1, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 161
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 148
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 149
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 150
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aI:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->d()V

    .line 155
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e()V
    .locals 2

    .line 228
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getSignInClient()Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$aquGRIwHaIXvCIIVxXDCCVDHby0;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/google/-$$Lambda$GoogleHelper$aquGRIwHaIXvCIIVxXDCCVDHby0;-><init>(Lcom/callapp/contacts/api/helper/google/GoogleHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 307
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 4011
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 327
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 6011
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 244
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 335
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 7011
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFriendsCount()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFriendsListAsPersonData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Google"

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 315
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 5011
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 203
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNativeAppInstalled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDisconnectListener(Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->d:Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;

    return-void
.end method
