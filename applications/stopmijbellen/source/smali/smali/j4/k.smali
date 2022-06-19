.class public final Lj4/k;
.super Lj4/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lj4/p;Lr4/l;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj4/k;->c:I

    invoke-direct {p0, p1, p2}, Lj4/i;-><init>(Lj4/p;Lr4/l;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    iget p2, p0, Lj4/k;->c:I

    const-string v0, "onGetChunkFileDescriptor"

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p2, p0, Lj4/i;->b:Lj4/p;

    .line 2
    iget-object p2, p2, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v2, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {p2, v2}, Lo4/j;->c(Lr4/l;)V

    .line 4
    sget-object p2, Lj4/p;->g:Lp6/c;

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, v0, v1}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "chunk_file_descriptor"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lj4/i;->a:Lr4/l;

    .line 7
    invoke-virtual {p2, p1}, Lr4/l;->b(Ljava/lang/Object;)Z

    return-void

    .line 8
    :goto_0
    iget-object p1, p0, Lj4/i;->b:Lj4/p;

    .line 9
    iget-object p1, p1, Lj4/p;->d:Lo4/j;

    .line 10
    iget-object p2, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {p1, p2}, Lo4/j;->c(Lr4/l;)V

    .line 11
    sget-object p1, Lj4/p;->g:Lp6/c;

    new-array p2, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v0, p2}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
