.class final Lcom/android/a/a/b$a;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/a/a/b;

.field private final b:Lcom/android/a/a/c;


# direct methods
.method private constructor <init>(Lcom/android/a/a/b;Lcom/android/a/a/c;)V
    .locals 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/a/a/b$a;->a:Lcom/android/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p2, :cond_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please specify a listener to know when setup is done."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput-object p2, p0, Lcom/android/a/a/b$a;->b:Lcom/android/a/a/c;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/a/b;Lcom/android/a/a/c;Lcom/android/a/a/b$1;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/a/a/b$a;-><init>(Lcom/android/a/a/b;Lcom/android/a/a/c;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "InstallReferrerClient"

    const-string/jumbo v1, "Install Referrer service connected."

    invoke-static {v0, v1}, Lcom/android/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/a/a/b$a;->a:Lcom/android/a/a/b;

    invoke-static {p2}, Lcom/google/android/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/a/a/b;->a(Lcom/android/a/a/b;Lcom/google/android/a/a/a;)Lcom/google/android/a/a/a;

    .line 221
    iget-object v0, p0, Lcom/android/a/a/b$a;->a:Lcom/android/a/a/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/a/a/b;->a(Lcom/android/a/a/b;I)I

    .line 222
    iget-object v0, p0, Lcom/android/a/a/b$a;->b:Lcom/android/a/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/a/a/c;->a(I)V

    .line 223
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 227
    const-string/jumbo v0, "InstallReferrerClient"

    const-string/jumbo v1, "Install Referrer service disconnected."

    invoke-static {v0, v1}, Lcom/android/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/a/a/b$a;->a:Lcom/android/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/a/a/b;->a(Lcom/android/a/a/b;Lcom/google/android/a/a/a;)Lcom/google/android/a/a/a;

    .line 229
    iget-object v0, p0, Lcom/android/a/a/b$a;->a:Lcom/android/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/a/a/b;->a(Lcom/android/a/a/b;I)I

    .line 230
    iget-object v0, p0, Lcom/android/a/a/b$a;->b:Lcom/android/a/a/c;

    invoke-interface {v0}, Lcom/android/a/a/c;->a()V

    .line 231
    return-void
.end method
