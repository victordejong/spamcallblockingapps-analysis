.class Landroidx/browser/customtabs/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b$a;->x3(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroidx/browser/customtabs/b$a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b$a;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/b$a$a;->d:Landroidx/browser/customtabs/b$a;

    iput p2, p0, Landroidx/browser/customtabs/b$a$a;->b:I

    iput-object p3, p0, Landroidx/browser/customtabs/b$a$a;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/b$a$a;->d:Landroidx/browser/customtabs/b$a;

    iget-object v0, v0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    iget v1, p0, Landroidx/browser/customtabs/b$a$a;->b:I

    iget-object v2, p0, Landroidx/browser/customtabs/b$a$a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/a;->c(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
