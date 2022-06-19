.class public Lcom/callapp/contacts/util/CrashlyticsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .line 27
    sget-boolean v0, Lcom/callapp/contacts/util/CrashlyticsUtils;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/callapp/contacts/util/CrashlyticsUtils;->b:Z

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;-><init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 33
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static b(Landroid/app/Application;)V
    .locals 2

    .line 39
    sget-boolean v0, Lcom/callapp/contacts/util/CrashlyticsUtils;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/callapp/contacts/util/CrashlyticsUtils;->a:Z

    .line 43
    invoke-static {p0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Landroid/app/Application;)V

    .line 45
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ed:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getReadableModVersion()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "CUSTOMROM"

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
