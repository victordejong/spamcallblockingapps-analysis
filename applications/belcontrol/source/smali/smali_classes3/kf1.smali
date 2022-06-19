.class public Lkf1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmf1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmf1$a;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getStatus()Lmf1$b;
    .locals 1

    sget-object v0, Lmf1$b;->a:Lmf1$b;

    return-object v0
.end method
