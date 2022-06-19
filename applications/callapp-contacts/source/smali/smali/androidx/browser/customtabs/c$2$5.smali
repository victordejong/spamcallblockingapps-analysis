.class final Landroidx/browser/customtabs/c$2$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c$2;->a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Z

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Landroidx/browser/customtabs/c$2;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/c$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 389
    iput-object p1, p0, Landroidx/browser/customtabs/c$2$5;->e:Landroidx/browser/customtabs/c$2;

    iput p2, p0, Landroidx/browser/customtabs/c$2$5;->a:I

    iput-object p3, p0, Landroidx/browser/customtabs/c$2$5;->b:Landroid/net/Uri;

    iput-boolean p4, p0, Landroidx/browser/customtabs/c$2$5;->c:Z

    iput-object p5, p0, Landroidx/browser/customtabs/c$2$5;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 392
    iget-object v0, p0, Landroidx/browser/customtabs/c$2$5;->e:Landroidx/browser/customtabs/c$2;

    iget-object v0, v0, Landroidx/browser/customtabs/c$2;->a:Landroidx/browser/customtabs/b;

    iget v1, p0, Landroidx/browser/customtabs/c$2$5;->a:I

    iget-object v2, p0, Landroidx/browser/customtabs/c$2$5;->b:Landroid/net/Uri;

    iget-boolean v3, p0, Landroidx/browser/customtabs/c$2$5;->c:Z

    iget-object v4, p0, Landroidx/browser/customtabs/c$2$5;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/browser/customtabs/b;->a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method
