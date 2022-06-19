.class public Lnv$h0;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->G()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZ)V
    .locals 0

    iput-object p1, p0, Lnv$h0;->g:Lnv;

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnv$h0;->g:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    invoke-virtual {v0}, Lpv;->H()V

    return-void
.end method
