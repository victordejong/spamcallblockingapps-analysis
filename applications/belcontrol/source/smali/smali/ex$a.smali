.class public Lex$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lex;


# direct methods
.method public constructor <init>(Lex;)V
    .locals 0

    iput-object p1, p0, Lex$a;->a:Lex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lex$a;->a:Lex;

    invoke-virtual {p1}, Lex;->d()V

    return v1

    :cond_1
    iget-object v0, p0, Lex$a;->a:Lex;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lfx;

    invoke-virtual {v0, p1}, Lex;->e(Lfx;)V

    return v1

    :cond_2
    iget-object p1, p0, Lex$a;->a:Lex;

    invoke-virtual {p1}, Lex;->c()V

    return v1

    :cond_3
    iget-object p1, p0, Lex$a;->a:Lex;

    invoke-virtual {p1}, Lex;->f()V

    return v1
.end method
