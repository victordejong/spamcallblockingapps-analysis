.class final Lcom/mopub/common/privacy/PersonalInfoManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$a;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-void
.end method


# virtual methods
.method public final onForceExplicitNo(Ljava/lang/String;)V
    .locals 2

    .line 751
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->REVOKED_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public final onForceGdprApplies()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->forceGdprApplies()V

    return-void
.end method

.method public final onInvalidateConsent(Ljava/lang/String;)V
    .locals 2

    .line 761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public final onReacquireConsent(Ljava/lang/String;)V
    .locals 1

    .line 771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    .line 1369
    iput-object p1, v0, Lcom/mopub/common/privacy/b;->e:Ljava/lang/String;

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 1377
    iput-boolean v0, p1, Lcom/mopub/common/privacy/b;->t:Z

    .line 775
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/b;->a()V

    return-void
.end method

.method public final onRequestSuccess(Ljava/lang/String;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    .line 2196
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    .line 2200
    iput-object p1, v0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 791
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$a;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
