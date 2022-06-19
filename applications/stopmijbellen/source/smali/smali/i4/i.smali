.class public final Li4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final synthetic a:I

.field public final b:Lo4/s;

.field public final c:Lo4/s;

.field public final d:Lo4/s;


# direct methods
.method public synthetic constructor <init>(Lo4/s;Lo4/s;Lo4/s;I)V
    .locals 0

    .line 1
    iput p4, p0, Li4/i;->a:I

    iput-object p1, p0, Li4/i;->b:Lo4/s;

    iput-object p2, p0, Li4/i;->c:Lo4/s;

    iput-object p3, p0, Li4/i;->d:Lo4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Li4/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Li4/i;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Li4/i;->c:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li4/f;

    iget-object v2, p0, Li4/i;->d:Lo4/s;

    check-cast v2, Li4/l;

    invoke-virtual {v2}, Li4/l;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Li4/h;

    .line 2
    check-cast v0, Li4/r;

    invoke-direct {v3, v0, v1, v2}, Li4/h;-><init>(Li4/r;Li4/f;Landroid/content/Context;)V

    return-object v3

    .line 3
    :goto_0
    iget-object v0, p0, Li4/i;->b:Lo4/s;

    check-cast v0, Lj4/k2;

    .line 4
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Li4/i;->c:Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v1

    iget-object v2, p0, Li4/i;->d:Lo4/s;

    invoke-static {v2}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lj4/j2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {v1}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4/l2;

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v2}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4/l2;

    :goto_1
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
