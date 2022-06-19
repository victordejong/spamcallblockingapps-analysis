.class public final Lcom/google/api/client/googleapis/extensions/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Landroid/accounts/AccountManager;

    iput-object p1, p0, Lcom/google/api/client/googleapis/extensions/android/a/a;->a:Landroid/accounts/AccountManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/a/a;-><init>(Landroid/accounts/AccountManager;)V

    return-void
.end method


# virtual methods
.method public final a()[Landroid/accounts/Account;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/a/a;->a:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
