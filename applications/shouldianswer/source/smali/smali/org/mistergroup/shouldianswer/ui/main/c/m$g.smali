.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$g;
.super Ljava/lang/Object;
.source "LogsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity;->l:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$g;->a:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method
