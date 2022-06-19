.class public Lcom/mopub/common/privacy/ConsentDialogActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/ConsentDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/ConsentDialogActivity;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-static {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->a(Lcom/mopub/common/privacy/ConsentDialogActivity;Lcom/mopub/common/privacy/ConsentStatus;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->d(Z)V

    return-void
.end method
