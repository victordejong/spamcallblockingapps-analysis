.class public final Li4/g;
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
    iput p2, p0, Li4/g;->a:I

    iput-object p1, p0, Li4/g;->b:Lo4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Li4/g;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Li4/g;->b:Lo4/s;

    invoke-static {v0}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v0

    new-instance v1, Lj4/d0;

    invoke-direct {v1, v0}, Lj4/d0;-><init>(Lo4/p;)V

    return-object v1

    .line 2
    :pswitch_1
    iget-object v0, p0, Li4/g;->b:Lo4/s;

    check-cast v0, Li4/l;

    .line 3
    invoke-virtual {v0}, Li4/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Li4/t;

    invoke-direct {v1, v0}, Li4/t;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 4
    :pswitch_2
    iget-object v0, p0, Li4/g;->b:Lo4/s;

    check-cast v0, Li4/l;

    .line 5
    invoke-virtual {v0}, Li4/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Li4/f;

    .line 6
    invoke-direct {v1, v0}, Li4/f;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 7
    :goto_0
    iget-object v0, p0, Li4/g;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 8
    new-instance v1, Lj4/d2;

    check-cast v0, Lj4/w;

    invoke-direct {v1, v0}, Lj4/d2;-><init>(Lj4/w;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
