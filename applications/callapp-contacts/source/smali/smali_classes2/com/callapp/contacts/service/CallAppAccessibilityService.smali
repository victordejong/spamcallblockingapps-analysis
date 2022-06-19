.class public Lcom/callapp/contacts/service/CallAppAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/callapp/contacts/service/CallAppAccessibilityService;->a:Z

    return v0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/callapp/contacts/service/CallAppAccessibilityService;->a:Z

    .line 42
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/callapp/contacts/service/CallAppAccessibilityService;->a:Z

    .line 27
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 29
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->a()V

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/callapp/contacts/service/CallAppAccessibilityService;->a:Z

    .line 36
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
