.class public Lnv$s;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->u(I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZI)V
    .locals 0

    iput-object p1, p0, Lnv$s;->h:Lnv;

    iput p4, p0, Lnv$s;->g:I

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnv$s;->h:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    iget v1, p0, Lnv$s;->g:I

    invoke-virtual {v0, v1}, Lpv;->b(I)V

    return-void
.end method
