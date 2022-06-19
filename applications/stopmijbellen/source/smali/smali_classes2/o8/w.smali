.class public final synthetic Lo8/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo8/w;->a:I

    iput-object p1, p0, Lo8/w;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 1

    iget p1, p0, Lo8/w;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lo8/w;->b:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Lf8/g;->A(Landroid/content/Context;)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lo8/w;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lf8/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lf8/g;->F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
