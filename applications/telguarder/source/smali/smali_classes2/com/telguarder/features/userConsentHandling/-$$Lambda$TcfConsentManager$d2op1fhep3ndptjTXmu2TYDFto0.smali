.class public final synthetic Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateFailure(Lcom/google/android/ump/FormError;)V
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->lambda$requestConsent$1(Ljava/lang/Runnable;Lcom/google/android/ump/FormError;)V

    return-void
.end method
