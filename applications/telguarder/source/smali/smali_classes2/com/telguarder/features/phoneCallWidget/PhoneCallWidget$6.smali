.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->saveWidgetPosition(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gravity:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;IILandroid/content/Context;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iput p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$offset:I

    iput p3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$gravity:I

    iput-object p4, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    .line 368
    iget v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$offset:I

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->setVerticalOffset(I)V

    .line 369
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCallWidgetLocation(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V

    .line 370
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    iget v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$gravity:I

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCallWidgetLocationCustomGravity(I)V

    .line 371
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->isCallWidgetTooltipNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->setCallWidgetTooltipNeeded(Z)V

    :cond_0
    return-void
.end method
