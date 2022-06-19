.class public Lzh0$k0;
.super Lzh0$l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k0"
.end annotation


# instance fields
.field public h:Lzh0$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzh0$l0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzh0$k0;->h:Lzh0$b;

    return-void
.end method
