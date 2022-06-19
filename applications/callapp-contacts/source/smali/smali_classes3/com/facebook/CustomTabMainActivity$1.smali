.class final Lcom/facebook/CustomTabMainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/CustomTabMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/CustomTabMainActivity;


# direct methods
.method constructor <init>(Lcom/facebook/CustomTabMainActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/facebook/CustomTabMainActivity$1;->a:Lcom/facebook/CustomTabMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 83
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/CustomTabMainActivity$1;->a:Lcom/facebook/CustomTabMainActivity;

    const-class v1, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->d:Ljava/lang/String;

    sget-object v1, Lcom/facebook/CustomTabMainActivity;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x24000000

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Lcom/facebook/CustomTabMainActivity$1;->a:Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {p2, p1}, Lcom/facebook/CustomTabMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
