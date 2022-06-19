.class public final Landroid/app/a;
.super Landroid/app/KeyguardManager;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/app/KeyguardManager;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/KeyguardManager;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    .line 12
    iput-object p1, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public final createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .line 17
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    return-void
.end method

.method public final inKeyguardRestrictedInputMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDeviceLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDeviceSecure()Z
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    return v0
.end method

.method public final isKeyguardLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isKeyguardSecure()Z
    .locals 1

    .line 32
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public final newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1

    .line 22
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object p1

    return-object p1
.end method

.method public final requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/app/a;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method
