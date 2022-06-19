.class public Lnv$e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->x()Landroidx/media2/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media2/common/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnv;


# direct methods
.method public constructor <init>(Lnv;)V
    .locals 0

    iput-object p1, p0, Lnv$e0;->a:Lnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media2/common/MediaItem;
    .locals 1

    iget-object v0, p0, Lnv$e0;->a:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    invoke-virtual {v0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnv$e0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0
.end method
