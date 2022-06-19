.class public abstract Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/browser/customtabs/c;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 53
    iget-object v0, p0, Landroidx/browser/customtabs/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroidx/browser/customtabs/e$1;

    .line 58
    invoke-static {p2}, Landroid/support/a/b$a;->a(Landroid/os/IBinder;)Landroid/support/a/b;

    move-result-object p2

    iget-object v1, p0, Landroidx/browser/customtabs/e;->b:Landroid/content/Context;

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/browser/customtabs/e$1;-><init>(Landroidx/browser/customtabs/e;Landroid/support/a/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, v0}, Landroidx/browser/customtabs/e;->a(Landroidx/browser/customtabs/c;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
