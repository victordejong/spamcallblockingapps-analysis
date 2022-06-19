.class public Lj4/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj4/h0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "%s_%s_%s"

    .line 3
    iput-object v0, p0, Lj4/h0;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lj4/h0;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lj4/h0;->c:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lj4/h0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;I)V
    .locals 0

    .line 1
    iput p5, p0, Lj4/h0;->a:I

    iput-object p1, p0, Lj4/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj4/h0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj4/h0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lj4/h0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lj4/h0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj4/h0;->b:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    check-cast v0, Lj4/k2;

    .line 2
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lj4/h0;->c:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj4/h0;->d:Ljava/lang/Object;

    check-cast v2, Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lj4/h0;->e:Ljava/lang/Object;

    check-cast v3, Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lj4/s;

    .line 3
    check-cast v1, Lj4/w;

    check-cast v2, Lj4/f2;

    check-cast v3, Lj4/m0;

    invoke-direct {v4, v0, v1, v2, v3}, Lj4/s;-><init>(Landroid/content/Context;Lj4/w;Lj4/f2;Lj4/m0;)V

    return-object v4

    .line 4
    :goto_0
    iget-object v0, p0, Lj4/h0;->b:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj4/h0;->c:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj4/h0;->d:Ljava/lang/Object;

    check-cast v2, Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lj4/h0;->e:Ljava/lang/Object;

    check-cast v3, Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll4/b;

    .line 5
    new-instance v4, Lj4/d1;

    check-cast v0, Lj4/b1;

    check-cast v1, Lj4/w;

    check-cast v2, Lj4/d0;

    invoke-direct {v4, v0, v1, v2, v3}, Lj4/d1;-><init>(Lj4/b1;Lj4/w;Lj4/d0;Ll4/b;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
