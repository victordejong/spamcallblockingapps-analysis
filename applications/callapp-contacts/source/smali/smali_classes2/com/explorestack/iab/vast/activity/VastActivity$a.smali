.class public final Lcom/explorestack/iab/vast/activity/VastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/explorestack/iab/vast/VastRequest;

.field public b:Lcom/explorestack/iab/vast/VastActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-nez v0, :cond_0

    const-string p1, "VastRequest not provided"

    .line 77
    invoke-static {p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 1098
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v1, "com.explorestack.iab.vast.REQUEST"

    .line 1100
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->b:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V

    .line 84
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
