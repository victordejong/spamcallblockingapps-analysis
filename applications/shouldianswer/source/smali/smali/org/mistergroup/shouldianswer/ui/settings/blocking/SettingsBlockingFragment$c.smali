.class public final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;
.super Ljava/lang/Object;
.source "SettingsBlockingFragment.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    const/4 p1, 0x6

    .line 128
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/ai;->b(I)V

    .line 129
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
