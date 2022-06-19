.class public final synthetic Ll8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/w;


# direct methods
.method public synthetic constructor <init>(Ll8/w;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll8/d;->a:I

    iput-object p1, p0, Ll8/d;->b:Ll8/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Ll8/d;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ll8/d;->b:Ll8/w;

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1, v0, p2}, Ll8/w;->l(IZ)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Ll8/d;->b:Ll8/w;

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p1, v0, p2}, Ll8/w;->l(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
