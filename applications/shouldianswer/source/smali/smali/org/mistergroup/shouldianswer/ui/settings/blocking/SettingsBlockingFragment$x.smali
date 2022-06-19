.class final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;
.super Ljava/lang/Object;
.source "SettingsBlockingFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;->b:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 328
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;->b:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->f(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Lorg/mistergroup/shouldianswer/a/do;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->z:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;->b:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->f(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Lorg/mistergroup/shouldianswer/a/do;

    move-result-object p2

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->z:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
