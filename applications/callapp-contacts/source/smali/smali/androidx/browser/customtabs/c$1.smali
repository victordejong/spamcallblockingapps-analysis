.class final Landroidx/browser/customtabs/c$1;
.super Landroidx/browser/customtabs/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 190
    iput-object p1, p0, Landroidx/browser/customtabs/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/browser/customtabs/c;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Landroidx/browser/customtabs/c;->a()Z

    .line 198
    iget-object p1, p0, Landroidx/browser/customtabs/c$1;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
