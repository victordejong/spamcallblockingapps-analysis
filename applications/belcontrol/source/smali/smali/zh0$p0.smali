.class public Lzh0$p0;
.super Lzh0$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p0"
.end annotation


# instance fields
.field public n:Lyh0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzh0$h0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzh0$p0;->n:Lyh0;

    return-void
.end method
