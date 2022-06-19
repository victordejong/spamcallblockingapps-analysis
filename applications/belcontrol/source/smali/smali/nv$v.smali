.class public Lnv$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnv$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->k(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lnv;


# direct methods
.method public constructor <init>(Lnv;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    iput-object p1, p0, Lnv$v;->d:Lnv;

    iput-object p2, p0, Lnv$v;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Lnv$v;->b:I

    iput p4, p0, Lnv$v;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfv$b;)V
    .locals 4

    iget-object v0, p0, Lnv$v;->d:Lnv;

    iget-object v1, p0, Lnv$v;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Lnv$v;->b:I

    iget v3, p0, Lnv$v;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lfv$b;->g(Lfv;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
