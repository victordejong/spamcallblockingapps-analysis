.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->a:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->a:Landroid/net/Uri;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->a:Landroid/net/Uri;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
