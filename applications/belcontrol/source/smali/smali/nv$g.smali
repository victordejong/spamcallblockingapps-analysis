.class public Lnv$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->v()Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media/AudioAttributesCompat;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnv;


# direct methods
.method public constructor <init>(Lnv;)V
    .locals 0

    iput-object p1, p0, Lnv$g;->a:Lnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media/AudioAttributesCompat;
    .locals 1

    iget-object v0, p0, Lnv$g;->a:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    invoke-virtual {v0}, Lpv;->c()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnv$g;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0
.end method
