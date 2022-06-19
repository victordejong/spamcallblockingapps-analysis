.class public Ley$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley;


# direct methods
.method public constructor <init>(Ley;)V
    .locals 0

    iput-object p1, p0, Ley$a;->a:Ley;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ley$a;->a:Ley;

    iget-object v0, p1, Ley;->t:Ldz$i;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p1, Ley;->t:Ldz$i;

    invoke-virtual {p1}, Ley;->p()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ley$a;->a:Ley;

    invoke-virtual {p1}, Ley;->o()V

    :cond_2
    :goto_0
    return-void
.end method
