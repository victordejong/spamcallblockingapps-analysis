.class public Le3$a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3$a;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic f:Le3$a;


# direct methods
.method public constructor <init>(Le3$a;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le3$a$e;->f:Le3$a;

    iput p2, p0, Le3$a$e;->a:I

    iput-object p3, p0, Le3$a$e;->b:Landroid/net/Uri;

    iput-boolean p4, p0, Le3$a$e;->c:Z

    iput-object p5, p0, Le3$a$e;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Le3$a$e;->f:Le3$a;

    iget-object v0, v0, Le3$a;->b:Ld3;

    iget v1, p0, Le3$a$e;->a:I

    iget-object v2, p0, Le3$a$e;->b:Landroid/net/Uri;

    iget-boolean v3, p0, Le3$a$e;->c:Z

    iget-object v4, p0, Le3$a$e;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Ld3;->f(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
