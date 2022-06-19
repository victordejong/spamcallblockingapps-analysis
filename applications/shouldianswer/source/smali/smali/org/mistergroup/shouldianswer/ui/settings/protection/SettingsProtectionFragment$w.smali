.class final Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;
.super Ljava/lang/Object;
.source "SettingsProtectionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 343
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->f(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 344
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed protection settings to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/af;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restarting service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 345
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/af;)V

    .line 346
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/a;)V

    .line 347
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/af;)V

    .line 348
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/a;)V

    .line 349
    sget-object p1, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->c()V

    .line 350
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;->a:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    :cond_1
    return-void
.end method
