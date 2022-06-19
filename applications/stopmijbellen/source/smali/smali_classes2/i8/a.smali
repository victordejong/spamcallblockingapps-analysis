.class public Li8/a;
.super Ly8/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li8/a;->a:I

    invoke-direct {p0}, Ly8/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc9/f;)V
    .locals 6

    const-class v0, Lh8/l;

    iget v1, p0, Li8/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lw8/n;

    .line 2
    sget-object v4, Lh8/m;->t:Lx8/b;

    .line 3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v0, v3

    sget-object v3, Lh8/m;->u:Lx8/b;

    .line 4
    invoke-virtual {v3, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v0, v2

    .line 5
    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lw8/d;->e(Lc9/f;)V

    return-void

    .line 7
    :goto_0
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v0, v2, [Lw8/n;

    .line 8
    sget-object v2, Lh8/m;->A:Lx8/b;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lw8/d;->e(Lc9/f;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
