.class public final Lj4/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final synthetic a:I

.field public final b:Lo4/s;


# direct methods
.method public synthetic constructor <init>(Lo4/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj4/o1;->a:I

    iput-object p1, p0, Lj4/o1;->b:Lo4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj4/o1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj4/o1;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lj4/n1;

    check-cast v0, Lj4/w;

    invoke-direct {v1, v0}, Lj4/n1;-><init>(Lj4/w;)V

    return-object v1

    .line 3
    :goto_0
    iget-object v0, p0, Lj4/o1;->b:Lo4/s;

    check-cast v0, Lj4/k2;

    .line 4
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Lj4/t1;

    invoke-direct {v1, v0}, Lj4/t1;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
