.class public final Landroidx/browser/a/b;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    .line 337
    iput-object p2, p0, Landroidx/browser/a/b;->b:Landroid/os/Bundle;

    .line 338
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/a/b;->b:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroidx/core/a/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 332
    return-void
.end method
