.class public final Landroidx/browser/a/a;
.super Ljava/lang/Object;
.source "CustomTabColorSchemeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/browser/a/a;->a:Ljava/lang/Integer;

    .line 56
    iput-object p2, p0, Landroidx/browser/a/a;->b:Ljava/lang/Integer;

    .line 57
    iput-object p3, p0, Landroidx/browser/a/a;->c:Ljava/lang/Integer;

    .line 58
    return-void
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v1, p0, Landroidx/browser/a/a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    iget-object v2, p0, Landroidx/browser/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    :cond_0
    iget-object v1, p0, Landroidx/browser/a/a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 72
    const-string/jumbo v1, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    iget-object v2, p0, Landroidx/browser/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    :cond_1
    iget-object v1, p0, Landroidx/browser/a/a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 75
    const-string/jumbo v1, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    iget-object v2, p0, Landroidx/browser/a/a;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    :cond_2
    return-object v0
.end method
