.class final Lorg/mistergroup/shouldianswer/ui/main/b$k$1;
.super Ljava/lang/Object;
.source "MainBanners.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b$k;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b$k;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b$k;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$k$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity;->l:Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$k$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/b$k;->b:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/b;->c()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionActivity$a;->a(Landroid/content/Context;)V

    .line 87
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$k$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/b$k;->c:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e()Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    .line 88
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$k$1;->a:Lorg/mistergroup/shouldianswer/ui/main/b$k;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$k;->b:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b;->a()V

    return-void
.end method
