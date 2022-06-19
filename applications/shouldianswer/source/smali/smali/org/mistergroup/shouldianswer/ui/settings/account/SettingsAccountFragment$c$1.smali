.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;
.super Ljava/lang/Object;
.source "SettingsAccountFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$c$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
