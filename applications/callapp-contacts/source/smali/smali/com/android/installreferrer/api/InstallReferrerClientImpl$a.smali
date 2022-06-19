.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

.field private final b:Lcom/android/installreferrer/api/InstallReferrerStateListener;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 1
    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/InstallReferrerClientImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 2
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    .line 3
    invoke-static {p2}, Lcom/google/android/b/a/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/b/a/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/b/a/a;)Lcom/google/android/b/a/a;

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 p2, 0x2

    .line 4
    invoke-static {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 6
    invoke-static {p1, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/b/a/a;)Lcom/google/android/b/a/a;

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 9
    invoke-interface {p1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerServiceDisconnected()V

    return-void
.end method
