.class public final synthetic Ll8/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/w;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll8/t;->a:I

    iput-object p1, p0, Ll8/t;->b:Ll8/w;

    iput-object p2, p0, Ll8/t;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Ll8/t;->a:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ll8/t;->b:Ll8/w;

    iget-object v1, p0, Ll8/t;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x5

    .line 1
    invoke-virtual {p1, v2}, Ll8/w;->c(I)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Ll8/w;->j(IZ)V

    .line 2
    invoke-virtual {p1, v1}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Ll8/t;->b:Ll8/w;

    iget-object v1, p0, Ll8/t;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Ll8/w;->c(I)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Ll8/w;->j(IZ)V

    .line 5
    invoke-virtual {p1, v1}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 6
    :goto_0
    iget-object p1, p0, Ll8/t;->b:Ll8/w;

    iget-object v1, p0, Ll8/t;->c:Ljava/lang/Object;

    check-cast v1, Lh8/u;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, v1, Lh8/u;->e:I

    .line 8
    iget-object v2, p1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v2}, Ll8/w;->p(II)V

    .line 10
    iget v1, p1, Ll8/w;->c:I

    add-int/2addr v1, v0

    iput v1, p1, Ll8/w;->c:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
