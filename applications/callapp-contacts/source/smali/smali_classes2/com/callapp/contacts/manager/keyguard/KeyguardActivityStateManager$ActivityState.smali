.class Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityState"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;ZZ)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->a:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p2, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->b:Z

    .line 33
    iput-boolean p3, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;ZZLcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;-><init>(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->setIsPaused(Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;)Z
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->b:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->c:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->setHasFocus(Z)V

    return-void
.end method

.method private setHasFocus(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->c:Z

    return-void
.end method

.method private setIsPaused(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->b:Z

    return-void
.end method
