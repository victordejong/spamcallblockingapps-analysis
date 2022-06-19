.class final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i;
.super Ljava/lang/Object;
.source "SettingsBlockingFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "compoundButton"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 163
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSettings.disallowCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 164
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai$b;->a:Lorg/mistergroup/shouldianswer/model/ai$b;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/ai$b;)V

    :cond_0
    return-void
.end method
