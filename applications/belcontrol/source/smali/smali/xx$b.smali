.class public final Lxx$b;
.super Ldz$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lxx;


# direct methods
.method public constructor <init>(Lxx;)V
    .locals 0

    iput-object p1, p0, Lxx$b;->a:Lxx;

    invoke-direct {p0}, Ldz$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Lxx$b;->a:Lxx;

    invoke-virtual {p1}, Lxx;->c()V

    return-void
.end method

.method public e(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Lxx$b;->a:Lxx;

    invoke-virtual {p1}, Lxx;->c()V

    return-void
.end method

.method public g(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Lxx$b;->a:Lxx;

    invoke-virtual {p1}, Lxx;->c()V

    return-void
.end method

.method public h(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Lxx$b;->a:Lxx;

    invoke-virtual {p1}, Lt;->dismiss()V

    return-void
.end method
