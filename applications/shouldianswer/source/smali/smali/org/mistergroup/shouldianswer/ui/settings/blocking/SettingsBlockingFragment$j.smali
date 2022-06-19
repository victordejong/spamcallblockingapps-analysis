.class final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;
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

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 169
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 170
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai$b;->c:Lorg/mistergroup/shouldianswer/model/ai$b;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/ai$b;)V

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserSettings.pickAndHang"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 173
    new-instance p2, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100062

    .line 174
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/d$a;->a(I)Landroidx/appcompat/app/d$a;

    move-result-object v0

    const v1, 0x7f08009e

    .line 175
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    move-result-object v0

    const v1, 0x7f100061

    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->b(I)Landroidx/appcompat/app/d$a;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/d$a;->a(Z)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    const v1, 0x7f100060

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 179
    invoke-virtual {p2}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object p1

    const-string p2, "builder.create()"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->show()V

    :cond_0
    return-void
.end method
