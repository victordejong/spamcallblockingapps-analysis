.class public final synthetic Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iput-object p2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->lambda$loadConsentForm$3$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/google/android/ump/ConsentForm;)V

    return-void
.end method
