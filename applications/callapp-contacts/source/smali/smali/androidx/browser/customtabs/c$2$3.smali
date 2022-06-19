.class final Landroidx/browser/customtabs/c$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c$2;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroidx/browser/customtabs/c$2;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/c$2;Landroid/os/Bundle;)V
    .locals 0

    .line 364
    iput-object p1, p0, Landroidx/browser/customtabs/c$2$3;->b:Landroidx/browser/customtabs/c$2;

    iput-object p2, p0, Landroidx/browser/customtabs/c$2$3;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 367
    iget-object v0, p0, Landroidx/browser/customtabs/c$2$3;->b:Landroidx/browser/customtabs/c$2;

    iget-object v0, v0, Landroidx/browser/customtabs/c$2;->a:Landroidx/browser/customtabs/b;

    iget-object v1, p0, Landroidx/browser/customtabs/c$2$3;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/b;->a(Landroid/os/Bundle;)V

    return-void
.end method
