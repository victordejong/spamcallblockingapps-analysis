.class public final Ldy$c;
.super Ldz$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ldy;


# direct methods
.method public constructor <init>(Ldy;)V
    .locals 0

    iput-object p1, p0, Ldy$c;->a:Ldy;

    invoke-direct {p0}, Ldz$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ldy$c;->a:Ldy;

    invoke-virtual {p1}, Ldy;->c()V

    return-void
.end method

.method public e(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ldy$c;->a:Ldy;

    invoke-virtual {p1}, Ldy;->c()V

    return-void
.end method

.method public g(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ldy$c;->a:Ldy;

    invoke-virtual {p1}, Ldy;->c()V

    return-void
.end method

.method public h(Ldz;Ldz$i;)V
    .locals 0

    iget-object p1, p0, Ldy$c;->a:Ldy;

    invoke-virtual {p1}, Lt;->dismiss()V

    return-void
.end method
