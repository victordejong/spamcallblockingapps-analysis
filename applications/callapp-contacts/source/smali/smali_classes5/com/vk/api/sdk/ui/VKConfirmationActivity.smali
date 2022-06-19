.class public final Lcom/vk/api/sdk/ui/VKConfirmationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0004H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKConfirmationActivity;",
        "Landroid/app/Activity;",
        "()V",
        "finish",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "Companion",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic a(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->b:Z

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->b:Z

    return v0
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 73
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1, p1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->overridePendingTransition(II)V

    .line 45
    new-instance p1, Landroid/widget/FrameLayout;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 49
    sget v0, Lcom/vk/api/sdk/a$c;->vk_confirm:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity$b;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$b;-><init>(Lcom/vk/api/sdk/ui/VKConfirmationActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity$c;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$c;-><init>(Lcom/vk/api/sdk/ui/VKConfirmationActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity$d;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$d;-><init>(Lcom/vk/api/sdk/ui/VKConfirmationActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    return-void
.end method
