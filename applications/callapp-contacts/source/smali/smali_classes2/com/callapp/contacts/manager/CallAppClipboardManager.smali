.class public Lcom/callapp/contacts/manager/CallAppClipboardManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 176
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized a()Ljava/lang/String;
    .locals 9

    const-class v0, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "clipboard"

    .line 2057
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2058
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 2062
    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2066
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2067
    :cond_1
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2068
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 2070
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2073
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2075
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    .line 122
    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2230
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    .line 2235
    invoke-direct {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->getLastClipData()Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2237
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2238
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v6, v1

    .line 2241
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2243
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    sub-long/2addr v7, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v7, v4

    if-lez v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "CallApp Clipboard ignoring number: "

    .line 2256
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_6

    move-object v2, v1

    .line 128
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 131
    :try_start_1
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit p0

    return-object v1

    :goto_4
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(JLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 117
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->v:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 1

    const-string v0, "clipboard"

    .line 3137
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3138
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;)V
    .locals 2

    .line 164
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 165
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 167
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 187
    const-class v0, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "CallApp Clipboard failed: text is empty"

    .line 188
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x50

    if-le v1, v3, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CallApp Clipboard failed: text is too long: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v1, "\\s+"

    const-string v3, ""

    .line 197
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, " "

    .line 198
    invoke-static {p0, v4}, Lcom/callapp/common/util/RegexUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 203
    array-length v1, p0

    const/4 v4, 0x0

    move-object v5, v2

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v6, p0, v4

    .line 205
    invoke-static {v6}, Lcom/callapp/common/util/RegexUtils;->e(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_3

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    const-string p0, "CallApp Clipboard failed: text must not contain more than 1 number"

    .line 211
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 217
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 218
    invoke-static {v5, v3}, Lcom/callapp/common/util/RegexUtils;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v5, :cond_6

    const-string p0, "Callapp Clipboard failed: text doesn\'t contain valid phone token"

    .line 221
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p0, "Callapp Clipboard failed: text doesn\'t contain valid phone for search"

    .line 223
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public static get()Lcom/callapp/contacts/manager/CallAppClipboardManager;
    .locals 1

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCallAppClipboardManager()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getLastClipData()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->v:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$RE9fCGcpt5r0U_ySexY9UQ6NHIw(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 271
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->setPrimaryClip$387437e0(Landroid/content/ClipData;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, "clipboard"

    .line 1142
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1143
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public getLatestNumberFromClipboard()Ljava/lang/String;
    .locals 7

    .line 90
    invoke-direct {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->getLastClipData()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a()Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->getLastClipData()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallAppClipboardManager"

    .line 96
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-object v1

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 103
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public init()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/CallAppClipboardManager$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager$1;-><init>(Lcom/callapp/contacts/manager/CallAppClipboardManager;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a:Z

    return-void

    .line 152
    :cond_0
    sget-boolean v0, Lcom/callapp/contacts/activity/base/BaseActivity;->isCallAppVisible:Z

    if-eqz v0, :cond_1

    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->l:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/manager/-$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/manager/-$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final setPrimaryClip$387437e0(Landroid/content/ClipData;)V
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a:Z

    const-string v0, "clipboard"

    .line 262
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 264
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 266
    :catch_0
    const-class p1, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    const-string v0, "Copy to clipboard failed"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
