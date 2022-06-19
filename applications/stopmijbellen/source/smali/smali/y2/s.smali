.class public final Ly2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ll9/a;

.field public final c:Ll9/a;

.field public final d:Ll9/a;

.field public final e:Ll9/a;


# direct methods
.method public synthetic constructor <init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V
    .locals 0

    .line 1
    iput p5, p0, Ly2/s;->a:I

    iput-object p1, p0, Ly2/s;->b:Ll9/a;

    iput-object p2, p0, Ly2/s;->c:Ll9/a;

    iput-object p3, p0, Ly2/s;->d:Ll9/a;

    iput-object p4, p0, Ly2/s;->e:Ll9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ly2/s;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Ly2/s;->b:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ly2/s;->c:Ll9/a;

    invoke-interface {v1}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/c;

    iget-object v2, p0, Ly2/s;->d:Ll9/a;

    invoke-interface {v2}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/t;

    iget-object v3, p0, Ly2/s;->e:Ll9/a;

    invoke-interface {v3}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/a;

    .line 2
    new-instance v4, Ly2/r;

    invoke-direct {v4, v0, v1, v2, v3}, Ly2/r;-><init>(Ljava/util/concurrent/Executor;Lz2/c;Ly2/t;La3/a;)V

    return-object v4

    .line 3
    :goto_0
    iget-object v0, p0, Ly2/s;->b:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/a;

    iget-object v1, p0, Ly2/s;->c:Ll9/a;

    invoke-interface {v1}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/a;

    iget-object v2, p0, Ly2/s;->d:Ll9/a;

    invoke-interface {v2}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ly2/s;->e:Ll9/a;

    invoke-interface {v3}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v3

    .line 4
    new-instance v4, Lz2/r;

    check-cast v2, Lz2/d;

    check-cast v3, Lz2/w;

    invoke-direct {v4, v0, v1, v2, v3}, Lz2/r;-><init>(Lb3/a;Lb3/a;Lz2/d;Lz2/w;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
