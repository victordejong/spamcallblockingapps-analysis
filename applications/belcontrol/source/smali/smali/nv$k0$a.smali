.class public Lnv$k0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnv$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv$k0;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lnv$k0;


# direct methods
.method public constructor <init>(Lnv$k0;I)V
    .locals 0

    iput-object p1, p0, Lnv$k0$a;->b:Lnv$k0;

    iput p2, p0, Lnv$k0$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfv$b;)V
    .locals 4

    iget-object v0, p0, Lnv$k0$a;->b:Lnv$k0;

    iget-object v1, v0, Lnv$k0;->f:Lnv;

    iget-object v2, v0, Lnv$k0;->c:Landroidx/media2/common/MediaItem;

    iget v0, v0, Lnv$k0;->a:I

    iget v3, p0, Lnv$k0$a;->a:I

    invoke-virtual {p1, v1, v2, v0, v3}, Lfv$b;->a(Lfv;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
