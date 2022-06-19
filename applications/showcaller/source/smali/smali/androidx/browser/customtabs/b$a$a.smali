.class Landroidx/browser/customtabs/b$a$a;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b$a;->X4(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroidx/browser/customtabs/b$a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b$a;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/b$a$a;->f:Landroidx/browser/customtabs/b$a;

    iput p2, p0, Landroidx/browser/customtabs/b$a$a;->d:I

    iput-object p3, p0, Landroidx/browser/customtabs/b$a$a;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/b$a$a;->f:Landroidx/browser/customtabs/b$a;

    iget-object v0, v0, Landroidx/browser/customtabs/b$a;->e:Landroidx/browser/customtabs/a;

    iget v1, p0, Landroidx/browser/customtabs/b$a$a;->d:I

    iget-object v2, p0, Landroidx/browser/customtabs/b$a$a;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/a;->c(ILandroid/os/Bundle;)V

    return-void
.end method
