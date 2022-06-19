.class public Lj4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj4/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj4/g0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lj4/f0;

    invoke-direct {v0}, Lj4/f0;-><init>()V

    return-object v0

    .line 2
    :goto_0
    new-instance v0, Lj4/r0;

    invoke-direct {v0}, Lj4/r0;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
