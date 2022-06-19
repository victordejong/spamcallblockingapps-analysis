.class public Lzh0$v0;
.super Lzh0$a1;
.source ""

# interfaces
.implements Lzh0$x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v0"
.end annotation


# instance fields
.field public r:Lzh0$b1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$a1;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lzh0$b1;
    .locals 1

    iget-object v0, p0, Lzh0$v0;->r:Lzh0$b1;

    return-object v0
.end method

.method public l(Lzh0$b1;)V
    .locals 0

    iput-object p1, p0, Lzh0$v0;->r:Lzh0$b1;

    return-void
.end method
