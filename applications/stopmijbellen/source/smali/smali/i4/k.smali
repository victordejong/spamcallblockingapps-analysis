.class public final Li4/k;
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
    iput p2, p0, Li4/k;->a:I

    iput-object p1, p0, Li4/k;->b:Lo4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Li4/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Li4/k;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Li4/h;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 4
    :goto_0
    iget-object v0, p0, Li4/k;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5
    new-instance v1, Lq4/a;

    invoke-direct {v1, v0}, Lq4/a;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
