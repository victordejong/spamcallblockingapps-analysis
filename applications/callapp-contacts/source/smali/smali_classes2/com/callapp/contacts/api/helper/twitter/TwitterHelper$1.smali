.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 223
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Twitter SDK TwitterException"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b()V

    .line 225
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/identity/h;

    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    .line 216
    iget-object p1, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/t;

    .line 1042
    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    .line 216
    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/identity/h;

    return-void
.end method
