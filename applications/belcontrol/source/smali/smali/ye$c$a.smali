.class public Lye$c$a;
.super Lie;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lye$c;


# direct methods
.method public constructor <init>(Lye$c;)V
    .locals 0

    iput-object p1, p0, Lye$c$a;->this$1:Lye$c;

    invoke-direct {p0}, Lie;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lye$c$a;->this$1:Lye$c;

    iget-object p1, p1, Lye$c;->this$0:Lye;

    invoke-virtual {p1}, Lye;->b()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lye$c$a;->this$1:Lye$c;

    iget-object p1, p1, Lye$c;->this$0:Lye;

    invoke-virtual {p1}, Lye;->c()V

    return-void
.end method
