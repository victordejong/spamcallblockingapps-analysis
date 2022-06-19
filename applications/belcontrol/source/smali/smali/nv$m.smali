.class public Lnv$m;
.super Lnv$k0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv;->T(F)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:F

.field public final synthetic h:Lnv;


# direct methods
.method public constructor <init>(Lnv;IZF)V
    .locals 0

    iput-object p1, p0, Lnv$m;->h:Lnv;

    iput p4, p0, Lnv$m;->g:F

    invoke-direct {p0, p1, p2, p3}, Lnv$k0;-><init>(Lnv;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnv$m;->h:Lnv;

    iget-object v0, v0, Lnv;->a:Lpv;

    iget v1, p0, Lnv$m;->g:F

    invoke-virtual {v0, v1}, Lpv;->S(F)V

    return-void
.end method
