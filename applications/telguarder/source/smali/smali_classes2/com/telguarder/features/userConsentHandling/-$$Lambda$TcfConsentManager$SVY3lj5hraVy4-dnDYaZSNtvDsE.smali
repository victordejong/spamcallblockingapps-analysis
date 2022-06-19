.class public final synthetic Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iput-object p2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->lambda$requestConsent$0$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
