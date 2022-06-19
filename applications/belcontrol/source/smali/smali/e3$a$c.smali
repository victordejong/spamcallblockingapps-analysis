.class public Le3$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3$a;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Le3$a;


# direct methods
.method public constructor <init>(Le3$a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le3$a$c;->b:Le3$a;

    iput-object p2, p0, Le3$a$c;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le3$a$c;->b:Le3$a;

    iget-object v0, v0, Le3$a;->b:Ld3;

    iget-object v1, p0, Le3$a$c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ld3;->c(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
