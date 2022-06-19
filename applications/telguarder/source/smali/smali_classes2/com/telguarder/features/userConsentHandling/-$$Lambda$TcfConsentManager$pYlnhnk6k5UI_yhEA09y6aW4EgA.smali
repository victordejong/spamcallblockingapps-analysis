.class public final synthetic Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iput-object p2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$0:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->lambda$null$2$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/google/android/ump/FormError;)V

    return-void
.end method
