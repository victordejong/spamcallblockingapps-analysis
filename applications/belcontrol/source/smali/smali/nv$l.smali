.class public Lnv$l;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->U(Landroid/view/Surface;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Landroid/view/Surface;

.field public final synthetic h:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZLandroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lnv$l;->h:Lnv;

    iput-object p4, p0, Lnv$l;->g:Landroid/view/Surface;

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnv$l;->h:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    iget-object v1, p0, Lnv$l;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lpv;->R(Landroid/view/Surface;)V

    return-void
.end method
