.class final Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/GooglePlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GetTokenTask"
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/accounts/Account;

.field private c:Ljava/lang/Exception;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->a:Ljava/util/Collection;

    .line 36
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {p2, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->b:Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/callapp/contacts/util/GooglePlayUtils$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->b:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->a:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/GooglePlayUtils;->a(Landroid/accounts/Account;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->e:Z
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 45
    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->c:Ljava/lang/Exception;

    return-void
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->c:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isFinishSuccessfully()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/callapp/contacts/util/GooglePlayUtils$GetTokenTask;->e:Z

    return v0
.end method
