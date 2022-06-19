.class public Li8/e;
.super Ly8/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li8/e;->a:I

    invoke-direct {p0}, Ly8/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc9/f;)V
    .locals 7

    const-class v0, Lh8/l;

    iget v1, p0, Li8/e;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lw8/n;

    .line 2
    sget-object v5, Lh8/m;->v:Lx8/b;

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v0, v4

    sget-object v5, Lh8/m;->w:Lx8/b;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v0, v3

    sget-object v5, Lh8/m;->x:Lx8/b;

    invoke-virtual {v5, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lw8/d;->e(Lc9/f;)V

    .line 5
    const-class v0, Lh8/u;

    .line 6
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v0, v3, [Lw8/n;

    .line 7
    sget-object v2, Lh8/v;->l:Lx8/b;

    .line 8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lw8/d;->e(Lc9/f;)V

    return-void

    .line 10
    :goto_0
    new-instance v1, Lw8/q;

    invoke-direct {v1, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v0, v2, [Lw8/n;

    .line 11
    sget-object v2, Lh8/m;->o:Lx8/b;

    .line 12
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v0, v4

    sget-object v2, Lh8/m;->p:Lx8/b;

    .line 13
    invoke-virtual {v2, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v0, v3

    .line 14
    invoke-virtual {v1, v0}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lw8/d;->e(Lc9/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
