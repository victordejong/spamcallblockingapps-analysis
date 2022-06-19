.class Landroidx/browser/customtabs/b$a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b$a;->H5(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Z

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroidx/browser/customtabs/b$a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b$a;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/b$a$e;->f:Landroidx/browser/customtabs/b$a;

    iput p2, p0, Landroidx/browser/customtabs/b$a$e;->b:I

    iput-object p3, p0, Landroidx/browser/customtabs/b$a$e;->c:Landroid/net/Uri;

    iput-boolean p4, p0, Landroidx/browser/customtabs/b$a$e;->d:Z

    iput-object p5, p0, Landroidx/browser/customtabs/b$a$e;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/browser/customtabs/b$a$e;->f:Landroidx/browser/customtabs/b$a;

    iget-object v0, v0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    iget v1, p0, Landroidx/browser/customtabs/b$a$e;->b:I

    iget-object v2, p0, Landroidx/browser/customtabs/b$a$e;->c:Landroid/net/Uri;

    iget-boolean v3, p0, Landroidx/browser/customtabs/b$a$e;->d:Z

    iget-object v4, p0, Landroidx/browser/customtabs/b$a$e;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/browser/customtabs/a;->e(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
